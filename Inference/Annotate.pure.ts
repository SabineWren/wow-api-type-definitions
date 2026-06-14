import type * as N from "./AST.type.ts"
import { Nil, Unknown, Literal, Func, type Tree, type FuncParam, type FuncReturn } from "./Lua.type.ts"
import { Pipe } from "purity-seal"

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

const inferExpression = (node: N.Node): Tree => {
	switch (node.type) {
	case "NumericLiteral":
		return Literal("number", node.raw)
	case "StringLiteral":
		return Literal("string", node.raw)
	case "BooleanLiteral":
		return Literal("boolean", String(node.value))
	case "NilLiteral":
		return Nil
	default:
		return Unknown
	}
}

export const AnnotateFile = (nodes: readonly N.Node[]): string => {
	const globals: string[] = []

	for (const node of nodes) {
		switch (node.type) {
		case "AssignmentStatement":
			for (let i = 0; i < node.variables.length; i++) {
				const variable = node.variables[i]!
				if (variable.type !== "Identifier") continue
				const init = node.init[i]
				const type = init !== undefined ? inferExpression(init) : Nil
				globals.push(annotateGlobal(variable.name, type))
			}
			break
		case "FunctionDeclaration": {
			if (node.isLocal || node.identifier === null) break
			const params: FuncParam[] = []
			let hasVararg = false
			for (const p of node.parameters) {
				if (p.type === "VarargLiteral") { hasVararg = true; continue }
				params.push({ Name: p.name, Type: Unknown })
			}
			const lastReturn = node.body.findLast(n => n.type === "ReturnStatement")
			const returns: FuncReturn[] = []
			if (lastReturn !== undefined && lastReturn.type === "ReturnStatement") {
				for (const arg of lastReturn.arguments) {
					const ret: FuncReturn = arg.type === "Identifier"
						? { Type: inferExpression(arg), Name: arg.name }
						: { Type: inferExpression(arg) }
					returns.push(ret)
				}
			}
			globals.push(annotateGlobal(node.identifier.name, Func(params, returns, hasVararg)))
			break
		}
		}
	}

	if (globals.length === 0)
		return "---@meta\n"
	else
		return "---@meta\n\n" + globals.join("\n\n") + "\n"
}
