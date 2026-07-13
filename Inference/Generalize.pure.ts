import * as Type from "./Tree/Type.type.ts"
import { type GlobalVarUnsolved } from "./Infer.pure.ts"
import type { MetaContext } from "./MetaContext.pure.ts"
import { ResolveMetaVariable } from "./Unify.pure.ts"
import { Array, Pipe } from "purity-seal"

export const Generalize = (
	globals: Array<GlobalVarUnsolved>,
	ctx: MetaContext,
): globalThis.ReadonlyMap<Type.MvId, Type.BoundVariable> => {
	// A meta id is generalizable iff it is free in exactly one global (didn't escape).
	// ex. the param 'a' in `local id = function(a) return a end`
	const ok = seqBind_KeepUnique(globals, g => collectFree(g.Type, ctx))
	const out = new globalThis.Map<Type.MvId, Type.BoundVariable>()
	for (const g of globals) {
		// The implementation here is pretty rough... everything mutates.
		const seen = new globalThis.Map<Type.MvId, Type.BvIndex>()
		assignBoundVars(g.Type, ctx, ok, seen, { next: 0 }, out)
	}
	return out
}

const assignBoundVars = (
	t: Type.Unsolved,
	ctx: MetaContext,
	ok: globalThis.Set<Type.MvId>,
	seen: globalThis.Map<Type.MvId, Type.BvIndex>,
	counter: { next: number },
	out: globalThis.Map<Type.MvId, Type.BoundVariable>,
): void => {
	switch (t._tag) {
	case "meta": {
		const r = ResolveMetaVariable(t, ctx)
		if (r._tag === "meta") {
			if (ok.has(r.Id) && !seen.has(r.Id)) {
				const idx = counter.next++ as Type.BvIndex
				seen.set(r.Id, idx)
				out.set(r.Id, Type.MkBound(idx))
			}
		}
		else
			assignBoundVars(r, ctx, ok, seen, counter, out)
		break
	}
	case "function":
		t.Params.forEach(p => assignBoundVars(p.Type, ctx, ok, seen, counter, out))
		t.Returns.forEach(r => assignBoundVars(r.Type, ctx, ok, seen, counter, out))
		break
	case "table":
		t.Fields.forEach(f => assignBoundVars(f.Type, ctx, ok, seen, counter, out))
		if (t.ArrayElement !== undefined) assignBoundVars(t.ArrayElement, ctx, ok, seen, counter, out)
		break
	case "union":
		t.Members.forEach(m => assignBoundVars(m, ctx, ok, seen, counter, out))
		break
	case "boolean":
	case "number":
	case "string":
	case "nil":
	case "unknown":
	case "literal":
	case "class":
	case "bound":
		break
	default:
		t satisfies never
	}
}

/** Terminal, unsolved meta-variables are free. */
const collectFree = (t: Type.Unsolved, ctx: MetaContext): globalThis.Set<Type.MvId> => {
	const free = new Set<Type.MvId>()
	collectFree_rec_mut(t, ctx, free)
	return free
}
const collectFree_rec_mut = (t: Type.Unsolved, ctx: MetaContext, acc: globalThis.Set<Type.MvId>): void => {
	switch (t._tag) {
	case "meta": {
		const r = ResolveMetaVariable(t, ctx)
		if (r._tag === "meta")
			void acc.add(r.Id)
		else
			collectFree_rec_mut(r, ctx, acc)
		break
	}
	case "function":
		t.Params.forEach(p => collectFree_rec_mut(p.Type, ctx, acc))
		t.Returns.forEach(r => collectFree_rec_mut(r.Type, ctx, acc))
		break
	case "table":
		t.Fields.forEach(f => collectFree_rec_mut(f.Type, ctx, acc))
		if (t.ArrayElement !== undefined) collectFree_rec_mut(t.ArrayElement, ctx, acc)
		break
	case "union":
		t.Members.forEach(m => collectFree_rec_mut(m, ctx, acc))
		break
	case "boolean":
	case "number":
	case "string":
	case "nil":
	case "unknown":
	case "literal":
	case "class":
	case "bound":
		break
	default:
		t satisfies never
	}
}

// TODO move to Seq library
type comparable = number | string | boolean// etc.
const seqBind_KeepUnique = <A, B extends comparable>(as: Iterable<A>, expand: (a: A) => Iterable<B>): Set<B> => {
	const counts = new globalThis.Map<B, number>()
	for (const a of as) {
		for (const b of expand(a)) {
			counts.set(b, (counts.get(b) ?? 0) + 1)
		}
	}
	return new Set(counts
		.entries()
		.filter(([id, n]) => n === 1)
		.map(([id, n]) => id)
	)
}
