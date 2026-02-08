import { S } from "./Lib/pure.ts"

export const BinaryOperator = S.Literal("..", "<", ">", "+", "-", "*", "/")
export const UnaryOperator = S.Literal("-", "+", "++", "--")

export type BinaryOperator = typeof BinaryOperator.Type
export type UnaryOperator = typeof UnaryOperator.Type

// Leaves
export const Binary = S.Struct({
	type: S.Literal("BinaryExpression"),
	operator: BinaryOperator,
	left: S.Any,// Probably: rhs, Confirmed: CallExpression, StringLiteral
	right: S.Any,
})

export const BooleanLiteral = S.Struct({
	type: S.Literal("BooleanLiteral"),
	value: S.Boolean,
})

export const ForGenericStatement = S.Struct({
	type: S.Literal("ForGenericStatement"),
})

export const ForNumericStatement = S.Struct({
	type: S.Literal("ForNumericStatement"),
})

/** Variable reference */
const Identifier = S.Struct({
	type: S.Literal("Identifier"),
	name: S.String,
})

export const IfStatement = S.Struct({
	type: S.Literal("IfStatement"),
})

export const NilLiteral = S.Struct({
	type: S.Literal("NilLiteral")
})

export const NumericLiteral = S.Struct({
	type: S.Literal("NumericLiteral"),
	/** Stringified numeric value */
	raw: S.String,
	value: S.Number,
})

export const StringLiteral = S.Struct({
	type: S.Literal("StringLiteral"),
	value: S.NullOr(S.String),
	raw: S.String,
})

// Branches
const _node = S.Suspend((): S.Schema<Node, NodeE> => Node)

// I suspect a subset of nodes can appear on the right side in assignment, etc.
// Confirmed: CallExpression, MemberExpression, Identifier
// probably: StringLiteral
const rhs = _node
type rhs = Node
type rhsE = NodeE

const _assignment = S.Struct({
	init: S.Array(_node),
	variables: S.Array(rhs),
})
type _assignment = { init: readonly Node[], variables: readonly rhs[] }
type _assignmentE = { init: readonly NodeE[], variables: readonly rhsE[] }

export const Assignment_Global = S.Struct({
	..._assignment.fields,
	type: S.Literal("AssignmentStatement"),
})
export type Assignment_Global = { type: "AssignmentStatement" } & _assignment
type Assignment_GlobalE = { type: "AssignmentStatement" } & _assignmentE

export const Assignment_Local = S.Struct({
	..._assignment.fields,
	type: S.Literal("LocalStatement"),
})
type Assignment_Local = { type: "LocalStatement" } & _assignment
type Assignment_LocalE = { type: "LocalStatement" } & _assignmentE

export const CallExpression = S.Struct({
	type: S.Literal("CallExpression"),
	base: rhs,
	arguments: S.Array(_node),
})
type CallExpression = { type: "CallExpression", base: rhs, arguments: readonly Node[] }
type CallExpressionE = { type: "CallExpression", base: rhsE, arguments: readonly NodeE[] }

export const CallStatement = S.Struct({
	type: S.Literal("CallStatement"),
	expression: CallExpression,
})
export type CallStatement = { type: "CallStatement", expression: CallExpression }
export type CallStatementE = { type: "CallStatement", expression: CallExpressionE }

export const StringCallExpression = S.Struct({
	type: S.Literal("StringCallExpression"),
	base: _node,
	argument: StringLiteral,
})
export type StringCallExpression = { type: "StringCallExpression", base: Node, argument: typeof StringLiteral.Type }
export type StringCallExpressionE = { type: "StringCallExpression", base: NodeE, argument: typeof StringLiteral.Encoded }

export const FunctionDeclaration = S.Struct({
	type: S.Literal("FunctionDeclaration"),
	body: S.Array(_node),
	/** null if anonymous function */
	identifier: S.NullOr(Identifier),
	isLocal: S.Boolean,
	parameters: S.Array(Identifier),// Node[]??
})
export type FunctionDeclaration = { type: "FunctionDeclaration", body: readonly Node[], identifier: null | typeof Identifier.Type, isLocal: boolean, parameters: readonly (typeof Identifier.Type)[] }
export type FunctionDeclarationE = { type: "FunctionDeclaration", body: readonly NodeE[], identifier: null | typeof Identifier.Encoded, isLocal: boolean, parameters: readonly (typeof Identifier.Encoded)[] }

export const Index = S.Struct({
	type: S.Literal("IndexExpression"),
	index: _node,
	base: Identifier,
})
export type Index = { type: "IndexExpression", index: Node, base: typeof Identifier.Type }
export type IndexE = { type: "IndexExpression", index: NodeE, base: typeof Identifier.Encoded }

export const LogicalExpression = S.Struct({
	type: S.Literal("LogicalExpression"),
	left: _node,
	right: _node,
})
export type LogicalExpression = { type: "LogicalExpression", left: Node, right: Node }
export type LogicalExpressionE = { type: "LogicalExpression", left: NodeE, right: NodeE }

/** ex. this.Foo, Bar:Baz */
export const MemberExpression = S.Struct({
	type: S.Literal("MemberExpression"),
	indexer: S.Literal(".", ":"),
	base: rhs,
	identifier: Identifier,
})
export type MemberExpression = { type: "MemberExpression", indexer: "."|":", base: rhs, identifier: typeof Identifier.Type }
export type MemberExpressionE = { type: "MemberExpression", indexer: "."|":", base: rhs, identifier: typeof Identifier.Encoded }

export const UnaryExpression = S.Struct({
	type: S.Literal("UnaryExpression"),
	operator: UnaryOperator,
	argument: MemberExpression,// TODO This is probably a node of some type
})
export type UnaryExpression = { type: "UnaryExpression", operator: typeof UnaryOperator.Type, argument: MemberExpression }
export type UnaryExpressionE = { type: "UnaryExpression", operator: typeof UnaryOperator.Encoded, argument: MemberExpressionE }

export const ReturnStatement = S.Struct({
	type: S.Literal("ReturnStatement"),
	arguments: S.Array(_node),
})
export type ReturnStatement = { type: "ReturnStatement", arguments: readonly Node[] }
export type ReturnStatementE = { type: "ReturnStatement", arguments: readonly NodeE[] }

export const TableConstructorExpression = S.Struct({
	type: S.Literal("TableConstructorExpression"),
	fields: S.Array(_node),
})
export type TableConstructorExpression = { type: "TableConstructorExpression", fields: readonly Node[] }
export type TableConstructorExpressionE = { type: "TableConstructorExpression", fields: readonly NodeE[] }

export const TableValue = S.Struct({
	type: S.Literal("TableValue"),
	value: _node,
})
export type TableValue = { type: "TableValue", value: Node }
export type TableValueE = { type: "TableValue", value: NodeE }

export const TableKey = S.Struct({
	type: S.Literal("TableKey"),
	key: S.Struct({ raw: S.Literal(null) }),// TODO
	value: TableValue,
})
export type TableKey = { type: "TableKey", key: { raw: null }, value: TableValue }
export type TableKeyE = { type: "TableKey", key: { raw: null }, value: TableValueE }

export const TableKeyString = S.Struct({
	type: S.Literal("TableKeyString"),
	key: S.Struct({ name: S.String }),
	value: TableValue,
})
export type TableKeyString = { type: "TableKeyString", key: { name: string }, value: TableValue }
export type TableKeyStringE = { type: "TableKeyString", key: { name: string }, value: TableValueE }

// Tree
export const Node = S.Union(
	// Leaves
	Binary,
	BooleanLiteral,
	ForGenericStatement,
	ForNumericStatement,
	IfStatement,
	NilLiteral,
	NumericLiteral,
	StringLiteral,
	Identifier,
	// Branches
	Assignment_Global,
	Assignment_Local,
	CallStatement,
	CallExpression,
	StringCallExpression,
	FunctionDeclaration,
	Index,
	LogicalExpression,
	MemberExpression,
	UnaryExpression,
	ReturnStatement,
	TableConstructorExpression,
	TableKey,
	TableKeyString,
	TableValue,
)
export const AST = S.Array(Node)

export type Node =
	// Leaves
	| typeof Binary.Type
	| typeof BooleanLiteral.Type
	| typeof ForGenericStatement.Type
	| typeof ForNumericStatement.Type
	| typeof Identifier.Type
	| typeof IfStatement.Type
	| typeof NilLiteral.Type
	| typeof NumericLiteral.Type
	| typeof StringLiteral.Type
	// Branches
	| Assignment_Global
	| Assignment_Local
	| CallStatement
	| CallExpression
	| StringCallExpression
	| FunctionDeclaration
	| Index
	| LogicalExpression
	| MemberExpression
	| UnaryExpression
	| ReturnStatement
	| TableConstructorExpression
	| TableKey
	| TableKeyString
	| TableValue

type NodeE =
	// Leaves
	| typeof Binary.Encoded
	| typeof BooleanLiteral.Encoded
	| typeof ForGenericStatement.Encoded
	| typeof ForNumericStatement.Encoded
	| typeof Identifier.Encoded
	| typeof IfStatement.Encoded
	| typeof NilLiteral.Encoded
	| typeof NumericLiteral.Encoded
	| typeof StringLiteral.Encoded
	// Branches
	| Assignment_GlobalE
	| Assignment_LocalE
	| CallStatement
	| CallExpressionE
	| StringCallExpressionE
	| FunctionDeclarationE
	| IndexE
	| LogicalExpressionE
	| MemberExpressionE
	| UnaryExpressionE
	| ReturnStatementE
	| TableConstructorExpressionE
	| TableKeyE
	| TableKeyStringE
	| TableValueE
