import * as Type from "./Tree/Type.type.ts"
import { State } from "./Lib/State/pure.ts"

export type MetaEntry = Readonly<
	| { Solved: false }
	| { Solved: true, Type: Type.Unsolved }
>
export type MetaContext = Readonly<{
	Entries: ReadonlyMap<number, MetaEntry>
	NextId: number
}>

export const Empty: MetaContext = { Entries: new Map(), NextId: 0 }

// TODO perf - should probably make a mutable version of this
export const FreshMeta: State<MetaContext, Type.Unsolved> = ctx => {
	const id = ctx.NextId
	const entries = new Map([
		...ctx.Entries,
		[id, { Solved: false }],
	])
	return [Type.MkMeta(id), { Entries: entries, NextId: id + 1 }]
}

// TODO perf - should probably make a mutable version of this
export const Solve = (id: number, type: Type.Unsolved): State<MetaContext, void> => ctx => {
	const entry = ctx.Entries.get(id)
	if (entry === undefined)
		throw new Error(`Unknown metavariable ${id}`)
	else if (entry.Solved)
		throw new Error(`Metavariable ${id} already solved`)
	else {
		const entries = new Map([
			...ctx.Entries,
			[id, { Solved: true, Type: type }],
		])
		return [undefined, { Entries: entries, NextId: ctx.NextId }]
	}
}

// Overwrite a metavariable's solution. Unlike Solve, this does not throw when
// the entry is already solved; used to narrow a solution to a more specific type.
export const Refine = (id: number, type: Type.Unsolved): State<MetaContext, void> => ctx => {
	if (!ctx.Entries.has(id))
		throw new Error(`Unknown metavariable ${id}`)
	const entries = new Map([
		...ctx.Entries,
		[id, { Solved: true, Type: type }],
	])
	return [undefined, { Entries: entries, NextId: ctx.NextId }]
}

export const Lookup = (id: number): State<MetaContext, MetaEntry> => ctx => {
	const entry = ctx.Entries.get(id)
	if (entry === undefined)
		throw new Error(`Unknown metavariable ?${id}`)
	else
		return [entry, ctx]
}

// export const IsSolved = (id: number): State<MetaContext, boolean> =>
// 	State.Map(Lookup(id), entry => entry.Solved)
