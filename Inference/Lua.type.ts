// We may encounter variables without knowing all relevant constraints, so
// create placeholder meta-variable types, and zonk them after unification.
// https://youtu.be/-TJGhGa04F8
export type MetaVariable = {
	readonly _tag: "meta"
	readonly Id: number
}

export type TableField = {
	readonly Name: string
	readonly Type: Tree
}

export type FuncParam = {
	readonly Name: string
	readonly Type: Tree
}

export type FuncReturn = {
	readonly Name?: string
	readonly Type: Tree
}

export type Nil = { readonly _tag: "nil" }
export type Unknown = { readonly _tag: "unknown" }

export type Boolean = { readonly _tag: "boolean" }
export type Number = { readonly _tag: "number" }
export type String = { readonly _tag: "string" }
export type Literal = {
	readonly _tag: "literal"
	readonly BaseType: Boolean["_tag"] | Number["_tag"] | String["_tag"]
	readonly Value: string
}

export type Function = {
	readonly _tag: "function"
	readonly HasVararg: boolean
	readonly Params: readonly FuncParam[]
	readonly Returns: readonly FuncReturn[]
}
/** LuaLS requires parameter names on functions. This makes
 * it impossible to union functions, as param names may change.
 * ex. `(a: int) => int | (b: string) => int` = (?: int | string) -> int
 * Therefore, LuaLS resolves all function unions to "function" of any type.
*/
export type FunctionAny = { _tag: "function-any" }

// This allows tables that mix key-value pairs and auto-indexed array elements.
export type Table = {
	readonly _tag: "table"
	/** Keep these sorted for deterministic serialization. */
	readonly Fields: readonly TableField[]
	readonly ArrayElement?: Tree
}

export type Leaf =
	| Boolean
	| { readonly _tag: "class", readonly Name: string }
	| Function
	| FunctionAny
	| Literal
	| MetaVariable
	| Nil
	| Number
	| String
	| Table
	| Unknown

export type Branch =
	| { readonly _tag: "union", readonly Members: ReadonlySet<Leaf> }

export type Tree =
	| Branch
	| Leaf

// ************ Constructors ************

/** Dangerous preconditions:
 * - Create records with consistent property order.
 * - Keep arrays sorted.
*/
const makeKeyLeaf = (a: Leaf) => JSON.stringify(a)

const makeKeyTree = (a: Tree) =>
	a._tag === "union"
		// Sets are not valid JSON.
		// We do not store unions in a deterministic order.
		? ("union:" + [...a.Members].map(makeKeyLeaf).sort().join("|"))
		: makeKeyLeaf(a)

const intern = (() => {
	const pool = new Map<string, Tree>()
	return <T extends Tree>(t: T): T => {
		const key = makeKeyTree(t)
		const value = pool.get(key) ?? t
		pool.set(key, value)
		return value as T
	}
})()

export const Nil: Nil = intern({ _tag: "nil" })
export const Boolean: Boolean = intern({ _tag: "boolean" })
export const Number: Number = intern({ _tag: "number" })
export const String: String = intern({ _tag: "string" })
export const Unknown: Unknown = intern({ _tag: "unknown" })

export const Literal = (baseType: "boolean" | "number" | "string", value: string): Tree =>
	intern({ _tag: "literal", BaseType: baseType, Value: value })

export const Table = (fields: readonly TableField[], arrayElement?: Tree): Tree =>
	intern(
		arrayElement !== undefined
			? { _tag: "table", Fields: fields, ArrayElement: arrayElement }
			: { _tag: "table", Fields: fields }
	)

export const Func = (params: readonly FuncParam[], returns: readonly FuncReturn[], hasVararg: boolean): Tree =>
	intern({ _tag: "function", HasVararg: hasVararg, Params: params, Returns: returns })

export const Reference = (name: string): Tree =>
	intern({ _tag: "class", Name: name })

export const Meta = (id: number): Tree =>
	intern({ _tag: "meta", Id: id })

export const Union = (...types: readonly Tree[]): Tree => {
	// Reference equality is okay because members are interned
	const union = new Set<Leaf>()
	for (const t of types) {
		if (t._tag === "union")
			for (const m of t.Members)
				union.add(m)
		else
			union.add(t)
	}

	if (union.size === 0)
		throw new Error("Empty union invalid")

	return union.size === 1
		? union.values().next().value!
		: intern({ _tag: "union", Members: union })
}
