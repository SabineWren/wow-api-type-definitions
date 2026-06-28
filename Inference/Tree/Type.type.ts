import type { Array } from "purity-seal"
import { Intern } from "./Intern.pure.ts"

// We may encounter variables without knowing all relevant constraints, so
// create placeholder meta-variable types, and zonk them after unification.
// https://youtu.be/-TJGhGa04F8
export type MetaVariable = Readonly<{ _tag: "meta", Id: number }>

export type TableField<MV> = Readonly<{ Name: string, Type: TypeTerm<MV> }>

export type FuncParam<MV> = Readonly<{ Name: string, Type: TypeTerm<MV> }>
export type FuncReturn<MV> = Readonly<{ Name?: string | undefined, Type: TypeTerm<MV> }>

export type Nil = Readonly<{ _tag: "nil" }>
export type Unknown = Readonly<{ _tag: "unknown" }>
export type ClassType = Readonly<{ _tag: "class", Name: string }>

export type Boolean = Readonly<{ _tag: "boolean" }>
export type Number = Readonly<{ _tag: "number" }>
export type String = Readonly<{ _tag: "string" }>
export type Literal = Readonly<{
	_tag: "literal"
	BaseType: Boolean["_tag"] | Number["_tag"] | String["_tag"]
	Value: string
}>

/** LuaLS resolves all function unions to `function` (of any type).
  * We can do better, although it's not clear how to intersect conflicting param names.
  * Functions are contravariant in their params, so an 'any' function is just `(...never) => any`
  * varargs in Lua already accept whatever, so we don't even need the 'never' part.
*/
export type Function<MV> = Readonly<{
	_tag: "function"
	HasVararg: boolean
	Params: Array<FuncParam<MV>>
	Returns: Array<FuncReturn<MV>>
}>

// This allows tables that mix key-value pairs and auto-indexed array elements.
export type Table<MV> = Readonly<{
	_tag: "table"
	/** Keep these sorted for deterministic serialization. */
	Fields: Array<TableField<MV>>
	ArrayElement?: Unsolved
}>

type single<MV> =
	| Boolean
	| ClassType
	| Function<MV>
	// | FunctionAny
	| Literal
	| MV
	| Nil
	| Number
	| String
	| Table<MV>
	| Unknown

type union<MV> = Readonly<{
	_tag: "union"
	Members: ReadonlySet<single<MV>>
}>

export type UnsolvedSingle = single<MetaVariable>
export type UnsolvedUnion = union<MetaVariable>

export type TypeTerm<MV> = single<MV> | union<MV>
export type Unsolved = TypeTerm<MetaVariable>
export type Solved = TypeTerm<never>

// ************ Constructors ************
export const Nil: Nil = Intern({ _tag: "nil" })
export const Boolean: Boolean = Intern({ _tag: "boolean" })
export const Number: Number = Intern({ _tag: "number" })
export const String: String = Intern({ _tag: "string" })
export const Unknown: Unknown = Intern({ _tag: "unknown" })

export const Literal = (
	baseType: typeof Boolean._tag | typeof Number._tag | typeof String._tag,
	value: string,
): Literal =>
	Intern({ _tag: "literal", BaseType: baseType, Value: value })

export const Table = <MV extends never | MetaVariable>(
	fields: Array<TableField<MV>>,
	arrayElement?: TypeTerm<MV>,
): TypeTerm<MV> =>
	Intern(
		arrayElement !== undefined
			? { _tag: "table", Fields: fields, ArrayElement: arrayElement }
			: { _tag: "table", Fields: fields }
	)

export const MkFunc = <MV extends never | MetaVariable>(
	params: Array<FuncParam<MV>>,
	returns: Array<FuncReturn<MV>>,
	hasVararg: boolean,
): Function<MV> =>
	Intern({ _tag: "function", HasVararg: hasVararg, Params: params, Returns: returns })

export const ClassType = (name: string): Unsolved =>
	Intern({ _tag: "class", Name: name })

export const MkMeta = (id: number): Unsolved =>
	Intern({ _tag: "meta", Id: id })

export const MkUnion = <MV extends never | MetaVariable>(...types: Array<TypeTerm<MV>>): TypeTerm<MV> => {
	// Reference equality is okay because members are interned
	const union = new Set<single<MV>>()
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
		: Intern({ _tag: "union", Members: union })
}
