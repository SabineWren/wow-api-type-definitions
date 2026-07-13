import { Array, Option } from "purity-seal"
import * as Type from "./Tree/Type.type.ts"
import { Lookup, Refine, Solve, type MetaContext } from "./MetaContext.pure.ts"
import { type State } from "./Lib/State/pure.ts"

// Follow metavariable chain until unsolved or concrete type
export const ResolveMetaVariable = (t: Type.Unsolved, ctx: MetaContext): Type.Unsolved => {
	if (t._tag !== "meta")
		return t
	else {
		const [entry] = Lookup(t.Id)(ctx)
		return entry.Solved ? ResolveMetaVariable(entry.Type, ctx) : t
	}
}

// This shouldn't fail in a well-typed program.
const narrowUnion = (u: Type.UnsolvedUnion, x: Exclude<Type.Unsolved, Type.UnsolvedUnion>): Type.UnsolvedSingle => {
	if (u.Members.has(x)) return x
	else if (x._tag === "literal" && u.Members.values().some(m => m._tag === x.BaseType)) return x
	else throw new Error("TODO narrow (Node) - implement a 'never' type")
}

export const MergeParamOrReturnNames = (a: string | undefined, b: string | undefined) =>
	a === b
		? a
	: a === undefined
		? b
	: b === undefined
		? a
		// ¯\_(ツ)_/¯
		// Params require a name in Lua.
		// LuaLS solves this by inferring all function unions as type 'Function'.
		: `${a}_or_${b}`

const intersectParamOrReturn = <
	T extends Type.FuncParam<Type.MetaVariable> | Type.FuncReturn<Type.MetaVariable>
>(a: T | null, b: T | null): T | null => {
	// TODO - Ignoring the nil arg is wrong. Lua has optional arguments.
	if (a === null)
		return b
	else if (b === null)
		return a
	else
		return {
			Name: MergeParamOrReturnNames(a.Name, b.Name),
			Type: intersectTypes(a.Type, b.Type),
		} as T
}
// TODO - array lib zip this-that-these
const intersectParamsOrReturns = <
	T extends Type.FuncParam<Type.MetaVariable> | Type.FuncReturn<Type.MetaVariable>
>(as: Array<T>, bs: Array<T>): T[] => {
	const out: T[] = []
	for (let i=0; true; i++) {
		const pa = i >= as.length ? null : as[i]!
		const pb = i >= bs.length ? null : bs[i]!
		const p = intersectParamOrReturn(pa, pb)
		if (p === null) break
		else void out.push(p)
	}
	return out
}

/** Narrows 2 overlapping type definitions into a single definition. */
const intersectTypes = (a: Type.Unsolved, b: Type.Unsolved): Type.Unsolved => {
	// Reference equality here assumes types are interned.
	if (a === b)
		return a
	// At least one is a union
	else if (a._tag === "union" && b._tag !== "union")
		return narrowUnion(a, b)
	else if (a._tag !== "union" && b._tag === "union")
		return narrowUnion(b, a)
	else if (a._tag === "union" && b._tag === "union") {
		const inter = a.Members.intersection(b.Members)
		if (inter.size === 0) throw new Error("TODO narrow (intersection) - implement a 'never' type")
		else return Type.MkUnion(...inter)
	}
	// TODO - if only one is a function, return 'never'
	else if (a._tag === "function" && b._tag === "function") {
		const params = intersectParamsOrReturns(a.Params, b.Params)
		const returns = intersectParamsOrReturns(a.Returns, b.Returns)
		return Type.MkFunc(params, returns, a.HasVararg || b.HasVararg)
	}
	// TODO tables - intersect fields.
	// What about field order?
	else
		// TODO - what to do if both concrete? Newest wins for now.
		// Disjoint concrete types have no common value.
		return b
}

const constrainMetavariable = (id: number, other: Type.Unsolved): State<MetaContext, void> => ctx => {
	const [entry] = Lookup(id)(ctx)
	if (!entry.Solved)
		return Solve(id, other)(ctx)
	else {
		const current = ResolveMetaVariable(Type.MkMeta(id), ctx)
		const o = ResolveMetaVariable(other, ctx)
		// TODO - clean this up
		// These next 2 cases are the same:
		// The solution chain ended at an unsolved metavariable.
		// Chain it to our current solution.
		if (o._tag === "meta")
			return o.Id === id ? [undefined, ctx] : Solve(o.Id, current)(ctx)
		else if (current._tag === "meta")
			return Solve(current.Id, o)(ctx)
		else
			return Refine(id, intersectTypes(current, o))(ctx)
	}
}

// TODO - DELETE THIS FUNCTION.
// A superior approach is to introduce a never/void type.
// for all A: never = Union(A, never)
//
// ex. Unify(5, Number) is okay, but
// Unify(String, Number) is clearly a type error.
const typecheck = (a: Exclude<Type.Unsolved, Type.MetaVariable>, b: Exclude<Type.Unsolved, Type.MetaVariable>): Option<string> => {
	if (a._tag === "literal" && b._tag === "literal")
		return a.Value === b.Value ? Option.None() : Option.Some(`${a.Value} <> ${b.Value}`)
	else if (a._tag !== "literal" && b._tag !== "literal")
		// Probably lots more we could check here, ex. union intersection.
		return Option.None()
	else {
		const [lit, other] = a._tag === "literal" ? [a, b] : [b as Type.Literal, a]
		if (other._tag === "union") {
			const okay = other.Members.values()
				// I don't know what edge case would result in Unify(literal, Union(...metavars))
				.filter(x => x._tag !== "meta")
				.map(other => typecheck(lit, other))
				.find(Option.IsNone)
			return okay ?? Option.Some(`${lit.Value}: ${lit.BaseType} Not in [${[...other.Members.values().map(x => x._tag)].join(", ")}]`)
		}
		else
			return lit.BaseType === other._tag ? Option.None() : Option.Some(`${lit.Value}: ${lit.BaseType} <> ${other._tag}`)
	}
}

export const Constrain = (a: Type.Unsolved, b: Type.Unsolved): State<MetaContext, void> => ctx => {
	if (a._tag === "meta")
		return constrainMetavariable(a.Id, b)(ctx)
	else if (b._tag === "meta")
		return constrainMetavariable(b.Id, a)(ctx)
	// No change to context if we don't have a metavariable to update.
	else {
		const error = typecheck(a, b)
		if (Option.IsSome(error)) console.error("Type error", error.value)
		return [undefined, ctx]
	}
}
