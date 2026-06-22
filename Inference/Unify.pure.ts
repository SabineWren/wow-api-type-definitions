import { Option } from "purity-seal"
import * as Type from "./Tree/Type.type.ts"
import { Lookup, Refine, Solve, type MetaContext } from "./MetaContext.pure.ts"
import { type State } from "./Lib/State/pure.ts"

// Follow metavariable chain until unsolved or concrete type
const resolve_rec = (t: Type.Unsolved, ctx: MetaContext): Type.Unsolved => {
	if (t._tag !== "meta")
		return t
	else {
		const [entry] = Lookup(t.Id)(ctx)
		return entry.Solved ? resolve_rec(entry.Type, ctx) : t
	}
}

const narrowUnion = (u: Type.UnsolvedUnion, x: Exclude<Type.Unsolved, Type.UnsolvedUnion>): Type.UnsolvedSingle => {
	// This shouldn't fail in a well-typed program.
	if (u.Members.has(x)) return x
	else throw new Error("TODO narrow (Node) - implement a 'never' type")
}

// Narrow two concrete types to their intersection. A parameter must satisfy
// every use, so accumulated constraints combine by meet, not union.
const Meet = (a: Type.Unsolved, b: Type.Unsolved): Type.Unsolved => {
	// Reference equality here assumes types are interned.
	if (a === b)
		return a
	else if (a._tag === "union" && b._tag !== "union")
		return narrowUnion(a, b)
	else if (b._tag === "union" && a._tag !== "union")
		return narrowUnion(b, a)
	else if (a._tag === "union" && b._tag === "union") {
		const inter = a.Members.intersection(b.Members)
		if (inter.size === 0) throw new Error("TODO narrow (intersection) - implement a 'never' type")
		else return Type.MkUnion(...inter)
	}
	else
		// TODO - what to do if both concrete? Newest wins for now.
		// Disjoint concrete types have no common value.
		return b
}

const constrain = (id: number, other: Type.Unsolved): State<MetaContext, void> => ctx => {
	const [entry] = Lookup(id)(ctx)
	if (!entry.Solved)
		return Solve(id, other)(ctx)
	else {
		const current = resolve_rec(Type.MkMeta(id), ctx)
		const o = resolve_rec(other, ctx)
		// TODO - clean this up
		// These next 2 cases are the same:
		// The solution chain ended at an unsolved metavariable.
		// Chain it to our current solution.
		if (o._tag === "meta")
			return o.Id === id ? [undefined, ctx] : Solve(o.Id, current)(ctx)
		else if (current._tag === "meta")
			return Solve(current.Id, o)(ctx)
		else
			return Refine(id, Meet(current, o))(ctx)
	}
}

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

export const Unify = (a: Type.Unsolved, b: Type.Unsolved): State<MetaContext, void> => ctx => {
	if (a._tag === "meta")
		return constrain(a.Id, b)(ctx)
	else if (b._tag === "meta")
		return constrain(b.Id, a)(ctx)
	// No change to context if we don't have a metavariable to update.
	else {
		const error = typecheck(a, b)
		if (Option.IsSome(error)) console.error("Type error", error.value)
		return [undefined, ctx]
	}
}
