import { Pipe } from "purity-seal"

import type * as N from "./AST.type.ts"
import { Boolean, Func, Literal, Nil, Number, String, Union, Unknown, type FuncParam, type FuncReturn, type Tree } from "./Lua.type.ts"
import { FreshMeta, type MetaContext } from "./MetaContext.pure.ts"
import { Unify } from "./Unify.pure.ts"
import { State } from "./Lib/State/pure.ts"

type env = ReadonlyMap<string, Tree>
const emptyEnv: env = new Map()

export type GlobalVariable = Readonly<{
	Name: string
	Type: Tree
}>

// TODO DRY violation - AST types file BinaryOperator should depend on this.
// Arithmetic: operands must be numeric
// Comparison: output is boolean
// string union (..) implicit conversion with type signature:
// (string | number) -> (string | number) -> string
const arithmeticOps: ReadonlySet<N.BinaryOperator> = new Set(["+", "-", "*", "/"])
const comparisonOps: ReadonlySet<N.BinaryOperator> = new Set(["<", "<=", "==", "~=", ">=", ">"])
const stringUnionOperand: Tree = Union(String, Number)

const inferBinary = (node: N.Binary, env: env): State<MetaContext, Tree> =>
	State.Bind(
		inferExpression(node.left, env),
		left => State.Bind(
			inferExpression(node.right, env),
			(right): State<MetaContext, Tree> => {
				if (comparisonOps.has(node.operator))
					return State.Pure(Boolean)
				else if (node.operator === "..") {
					const l = Unify(stringUnionOperand, left)
					const r = Unify(stringUnionOperand, right)
					return State.Bind(l, () => State.Map(r, () => String))
				}
				else if (arithmeticOps.has(node.operator)) {
					const l = Unify(left, Number)
					const r = Unify(right, Number)
					return State.Bind(l, () => State.Map(r, () => Number))
				}
				else
					return State.Pure(Unknown)
			},
		)
	)

const inferExpression = (node: N.Node, env: env): State<MetaContext, Tree> => {
	switch (node.type) {
	case "NumericLiteral": return State.Pure(Literal("number", node.raw))
	case "StringLiteral": return State.Pure(Literal("string", node.raw))
	case "BooleanLiteral": return State.Pure(Literal("boolean", node.value ? "true" : "false"))
	case "NilLiteral": return State.Pure(Nil)
	case "Identifier": return State.Pure(env.get(node.name) ?? Unknown)
	case "BinaryExpression": return inferBinary(node, env)
	default: return State.Pure(Unknown)
	}
}

const inferBody = (body: readonly N.Node[], env: env): State<MetaContext, readonly FuncReturn[]> => ctx => {
	let scope = env
	let returns: readonly FuncReturn[] = []

	for (const stmt of body) {
		if (stmt.type === "LocalStatement") {
			for (let i = 0; i < stmt.variables.length; i++) {
				const variable = stmt.variables[i]!
				const init = stmt.init[i]
				if (variable.type !== "Identifier") continue

				const [type, next] = Pipe(
					init !== undefined ? inferExpression(init, scope) : State.Pure<MetaContext, Tree>(Nil),
					f => f(ctx),
				)
				ctx = next
				scope = new Map([...scope, [variable.name, type]])
			}
		} else if (stmt.type === "ReturnStatement") {
			const rs: FuncReturn[] = []
			for (const arg of stmt.arguments) {
				const [type, next] = inferExpression(arg, scope)(ctx)
				ctx = next
				rs.push(arg.type === "Identifier" ? { Type: type, Name: arg.name } : { Type: type })
			}
			// TODO - if a multiple has multiple return statements, Union them.
			returns = rs
		}
		// TODO - Other statements do not yet contribute constraints.
	}

	return [returns, ctx]
}

const inferFunction = (node: N.FunctionDeclaration): State<MetaContext, Tree> => ctx => {
	const params: FuncParam[] = []
	let scope: env = emptyEnv
	let hasVararg = false

	for (const p of node.parameters) {
		if (p.type === "VarargLiteral") { hasVararg = true; continue }
		// Each parameter starts as a fresh metavariable; body usage solves it.
		const [meta, next] = FreshMeta(ctx)
		ctx = next
		scope = new Map([...scope, [p.name, meta]])
		params.push({ Name: p.name, Type: meta })
	}

	const [returns, next] = inferBody(node.body, scope)(ctx)
	return [Func(params, returns, hasVararg), next]
}

const inferFile = (nodes: readonly N.Node[]): State<MetaContext, readonly GlobalVariable[]> => ctx => {
	const globals: GlobalVariable[] = []

	for (const node of nodes) {
		switch (node.type) {
		case "AssignmentStatement":
			for (let i = 0; i < node.variables.length; i++) {
				const variable = node.variables[i]!
				const init = node.init[i]
				if (variable.type !== "Identifier") continue

				const [type, next] = Pipe(
					init !== undefined ? inferExpression(init, emptyEnv) : State.Pure<MetaContext, Tree>(Nil),
					f => f(ctx),
				)
				ctx = next
				globals.push({ Name: variable.name, Type: type })
			}
			break
		case "FunctionDeclaration": {
			if (node.isLocal || node.identifier === null) break
			const [type, next] = inferFunction(node)(ctx)
			ctx = next
			globals.push({ Name: node.identifier.name, Type: type })
			break
		}
		}
	}

	return [globals, ctx]
}

export const InferFiles = (
	files: readonly (readonly N.Node[])[],
): State<MetaContext, readonly (readonly GlobalVariable[])[]> => ctx => {
	const perFile: (readonly GlobalVariable[])[] = []
	for (const nodes of files) {
		const [decls, next] = inferFile(nodes)(ctx)
		ctx = next
		perFile.push(decls)
	}
	return [perFile, ctx]
}
