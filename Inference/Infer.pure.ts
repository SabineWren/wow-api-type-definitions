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

const tableConstructorExpression = (
	node: N.TableConstructorExpression,
	env: env,
): State<MetaContext, Type.Unsolved> => {
	// TODO - Which fields are valid here? Is it only TableKey and TableKeyString?
	// Need to refine the AST schema
	// TODO - Is it an arrayElement if any non-string keys exist?
	const isArray = node.fields.some(x => x.type === "TableKey")
	const arrayField = undefined
	const fields = node.fields.map((x): Type.TableField<Type.MetaVariable> =>
		({ Name: "unknown", Type: Type.Unknown })
	)
	console.log("\n")
	node.fields.forEach(x => console.log(x))
	console.log("\n")
	return State.Pure(Type.Table(fields, arrayField))
}

// TODO - should all the 'infer' functions be collapsed into one recursive function?
// This already handles state, which statements should update.
/** Expressions return a value, so can form the RHS of assignments. */
const inferExpression = (node: N.Node, env: env): State<MetaContext, Type.Unsolved> => {
	switch (node.type) {
	// ************ Function Call ************
	case "CallExpression":// lhs = f()
	case "StringCallExpression":// lhs = f"x"
		throw new Error("TODO call expressions")
	// ************ Literal ************
	// lhs1, lhs2 = true, 123, nil, "x", ...
	case "BooleanLiteral": return State.Pure(Type.Literal("boolean", node.value ? "true" : "false"))
	case "NilLiteral": return State.Pure(Type.Nil)
	case "NumericLiteral": return State.Pure(Type.Literal("number", node.raw))
	case "StringLiteral": return State.Pure(Type.Literal("string", node.raw))
	case "VarargLiteral":
		throw new Error("TODO VarargLiteral")
	// ************ Other ************
	case "BinaryExpression":// lhs = x + y
		return inferBinary(node, env)
	case "FunctionDeclaration":// lhs = function() end
		throw new Error("TODO FunctionDeclaration")
	case "Identifier":// lhs = b
		return State.Pure(env.get(node.name) ?? Type.Unknown)
	case "IndexExpression":// lhs = t[i]
		throw new Error("TODO IndexExpression")
	case "LogicalExpression":// lhs = x and y
		throw new Error("TODO LogicalExpression")
	case "MemberExpression":// lhs = t.x
		throw new Error("TODO MemberExpression")
	case "TableConstructorExpression":// lhs = {}
		return tableConstructorExpression(node, env)
	case "UnaryExpression":// lhs = -x
		throw new Error("TODO UnaryExpression")
	// These fields should only appear inside tables, not RHS
	// We still need to handle them somewhere, but they can't contribute
	// to inferred values, only metavariable type information.
	case "TableKey":
		throw new Error("^.^ TableKey")
	case "TableKeyString":
		throw new Error("^.^ TableKeyString")
	case "TableValue":
		throw new Error("^.^ TableValue")
	// Statements:
	case "AssignmentStatement":// lhs = A = 5
		throw new Error("^.^ AssignmentStatement")
	case "LocalStatement":// lhs = local a = 5
		throw new Error("^.^ LocalStatement")
	case "BreakStatement":
		throw new Error("^.^ BreakStatement")
	case "CallStatement":
		throw new Error("^.^ CallStatement")
	case "ForGenericStatement":
		throw new Error("^.^ ForGenericStatement")
	case "ForNumericStatement":
		throw new Error("^.^ ForNumericStatement")
	case "IfStatement":
		throw new Error("^.^ IfStatement")
	case "RepeatStatement":
		throw new Error("^.^ RepeatStatement")
	case "ReturnStatement":
		throw new Error("^.^ ReturnStatement")
	case "WhileStatement":
		throw new Error("^.^ WhileStatement")
	// default: return State.Pure(Type.Unknown)
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
		console.error("UNHANDLED FUNCTION BODY STATEMENT: " + stmt.type)
		// TODO - why are no other statements handled? You can declare globals inside
		// a function body (even if that's horrible), but the above only handles
		// local assignments. We should probably just handle every expression.
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

// TODO:
// I suspect there should be one main loop that handles every node.
// Each case should call a specialized function for that node type,
// which recursively calls the main loop.
// Statement nodes only update metavariable context,
// while expression nodes can also update inferred value.
//
// Another option is to have specialized switches for tables, RHS, etc.
// This will be easier if the Lua AST schema isn't so lenient
// with allowing illegal node combinations.
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
		const [globals, next] = inferFile(nodes)(ctx)
		ctx = next
		perFile.push(globals)
	}
	return [perFile, ctx]
}
