import { Array, Option, Pipe } from "purity-seal"

import * as N from "./Tree/AST.type.ts"
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

const inferUnary = (node: N.UnaryExpression, env: env): State<MetaContext, Type.Boolean | Type.Number> =>
	State.Bind(
		inferExpression(node.argument, env),
		(arg): State<MetaContext, Type.Boolean | Type.Number> => {
			switch (node.operator) {
			// Any expression is "not-able" in Lua, so we can't refine the argument.
			// However, we know the output is a boolean.
			case "not":
				return State.Pure(Type.Boolean)
			case "-":
			case "+":
			case "++":
			case "--":
				const a = Unify(Type.Number, arg)
				return State.Map(a, () => Type.Number)
			}
		}
	)


// TODO DRY violation - AST types file BinaryOperator should depend on this.
// Arithmetic: operands must be numeric
// Comparison: output is boolean
// string union (..) implicit conversion with type signature:
// (string | number) -> (string | number) -> string
const arithmeticOps: ReadonlySet<N.BinaryOperator> = new Set(["+", "-", "*", "/"])
const comparisonOps: ReadonlySet<N.BinaryOperator> = new Set(["<", "<=", "==", "~=", ">=", ">"])
const stringUnionOperand: Type.Unsolved = Type.MkUnion(Type.String, Type.Number)

const inferBinary = (node: N.BinaryExpression, env: env): State<MetaContext, Type.Unsolved> =>
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
): State<MetaContext, Type.Unsolved> => (ctx): [Type.Unsolved, MetaContext] => {
	// LuaLS infers `{ [foo()] = 5 }` as `Table` which is `{  }`
	// There's probably a better way, but it means skipping TableKey fields is ok.
	// LuaLS keeps literals like `{ [true] = 5 }`
	const fields = Array.Choose(node.fields, (x): Option<Type.TableField<Type.MetaVariable>> => {
		switch (x.type) {
			case "TableKey": {
				if (x.key.type === "UnaryExpression") {
					const [type, next] = inferUnary(x.key, env)(ctx)
					ctx = next
					// We don't know the field name, only the type of name.
					return Option.None()
				} else {
					const name = ((): string => {
						switch (x.key.type) {
						case "BooleanLiteral": return x.key.value ? "true" : "false"
						case "NilLiteral": return "nil"
						case "NumericLiteral": return x.key.raw
						case "StringLiteral": return x.key.raw
						// {  [...] = 123 } is not valid Lua
						case "VarargLiteral": throw new Error("Unexpected VarArg in table key")
						}
					})()
					const [type, next] = inferExpression(x.value, env)(ctx)
					ctx = next
					return Option.Some({ Name: name, Type: type })
				}
			}
			case "TableKeyString": {
				const [type, next] = inferExpression(x.value, env)(ctx)
				ctx = next
				return Option.Some({ Name: x.key.name, Type: type })
			}
			case "TableValue":// Array field
				return Option.None()
		}
	})

	const arrayFields = node.fields
		.filter(x => x.type === "TableValue")
		// MkUnion
		.map(x => {
			const [type, next] = inferExpression(x.value, env)(ctx)
			ctx = next
			return type
		})
	const arrayField = arrayFields.length === 0
		? undefined
		: Type.MkUnion(...arrayFields)

	return [Type.Table(fields, arrayField), ctx]
}

const literalToType = (node: N.Literal): Type.Literal | Type.Nil => {
	switch (node.type) {
	case "BooleanLiteral": return Type.Literal("boolean", node.value ? "true" : "false")
	case "NilLiteral": return Type.Nil
	case "NumericLiteral": return Type.Literal("number", node.raw)
	case "StringLiteral": return Type.Literal("string", node.raw)
	// TODO should we handle varargs somehow?
	case "VarargLiteral": return Type.Literal("string", "...")
	}
}

// TODO - should all the 'infer' functions be collapsed into one recursive function?
// This already handles state, which statements should update.
/** Expressions return a value, so can form the RHS of assignments. */
const inferExpression = (node: N.Node, env: env): State<MetaContext, Type.Unsolved> => {
	switch (node.type) {
	// ************ Function Call ************
	case "CallExpression":// lhs1, lhs2 = f(), (function() end)()
		return inferFunctionCall(node.base, node.arguments)
	case "StringCallExpression":// lhs = f"x"
		return inferFunctionCall(node.base, [node.argument])
	// ************ Literal ************
	// lhs1, lhs2 = true, 123, nil, "x", ...
	case "BooleanLiteral":
	case "NilLiteral":
	case "NumericLiteral":
	case "StringLiteral":
	case "VarargLiteral":
		return State.Pure(literalToType(node))
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
		return inferUnary(node, env)
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

// -- Likely any expression can be a function call base.
// Identifier: f()
// MemberExpression: obj.method()
// IndexExpression: obj["method"]()
// CallExpression: factory()()
// StringCallExpression: f"hello"()
// FunctionDeclaration: (function() end)()
const inferFunctionCall = (base: N.Rhs, args: Array<N.Rhs>): State<MetaContext, Type.Unsolved> => ctx => {
	switch (base.type) {
	case "CallExpression":
		console.log("base.base", base.base)
		console.log("base.arguments", base.arguments)
		throw new Error("TODO CallExpression")
	case "StringCallExpression":
		throw new Error("TODO StringCallExpression")
	case "FunctionDeclaration":
		// TODO - We can have the arguments, which could
		// be literals or at least of known type.
		// We can certainly do better than inferring from only the declaration.
		// ex. `(function(a) return a end)(1)`
		// should infer `1` not `unknown`
		const [fn, next] = inferFunctionDec(base)(ctx)
		const returnType = Type.MkUnion(...fn.Returns.map(x => x.Type))
		return [returnType, next]
	case "Identifier":
		throw new Error("TODO Identifier")
	case "IndexExpression":
		throw new Error("TODO IndexExpression")
	case "MemberExpression":
		throw new Error("TODO MemberExpression")
	case "BooleanLiteral":
	case "NilLiteral":
	case "NumericLiteral":
	case "StringLiteral":
	case "VarargLiteral":
	case "BinaryExpression":
	case "LogicalExpression":
	case "TableConstructorExpression":
	case "UnaryExpression":
		throw new Error(`Unhandled function call base: ${base.type}`)
	}
}

const inferFunctionDec = (node: N.FunctionDeclaration): State<MetaContext, Type.Function<Type.MetaVariable>> => ctx => {
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
			const [type, next] = inferFunctionDec(node)(ctx)
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
