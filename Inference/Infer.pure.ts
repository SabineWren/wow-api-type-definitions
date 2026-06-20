import { type Array, Pipe } from "purity-seal"

import type * as N from "./Tree/AST.type.ts"
import * as Type from "./Tree/Type.type.ts"
import { FreshMeta, type MetaContext } from "./MetaContext.pure.ts"
import { Unify } from "./Unify.pure.ts"
import { State } from "./Lib/State/pure.ts"

type env = ReadonlyMap<string, Type.Unsolved>
const emptyEnv: env = new Map()

type globalVar<MV> = Readonly<{
	Name: string
	Type: Type.TypeTerm<MV>
}>
export type GlobalVarUnsolved = globalVar<Type.MetaVariable>
export type GlobalVarSolved = globalVar<never>

// TODO DRY violation - AST types file BinaryOperator should depend on this.
// Arithmetic: operands must be numeric
// Comparison: output is boolean
// string union (..) implicit conversion with type signature:
// (string | number) -> (string | number) -> string
const arithmeticOps: ReadonlySet<N.BinaryOperator> = new Set(["+", "-", "*", "/"])
const comparisonOps: ReadonlySet<N.BinaryOperator> = new Set(["<", "<=", "==", "~=", ">=", ">"])
const stringUnionOperand: Type.Unsolved = Type.MkUnion(Type.String, Type.Number)

const inferBinary = (node: N.Binary, env: env): State<MetaContext, Type.Unsolved> =>
	State.Bind(
		inferExpression(node.left, env),
		left => State.Bind(
			inferExpression(node.right, env),
			(right): State<MetaContext, Type.Unsolved> => {
				if (comparisonOps.has(node.operator))
					return State.Pure(Type.Boolean)
				else if (node.operator === "..") {
					const l = Unify(stringUnionOperand, left)
					const r = Unify(stringUnionOperand, right)
					return State.Bind(l, () => State.Map(r, () => Type.String))
				}
				else if (arithmeticOps.has(node.operator)) {
					const l = Unify(left, Type.Number)
					const r = Unify(right, Type.Number)
					return State.Bind(l, () => State.Map(r, () => Type.Number))
				}
				else
					return State.Pure(Type.Unknown)
			},
		)
	)

const inferExpression = (node: N.Node, env: env): State<MetaContext, Type.Unsolved> => {
	switch (node.type) {
	case "NumericLiteral": return State.Pure(Type.Literal("number", node.raw))
	case "StringLiteral": return State.Pure(Type.Literal("string", node.raw))
	case "BooleanLiteral": return State.Pure(Type.Literal("boolean", node.value ? "true" : "false"))
	case "NilLiteral": return State.Pure(Type.Nil)
	case "Identifier": return State.Pure(env.get(node.name) ?? Type.Unknown)
	case "BinaryExpression": return inferBinary(node, env)
	default: return State.Pure(Type.Unknown)
	}
}

const inferBody = (
	body: Array<N.Node>,
	env: env,
): State<MetaContext, Array<Type.FuncReturn<Type.MetaVariable>>> => ctx => {
	let scope = env
	let returns: Array<Type.FuncReturn<Type.MetaVariable>> = []

	for (const stmt of body) {
		if (stmt.type === "LocalStatement") {
			for (let i = 0; i < stmt.variables.length; i++) {
				const variable = stmt.variables[i]!
				const init = stmt.init[i]
				if (variable.type !== "Identifier") continue

				const [type, next] = Pipe(
					init !== undefined ? inferExpression(init, scope) : State.Pure<MetaContext, Type.Unsolved>(Type.Nil),
					f => f(ctx),
				)
				ctx = next
				scope = new Map([...scope, [variable.name, type]])
			}
		} else if (stmt.type === "ReturnStatement") {
			const rs: Type.FuncReturn<Type.MetaVariable>[] = []
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

const inferFunction = (node: N.FunctionDeclaration): State<MetaContext, Type.Unsolved> => ctx => {
	const params: Type.FuncParam<Type.MetaVariable>[] = []
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
	return [Type.MkFunc(params, returns, hasVararg), next]
}

const inferFile = (nodes: Array<N.Node>): State<MetaContext, Array<GlobalVarUnsolved>> => ctx => {
	const globals: GlobalVarUnsolved[] = []

	for (const node of nodes) {
		switch (node.type) {
		case "AssignmentStatement":
			for (let i = 0; i < node.variables.length; i++) {
				const variable = node.variables[i]!
				const init = node.init[i]
				if (variable.type !== "Identifier") continue

				const [type, next] = Pipe(
					init !== undefined ? inferExpression(init, emptyEnv) : State.Pure<MetaContext, Type.Unsolved>(Type.Nil),
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
	files: Array<Array<N.Node>>,
): State<MetaContext, Array<Array<GlobalVarUnsolved>>> => ctx => {
	const perFile: Array<GlobalVarUnsolved>[] = []
	for (const nodes of files) {
		const [decls, next] = inferFile(nodes)(ctx)
		ctx = next
		perFile.push(decls)
	}
	return [perFile, ctx]
}
