import type * as N from "./AST.type.ts"
import { type Tree } from "./Lua.type.ts"
import { InferFiles, type GlobalVariable } from "./Infer.pure.ts"
import { Empty, type MetaContext } from "./MetaContext.pure.ts"
import { Zonk } from "./Zonk.pure.ts"
import { State } from "./Lib/State/pure.ts"
import { Option, Pipe } from "purity-seal"

const annotateType = (t: Tree): string => {
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
	case "meta": throw new Error(`Cannot annotate unzonked metavariable ?${t.Id}`)
	case "nil": return "nil"
	case "number": return "number"
	case "string": return "string"
	case "table": return Pipe(
		t.Fields.map(f => `${f.Name}: ${annotateType(f.Type)}`),
		fields => `{ ${fields.join(", ")} }`
	)
	case "unknown": return "any"
	}
}

const isAllCaps = (name: string): boolean => /^[A-Z][A-Z_0-9]*$/.test(name)

const assignmentValue = (type: Tree): string => {
	if (type._tag === "literal")
		return type.Value
	else if (type._tag === "nil")
		return "nil"
	else
		// TODO - this is probably wrong.
		// Need to build a test suite for each case and figure out
		// what output should be.
		return "nil"
}

const annotateGlobal = (name: string, type: Tree): string => {
	if (type._tag === "function") {
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
	} else {
		const value = assignmentValue(type)
		// Heuristically detect global constants as SNAKE_CASE literals
		if (type._tag === "literal" && isAllCaps(name))
			return `${name} = ${value}`
		else
			return `---@type ${annotateType(type)}\n${name} = ${value}`
	}
}

const annotateGlobals = (decls: readonly GlobalVariable[]): Option<string> =>
	decls.length === 0
		? Option.None()
		: Option.Some("---@meta\n\n" + decls.map(d => annotateGlobal(d.Name, d.Type)).join("\n\n") + "\n")

// TODO - The type should change because zonking strips the metavariables.
const zonkDecls = (decls: readonly GlobalVariable[], ctx: MetaContext): readonly GlobalVariable[] =>
	decls.map(d => ({ Name: d.Name, Type: Zonk(d.Type, ctx) }))

/** Reads all files, infers types, then writes annotations. */
export const AnnotateFiles = (files: readonly (readonly N.Node[])[]): readonly Option<string>[] => {
	const [globalsPerFiles, ctx] = State.Run(InferFiles(files), Empty)
	return globalsPerFiles.map(decls => annotateGlobals(zonkDecls(decls, ctx)))
}
