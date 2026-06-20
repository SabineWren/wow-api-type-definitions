import type * as N from "./Tree/AST.type.ts"
import type * as Type from "./Tree/Type.type.ts"
import { InferFiles, type GlobalVarSolved, type GlobalVarUnsolved } from "./Infer.pure.ts"
import { Empty } from "./MetaContext.pure.ts"
import { Zonk } from "./Zonk.pure.ts"
import { State } from "./Lib/State/pure.ts"
import { Array, Option, Pipe } from "purity-seal"

const isAllCaps = (name: string): boolean => /^[A-Z][A-Z_0-9]*$/.test(name)

const annotateType = (t: Type.Solved): string => {
	switch (t._tag) {
	// ************ Branch ************
	// TODO - Perhaps we should sort union members?
	case "union": return [...t.Members.values().map(annotateType)].join(" | ")
	// ************ Leaf ************
	case "boolean": return "boolean"
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
	case "function-any": return "function"
	case "literal": return t.BaseType
	case "nil": return "nil"
	case "number": return "number"
	case "string": return "string"
	case "table": return Pipe(
		t.Fields.map(f => `${f.Name}: ${annotateType(f.Type)}`),
		fields => `{ ${fields.join(", ")} }`
	)
	case "unknown": return "unknown"
	}
}

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

const annotateConstant = (name: string, type: Type.Literal | Type.Table<never>): string => {
	const value = (() => {
		switch (type._tag) {
		case "literal": return type.Value
		case "table": return `{ ${type.Fields.map(x => `${x.Name} = ${annotateType(x.Type)}`).join(", ")} }`
		}
	})()
	return `${name} = ${value}`
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
	return params.concat(returns, header).join("\n")
}

const annotateGlobal = (g: GlobalVarSolved): string =>
	g.Type._tag === "function"
		? annotateFunction(g.Name, g.Type)
		: annotateAssignment(g.Name, g.Type)

/** Reads all files, infers types, then writes annotations. */
export const AnnotateFiles = (files: Array<Array<N.Node>>): Option<string>[] => {
	const [globalsPerFile, ctx] = State.Run(InferFiles(files), Empty)

	return Pipe(
		globalsPerFile,
		Array.Map(Array.Map((d: GlobalVarUnsolved): GlobalVarSolved =>
			({ Name: d.Name, Type: Zonk(d.Type, ctx) }),
		)),
		Array.Map((globals): Option<string> => globals.length === 0
			? Option.None()
			: Option.Some("---@meta\n\n" + globals.map(annotateGlobal).join("\n\n") + "\n"),
		),
	)
}
