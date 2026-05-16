import { Meta, type Tree } from "./Lua.type.ts"
import { State } from "./Lib/State/pure.ts"

export type MetaEntry = Readonly<
	| { Solved: false }
	| { Solved: true, Type: Tree }
>
export type MetaContext = Readonly<{
	Entries: ReadonlyMap<number, MetaEntry>
	NextId: number
}>

export const Empty: MetaContext = { Entries: new Map(), NextId: 0 }

// TODO perf - should probably make a mutable version of this
export const FreshMeta: State<MetaContext, Tree> = ctx => {
	const id = ctx.NextId
	const entries = new Map([
		...ctx.Entries,
		[id, { Solved: false }],
	])
	return [Meta(id), { Entries: entries, NextId: id + 1 }]
}

// TODO perf - should probably make a mutable version of this
export const Solve = (id: number, type: Tree): State<MetaContext, void> => ctx => {
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

export const Lookup = (id: number): State<MetaContext, MetaEntry> => ctx => {
	const entry = ctx.Entries.get(id)
	if (entry === undefined)
		throw new Error(`Unknown metavariable ?${id}`)
	else
		return [entry, ctx]
}

export const IsSolved = (id: number): State<MetaContext, boolean> =>
	State.Map(Lookup(id), entry => entry.Solved)
