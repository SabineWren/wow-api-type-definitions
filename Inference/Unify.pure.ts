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

export const Unify = (a: Type.Unsolved, b: Type.Unsolved): State<MetaContext, void> => ctx => {
	if (a._tag === "meta")
		return constrain(a.Id, b)(ctx)
	else if (b._tag === "meta")
		return constrain(b.Id, a)(ctx)
	// No change to context if we don't have a metavariable to update.
	else
		return [undefined, ctx]
}
