import { Array, S } from "./Lib/pure.ts"

export const BinaryOperator = S.Literal(
	"..",
	"<", "<=", "==", "~=", ">=", ">",
	"+", "-", "*", "/",
)
export const UnaryOperator = S.Literal("not", "-", "+", "++", "--")

export type BinaryOperator = typeof BinaryOperator.Type
export type UnaryOperator = typeof UnaryOperator.Type

// ************ Simple ************
export const BreakStatement = S.Struct({
	type: S.Literal("BreakStatement"),
})

// ************ Literals ************
export const BooleanLiteral = S.Struct({
	type: S.Literal("BooleanLiteral"),
	value: S.Boolean,
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

export const VarargLiteral = S.Struct({
	type: S.Literal("VarargLiteral"),
	value: S.Literal("..."),
	raw: S.Literal("..."),
})

const literal = S.Union(BooleanLiteral, NilLiteral, NumericLiteral, StringLiteral, VarargLiteral)
type literal = typeof literal.Type
type literalE = typeof literal.Encoded

// ************ Leaves ************
export const Binary = S.Struct({
	type: S.Literal("BinaryExpression"),
	operator: BinaryOperator,
	left: S.Any,// Probably: any rhs, Confirmed: CallExpression, StringLiteral
	right: S.Any,
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

// ************ Branches ************

const _node = S.Suspend((): S.Schema<Node, NodeE> => Node)
// I suspect a subset of nodes can appear on the right side in assignment, etc.
// Confirmed: CallExpression, MemberExpression, Identifier, literal, TableConstructorExpression, TableValue
const rhs = _node
type rhs = Node
type rhsE = NodeE

// ************ Clauses ************
const IfClause = S.Struct({
	type: S.Literal("IfClause"),
	condition: rhs,
	body: S.Array(_node),
})
// type IfClause = { type: "IfClause", condition: rhs, body: Array<Node> }
// type IfClauseE = { type: "IfClause", condition: rhsE, body: Array<NodeE> }

const ElseifClause = S.Struct({
	type: S.Literal("ElseifClause"),
	condition: rhs,
	body: S.Array(_node),
})

const ElseClause = S.Struct({
	type: S.Literal("ElseClause"),
	body: S.Array(_node),
})

const clauses = S.Union(IfClause, ElseifClause, ElseClause)

// ************ Not clauses ************

const _assignment = S.Struct({
	init: S.Array(_node),
	variables: S.NonEmptyArray(rhs),
})
type _assignment = { init: Array.Array<Node>, variables: Array.NonEmpty<rhs> }
type _assignmentE = { init: Array.Array<NodeE>, variables: Array.NonEmpty<rhsE> }

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
type CallExpression = { type: "CallExpression", base: rhs, arguments: Array<Node> }
type CallExpressionE = { type: "CallExpression", base: rhsE, arguments: Array<NodeE> }

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
	parameters: S.Array(S.Union(Identifier, VarargLiteral)),// Node[]??
})
export type FunctionDeclaration = { type: "FunctionDeclaration", body: Array<Node>, identifier: null | typeof Identifier.Type, isLocal: boolean, parameters: Array<typeof Identifier.Type | typeof VarargLiteral.Type> }
export type FunctionDeclarationE = { type: "FunctionDeclaration", body: Array<NodeE>, identifier: null | typeof Identifier.Encoded, isLocal: boolean, parameters: Array<typeof Identifier.Encoded | typeof VarargLiteral.Encoded> }

export const IfStatement = S.Struct({
	type: S.Literal("IfStatement"),
	clauses: S.Array(clauses),
})
export type IfStatement = { type:"IfStatement", clauses: Array<typeof clauses.Type> }
export type IfStatementE = { type:"IfStatement", clauses: Array<typeof clauses.Encoded> }

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
export type MemberExpressionE = { type: "MemberExpression", indexer: "."|":", base: rhsE, identifier: typeof Identifier.Encoded }

export const IndexExpression = S.Struct({
	type: S.Literal("IndexExpression"),
	base: rhs,// Seen: Identifier, IndexExpression, MemberExpression
	index: _node,
})
export type IndexExpression = { type: "IndexExpression", index: Node, base: rhs }
export type IndexExpressionE = { type: "IndexExpression", index: NodeE, base: rhsE }

const RepeatStatement = S.Struct({
	type: S.Literal("RepeatStatement"),
	condition: rhs,
	body: S.Array(_node),
})
export type RepeatStatement = { type: "RepeatStatement", condition: rhs, body: Array<Node> }
export type RepeatStatementE = { type: "RepeatStatement", condition: rhsE, body: Array<NodeE> }

export const WhileStatement = S.Struct({
	type: S.Literal("WhileStatement"),
	condition: rhs,
	body: S.Array(_node),
})
export type WhileStatement = { type: "WhileStatement", condition: rhs, body: Array<Node> }
export type WhileStatementE = { type: "WhileStatement", condition: rhsE, body: Array<NodeE> }

export const UnaryExpression = S.Struct({
	type: S.Literal("UnaryExpression"),
	operator: UnaryOperator,
	argument: rhs,
})
export type UnaryExpression = { type: "UnaryExpression", operator: typeof UnaryOperator.Type, argument: rhs }
export type UnaryExpressionE = { type: "UnaryExpression", operator: typeof UnaryOperator.Encoded, argument: rhsE }

export const ReturnStatement = S.Struct({
	type: S.Literal("ReturnStatement"),
	arguments: S.Array(_node),
})
export type ReturnStatement = { type: "ReturnStatement", arguments: Array<Node> }
export type ReturnStatementE = { type: "ReturnStatement", arguments: Array<NodeE> }

export const TableConstructorExpression = S.Struct({
	type: S.Literal("TableConstructorExpression"),
	fields: S.Array(_node),
})
export type TableConstructorExpression = { type: "TableConstructorExpression", fields: Array<Node> }
export type TableConstructorExpressionE = { type: "TableConstructorExpression", fields: Array<NodeE> }

export const TableValue = S.Struct({
	type: S.Literal("TableValue"),
	value: _node,
})
export type TableValue = { type: "TableValue", value: Node }
export type TableValueE = { type: "TableValue", value: NodeE }

export const TableKey = S.Struct({
	type: S.Literal("TableKey"),
	key: S.Union(literal, UnaryExpression),
	value: S.Union(TableConstructorExpression, TableValue),
})
export type TableKey = { type: "TableKey", key: literal | UnaryExpression, value: TableConstructorExpression | TableValue }
export type TableKeyE = { type: "TableKey", key: literalE | UnaryExpressionE, value: TableConstructorExpressionE | TableValueE }

export const TableKeyString = S.Struct({
	type: S.Literal("TableKeyString"),
	key: Identifier,
	value: rhs,
})
export type TableKeyString = { type: "TableKeyString", key: typeof Identifier.Type, value: rhs }
export type TableKeyStringE = { type: "TableKeyString", key: typeof Identifier.Encoded, value: rhsE }

// ************ Tree ************
export const Node = S.Union(
	// Leaves
	Binary,
	BooleanLiteral,
	BreakStatement,
	ForGenericStatement,
	ForNumericStatement,
	NilLiteral,
	NumericLiteral,
	StringLiteral,
	Identifier,
	VarargLiteral,
	// Branches
	Assignment_Global,
	Assignment_Local,
	CallStatement,
	CallExpression,
	StringCallExpression,
	FunctionDeclaration,
	IfStatement,
	IndexExpression,
	LogicalExpression,
	MemberExpression,
	RepeatStatement,
	WhileStatement,
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
	| typeof BreakStatement.Type
	| typeof ForGenericStatement.Type
	| typeof ForNumericStatement.Type
	| typeof Identifier.Type
	| typeof NilLiteral.Type
	| typeof NumericLiteral.Type
	| typeof StringLiteral.Type
	| typeof VarargLiteral.Type
	// Branches
	| Assignment_Global
	| Assignment_Local
	| CallStatement
	| CallExpression
	| StringCallExpression
	| FunctionDeclaration
	| IfStatement
	| IndexExpression
	| LogicalExpression
	| MemberExpression
	| RepeatStatement
	| WhileStatement
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
	| typeof BreakStatement.Encoded
	| typeof ForGenericStatement.Encoded
	| typeof ForNumericStatement.Encoded
	| typeof Identifier.Encoded
	| typeof NilLiteral.Encoded
	| typeof NumericLiteral.Encoded
	| typeof StringLiteral.Encoded
	| typeof VarargLiteral.Encoded
	// Branches
	| Assignment_GlobalE
	| Assignment_LocalE
	| CallStatement
	| CallExpressionE
	| StringCallExpressionE
	| FunctionDeclarationE
	| IfStatementE
	| IndexExpressionE
	| LogicalExpressionE
	| MemberExpressionE
	| RepeatStatementE
	| WhileStatementE
	| UnaryExpressionE
	| ReturnStatementE
	| TableConstructorExpressionE
	| TableKeyE
	| TableKeyStringE
	| TableValueE
