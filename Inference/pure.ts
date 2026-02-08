import { Pipe } from "purity-seal"
import type * as N from "./type.ts"

const _LOCAL = "**local**"

type assign = { _tag: "assign", Value: string }
type func = { _tag: "func", Before: string, Value: string }
type statement = { _tag: "statement", Value: string }
type expReturn =
	| { _tag: "literal", Value: string|number|boolean }
	| { _tag: "**local**", Value: N.Node["type"] }
	| { _tag: "typedLiteral", Type: "boolean", Value: boolean, HasValue: boolean }
	| { _tag: "typedLiteral", Type: "nil", Value: "nil", HasValue: false }
	| { _tag: "typedLiteral", Type: "number", Value: number, HasValue: boolean }
	| { _tag: "typedLiteral", Type: "string", Value: string, HasValue: boolean }
	| assign
	| func
	| statement

const expression = (exp: N.Node): expReturn => {
	switch (exp.type) {
	case "BinaryExpression":
		switch (exp.operator) {
		case "..":
			return { _tag: "typedLiteral", Type: "string", Value: `""`, HasValue: false }
		case "<":
		case ">":
		case "+":
		case "-":
		case "*":
		case "/":
			return { _tag: "typedLiteral", Type: "number", Value: 0, HasValue: false }
		default:
			throw new Error("Unexpected BinaryExpression: " + JSON.stringify(exp))
		}
	case "BooleanLiteral":
		return { _tag: "typedLiteral", Type: "boolean", Value: exp.value, HasValue: true }
	case "CallExpression":
		// TODO how to infer return type from function name?
		return { _tag: _LOCAL, Value: "CallExpression" }
	case "CallStatement":
		// TODO how to infer return type from function name?
		return { _tag: _LOCAL, Value: "CallStatement" }
	case "FunctionDeclaration":
		return funcDeclaration(exp)
	case "Identifier":
		if (exp.name === undefined) throw new Error("Missing identifier name: " + JSON.stringify(exp))
		return { _tag: "literal", Value: exp.name }
	case "IndexExpression": {
		const indexer = expression(exp.index)
		if (indexer._tag === _LOCAL)
			return indexer
		else
			return { _tag: "literal", Value: `${exp.base.name}[${indexer.Value}]` }
	}
	case "LocalStatement":
		return { _tag: _LOCAL, Value: "LocalStatement" }
	case "LogicalExpression":
		// Both sides are hopefully the same.
		// Choosing 'right' because it's often a fallback literal.
		return expression(exp.right)
	case "MemberExpression":
		const left = expression(exp.base)
		const right = expression(exp.identifier)
		if (left._tag === _LOCAL)
			throw new Error("Unexpected member expression left/base: " + JSON.stringify(exp))
		if (right._tag === _LOCAL)
			throw new Error("Unexpected member expression right/identifier: " + JSON.stringify(exp))
		return { _tag: "literal", Value: left.Value + "." + right.Value }
	case "NilLiteral":
		return { _tag: "typedLiteral", Type: "nil", Value: "nil", HasValue: false }
	case "NumericLiteral":
		return { _tag: "literal", Value: exp.raw }
	case "StringLiteral":
		return { _tag: "literal", Value: exp.raw }
	// TODO should use newlines to break nested tables.
	// See TargetFrame.lua UnitReactionColor
	case "TableConstructorExpression": {
		const xs = exp.fields
			.map(f => expression(f).Value)
			.join(", ")
		return { _tag: "literal", Value: `{ ${xs} }` }
	}
	case "TableKey": {
		const right = expression(exp.value)
		const value = right._tag === _LOCAL ? "nil" : right.Value
		return { _tag: "literal", Value: `[${exp.key.raw}] = ${value}` }
	}
	case "TableKeyString": {
		const right = expression(exp.value)
		const value = right._tag === _LOCAL ? "nil" : right.Value
		return { _tag: "literal", Value: `${exp.key.name} = ${value}` }
	}
	case "TableValue":
		const value = expression(exp.value)
		if (value._tag === _LOCAL)
			throw new Error("Unexpected TableValue: " + JSON.stringify(exp))
		if (value.Value === undefined)
			throw new Error("Undefined TablueValue: " + JSON.stringify(exp))
		return { _tag: "literal", Value: value.Value }
	case "UnaryExpression":
		// We could track down the identifier, and see if operator changes its type.
		return { _tag: "literal", Value: exp.operator + expression(exp.argument).Value }
	default:
		throw new Error("Unexpected expression: " + JSON.stringify(exp))
	}
}

const assignment = (x: N.Assignment_Global): string => {
	if (x.variables.length > 1) {
		// const msg = x.variables
		// 	.map((x, i) => `${[i]}: ${JSON.stringify(x)}`)
		// 	.join("\n")
		console.warn(`[${x.variables.length}]` + " extra variables")
		return _LOCAL
	}
	if (x.init.length > 1) {
		const msg = "WARNING -- unexpected multi assignment" + "\n" + JSON.stringify(x.init)
		throw new Error("assignment2: " + msg)
	}
	if (x.variables.length === 0)
		throw new Error("Assignment unexpected empty variables")
	if (x.init.length === 0)
		throw new Error("Assignment unexpected empty init")

	const left = expression(x.variables[0]!).Value
	const right = expression(x.init[0]!)
	switch (right._tag) {
		case _LOCAL:
			return _LOCAL
		case "func":
			return "\n" + right.Before + "\n" + `${left} = ${right.Value}`
		case "literal":
			return `${left} = ${right.Value}`
		// case "type":
		// 	return `---@type ${right.Type}` + "\n" + `${left} = ${right.Value}`
		case "typedLiteral":
			return right.HasValue
				? `${left} = ${right.Value}`
				: `${left} = ${right.Value} ---@type ${right.Type}`
		default:
			throw new Error("Unexpected case: " + JSON.stringify(right))
	}
}

const funcDeclaration = (x: N.FunctionDeclaration): func => {
	if (x.isLocal)
		return { _tag: "func", Before: "", Value: _LOCAL }

	const params = x.parameters
		.map(x => x.type === "Identifier" ? x.name : x.raw).join(", ")
	const paramStubs = x.parameters
		.map((x): string => {
			switch (x.type) {
			case "Identifier": return `---@param ${x.name} any (type not inferred)`
			case "VarargLiteral": return `---@param ${x.value} any (type not inferred)`
			}
		})

	// Idk how to handle multiple returns with inconsistent types.
	// Simple to take the last return from the function.
	const returns = Pipe(
		x.body.toReversed().find(x => x.type === "ReturnStatement"),
		x => x ? x.arguments : [],
		xs => xs.map((x, i): expReturn => {
			const value = expression(x)
			if (value._tag === _LOCAL)
				// not a literal name, so make a unique one
				return { _tag: "literal", Value: `x${i}` }
			else
				return value
		}),
		xs => xs.length === 0 ? xs : xs.map(x => {
			if (x._tag === "typedLiteral")
				return x.HasValue
					? `---@return ${x.Type}`
					: `---@return ${x.Type} ${x.Value}`
			// This is horrible but I want it to be done.
			// See TargetFrame.lua TargetFrame_FormatHealth
			else if (x.Value === "0")
				return `---@return number`
			else
				return `---@return any ${x.Value} (type not inferred)`
		}),
		xs => xs.length > 0
			? xs.concat(["---@nodiscard"])
			: ["---@return nil"]
	)

	const declaration = ((ident) => {
		if (ident === null)
			// anonymous lambda
			return `function(${params}) end`
		else {
			const ident2 = expression(ident)
			if (ident2._tag === _LOCAL)
				throw new Error("Invalid Identifier: " + JSON.stringify(x))
			return `function ${ident2.Value}(${params}) end`
		}
	})(x.identifier)

	const before = [...paramStubs, ...returns].join("\n")
	return { _tag: "func", Before: before, Value: declaration }
}

export const AnnotateFile = (nodes: readonly N.Node[]) => nodes
	.map((node): assign | func | statement => {
		// Top level tokens
		switch (node.type) {
		// TODO This incorrectly exports dictionary assignment to local variables
		// See GlueXML/ChallengeList.lua challenges
		case "AssignmentStatement":
			return { _tag: "assign", Value: assignment(node) }
		case "CallExpression":
			// TODO how to infer return type from function name?
			return { _tag: "statement", Value: _LOCAL }
		case "CallStatement":
			// TODO how to infer return type from function name?
			return { _tag: "statement", Value: _LOCAL }
		case "ForGenericStatement":
			return { _tag: "statement", Value: _LOCAL }
		case "ForNumericStatement":
			return { _tag: "statement", Value: _LOCAL }
		case "FunctionDeclaration":
			return funcDeclaration(node)
		case "IfStatement":
			return { _tag: "statement", Value: _LOCAL }
		case "LocalStatement":
			return { _tag: "statement", Value: _LOCAL }
		default:
			throw new Error("Unexpected type: " + JSON.stringify(node))
		}
	})
	.filter(node => node.Value !== _LOCAL)
	.map((node, i): string => node._tag === "func"
		? (i === 0 ? "" : "\n") + node.Before + "\n" + node.Value
		: node.Value
	)
	.join("\n")
