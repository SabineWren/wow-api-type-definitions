import type * as N from "./Tree/AST.type.ts"
import type * as Type from "./Tree/Type.type.ts"
import { Generalize } from "./Generalize.pure.ts"
import { InferFiles, type GlobalVarSolved, type GlobalVarUnsolved } from "./Infer.pure.ts"
import { Empty, type MetaContext } from "./MetaContext.pure.ts"
import { Zonk } from "./Zonk.pure.ts"
import { State } from "./Lib/State/pure.ts"
import { Array, Option, Pipe } from "purity-seal"

const isAllCaps = (name: string): boolean => /^[A-Z][A-Z_0-9]*$/.test(name)

/** Reads all files, infers types, then writes annotations. */
export const AnnotateFiles = (files: Array<Array<N.Node>>): Option<string>[] => {
	const [globalsPerFile, ctx] = State.Run(InferFiles(files), Empty)

	return Pipe(
		globalsPerFile,
		Array.Map(gs => {
			const mapToBoundVars = Generalize(gs, ctx)
			return Array.Map(gs, (g: GlobalVarUnsolved): GlobalVarSolved =>
				({ Name: g.Name, Type: Zonk(g.Type, ctx, mapToBoundVars) })
			)
		}),
		Array.Map((globals): Option<string> => globals.length === 0
			? Option.None()
			: Option.Some("---@meta\n\n" + globals.map(annotateGlobal).join("\n\n") + "\n"),
		),
	)
}

const annotateGlobal = (g: GlobalVarSolved): string =>
	g.Type._tag === "function"
		? annotateFunction(g.Name, g.Type)
		: annotateAssignment(g.Name, g.Type)

const annotateFunction = (name: string, type: Type.Function<never>): string => {
	const params = type.Params.map(p => `---@param ${p.Name} ${annotateType(p.Type)}`)
	const returns = type.Returns.length === 0
		? "---@return nil"
		: Pipe(
			type.Returns.map(r => `---@return ${annotateType(r.Type)}${r.Name !== undefined ? ` ${r.Name}` : ""}`),
			xs => type.Returns.some(r => r.Type._tag !== "nil")
				? [...xs, "---@nodiscard"]
				: xs,
		)
	const header = Pipe(
		type.Params.map(p => p.Name),
		xs => type.HasVararg ? [...xs, "..."] : xs,
		xs => `function ${name}(${xs.join(", ")}) end`,
	)
	const generics = collectGenerics(type)
	const genericLine = generics.length > 0 ? [`---@generic ${generics.join(", ")}`] : []
	return [...genericLine, ...params, ...returns, header].join("\n")
}

const annotateAssignment = (name: string, type: Exclude<Type.Solved, Type.Function<never>>): string => {
	// Heuristically detect global constants as SNAKE_CASE literals.
	// Additional sanity checks where it makes sense.
	if (
		(type._tag === "literal" || type._tag === "table" && type.Fields.length > 0)
		&& isAllCaps(name)
	)
		return annotateConstant(name, type)
	else {
		return [
			`---@type ${annotateType(type)}`,
			`${name} = ${assignmentValue(type)}`,
		].join("\n")
	}
}

const annotateConstant = (name: string, type: Type.Literal | Type.Table<never>): string => {
	const value = (() => {
		switch (type._tag) {
		case "literal": return type.Value
		case "table": return annotateTableFields(type)
		}
	})()
	return `${name} = ${value}`
}

// TODO - this assumes literal and non-literal tables get the
// same annotation, which is certainly wrong.
const annotateTableFields = (t: Type.Table<never>): string => Pipe(
	t.Fields.map(f => {
		const value = f.Type._tag === "literal"
			? assignmentValue(f.Type)
			: annotateType(f.Type)
		return `${f.Name} = ${value}`
	}),
	fields => `{ ${fields.join(", ")} }`
)

const assignmentValue = (type: Type.Solved): string => {
	switch(type._tag) {
	case "literal":
		return type.Value
	case "table":
		return "{ }"
	default:
		return "nil"
	}
}

const annotateType = (t: Type.Solved): string => {
	switch (t._tag) {
	// ************ Branch ************
	// TODO - Perhaps we should sort union members?
	case "union": return [...t.Members.values().map(annotateType)].join(" | ")
	// ************ Leaf ************
	case "boolean": return "boolean"
	case "bound": return nameGeneric(t.Index)
	case "class": return t.Name
	case "function": {
		const params = Pipe(
			t.Params.map(p => `${p.Name}: ${annotateType(p.Type)}`),
			xs => t.HasVararg ? [...xs, "..."] : xs,
		)
		const returns = Pipe(
			t.Returns.map(r => annotateType(r.Type)),
			xs => xs.length > 0 ? `: ${xs.join(", ")}` : ""
		)
		return `fun(${params.join(", ")})${returns}`
	}
	case "literal": return t.BaseType
	case "nil": return "nil"
	case "number": return "number"
	case "string": return "string"
	case "table":
		// TODO - This is probably wrong for non-literal tables.
		return annotateTableFields(t)
	case "unknown": return "unknown"
	}
}

const collectGenerics = (type: Type.Function<never>): string[] => {
	const seen = new globalThis.Set<number>()
	const order: number[] = []
	const walk = (t: Type.Solved): void => {
		switch (t._tag) {
		case "bound":
			if (!seen.has(t.Index)) {
				void seen.add(t.Index)
				void order.push(t.Index)
			}
			break
		case "union":
			t.Members.forEach(walk)
			break
		case "function":
			t.Params.forEach(p => walk(p.Type))
			t.Returns.forEach(r => walk(r.Type))
			break
		case "table":
			t.Fields.forEach(f => walk(f.Type))
			if (t.ArrayElement !== undefined) walk(t.ArrayElement)
			break
		default:
			break
		}
	}
	type.Params.forEach(p => walk(p.Type))
	type.Returns.forEach(r => walk(r.Type))
	return order.map(nameGeneric)
}

// Hack to map int to lower case ascii.
// This will break if index > 25.
// A better solution would be to make the alphabetic a numeric base 26.
const nameGeneric = (index: number): string =>
	// (mode === "lower" ? 97 : 65)
	String.fromCharCode(65 + index)
