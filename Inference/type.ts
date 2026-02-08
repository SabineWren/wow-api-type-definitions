import { S } from "./Lib/pure.ts"

export const BinaryOperator = S.Literal("..", "<", ">", "+", "-", "*", "/")
export const UnaryOperator = S.Literal("-", "+", "++", "--")

export type BinaryOperator = typeof BinaryOperator.Type
export type UnaryOperator = typeof UnaryOperator.Type

// Leaves
export const Binary = S.Struct({
	type: S.Literal("BinaryExpression"),
	operator: BinaryOperator,
	left: S.Any,// TODO: CallExpression, StringLiteral
	right: S.Any,
})

export const Boolean_Literal = S.Struct({
	type: S.Literal("BooleanLiteral"),
	value: S.Boolean,
})

export const For_Generic = S.Struct({
	type: S.Literal("ForGenericStatement"),
})

export const For_Numeric = S.Struct({
	type: S.Literal("ForNumericStatement"),
})

export const If = S.Struct({
	type: S.Literal("IfStatement"),
})

export const Literal_Nil = S.Struct({
	type: S.Literal("NilLiteral")
})

export const Literal_Numeric = S.Struct({
	type: S.Literal("NumericLiteral"),
	/** Stringified numeric value */
	raw: S.String,
	value: S.Number,
})

export const Literal_String = S.Struct({
	type: S.Literal("StringLiteral"),
	value: S.NullOr(S.String),
	raw: S.String,
})

const Var_Identifier = S.Struct({
	type: S.Literal("Identifier"),
	name: S.String,
})

// Branches
const _node = S.Suspend((): S.Schema<Node, NodeE> => Node)

// I suspect a subset of notes can appear on the right side in assignment, etc.
// Function_Call_Expression, Member_Expression, Var_Identifier
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

export const Function_Call_Expression = S.Struct({
	type: S.Literal("CallExpression"),
	base: rhs,
	arguments: S.Array(_node),
})
type Function_Call_Expression = { type: "CallExpression", base: rhs, arguments: readonly Node[] }
type Function_Call_ExpressionE = { type: "CallExpression", base: rhsE, arguments: readonly NodeE[] }

export const Call_Statement = S.Struct({
	type: S.Literal("CallStatement"),
	expression: Function_Call_Expression,
})
export type Call_Statement = { type: "CallStatement", expression: Function_Call_Expression }
export type Call_StatementE = { type: "CallStatement", expression: Function_Call_ExpressionE }

export const Function_Call_String = S.Struct({
	type: S.Literal("StringCallExpression"),
	base: _node,
	argument: Literal_String,
})
export type Function_Call_String = { type: "StringCallExpression", base: Node, argument: typeof Literal_String.Type }
export type Function_Call_StringE = { type: "StringCallExpression", base: NodeE, argument: typeof Literal_String.Encoded }

export const Function_Declaration = S.Struct({
	type: S.Literal("FunctionDeclaration"),
	body: S.Array(_node),
	/** null if anonymous function */
	identifier: S.NullOr(Var_Identifier),
	isLocal: S.Boolean,
	parameters: S.Array(Var_Identifier),// Node[]??
})
export type Function_Declaration = { type: "FunctionDeclaration", body: readonly Node[], identifier: null | typeof Var_Identifier.Type, isLocal: boolean, parameters: readonly (typeof Var_Identifier.Type)[] }
export type Function_DeclarationE = { type: "FunctionDeclaration", body: readonly NodeE[], identifier: null | typeof Var_Identifier.Encoded, isLocal: boolean, parameters: readonly (typeof Var_Identifier.Encoded)[] }

export const Index = S.Struct({
	type: S.Literal("IndexExpression"),
	index: _node,
	base: Var_Identifier,
})
export type Index = { type: "IndexExpression", index: Node, base: typeof Var_Identifier.Type }
export type IndexE = { type: "IndexExpression", index: NodeE, base: typeof Var_Identifier.Encoded }

export const Logical_Expression = S.Struct({
	type: S.Literal("LogicalExpression"),
	left: _node,
	right: _node,
})
export type Logical_Expression = { type: "LogicalExpression", left: Node, right: Node }
export type Logical_ExpressionE = { type: "LogicalExpression", left: NodeE, right: NodeE }

/** ex. this.Foo, Bar:Baz */
export const Member_Expression = S.Struct({
	type: S.Literal("MemberExpression"),
	indexer: S.Literal(".", ":"),
	base: rhs,
	identifier: Var_Identifier,
})
export type Member_Expression = { type: "MemberExpression", indexer: "."|":", base: rhs, identifier: typeof Var_Identifier.Type }
export type Member_ExpressionE = { type: "MemberExpression", indexer: "."|":", base: rhs, identifier: typeof Var_Identifier.Encoded }

export const Unary_Expression = S.Struct({
	type: S.Literal("UnaryExpression"),
	operator: UnaryOperator,
	argument: Member_Expression,// TODO This is probably a node of some type
})
export type Unary_Expression = { type: "UnaryExpression", operator: typeof UnaryOperator.Type, argument: Member_Expression }
export type Unary_ExpressionE = { type: "UnaryExpression", operator: typeof UnaryOperator.Encoded, argument: Member_ExpressionE }

export const Return = S.Struct({
	type: S.Literal("ReturnStatement"),
	arguments: S.Array(_node),
})
export type Return = { type: "ReturnStatement", arguments: readonly Node[] }
export type ReturnE = { type: "ReturnStatement", arguments: readonly NodeE[] }

export const Table_Constructor = S.Struct({
	type: S.Literal("TableConstructorExpression"),
	fields: S.Array(_node),
})
export type Table_Constructor = { type: "TableConstructorExpression", fields: readonly Node[] }
export type Table_ConstructorE = { type: "TableConstructorExpression", fields: readonly NodeE[] }

export const Table_Value = S.Struct({
	type: S.Literal("TableValue"),
	value: _node,
})
export type Table_Value = { type: "TableValue", value: Node }
export type Table_ValueE = { type: "TableValue", value: NodeE }

export const Table_Key = S.Struct({
	type: S.Literal("TableKey"),
	key: S.Struct({ raw: S.Literal(null) }),// TODO
	value: Table_Value,
})
export type Table_Key = { type: "TableKey", key: { raw: null }, value: Table_Value }
export type Table_KeyE = { type: "TableKey", key: { raw: null }, value: Table_ValueE }

export const Table_Key_String = S.Struct({
	type: S.Literal("TableKeyString"),
	key: S.Struct({ name: S.String }),
	value: Table_Value,
})
export type Table_Key_String = { type: "TableKeyString", key: { name: string }, value: Table_Value }
export type Table_Key_StringE = { type: "TableKeyString", key: { name: string }, value: Table_ValueE }

// Tree
export const Node = S.Union(
	// Leaves
	Binary,
	Boolean_Literal,
	For_Generic,
	For_Numeric,
	If,
	Literal_Nil,
	Literal_Numeric,
	Literal_String,
	Var_Identifier,
	// Branches
	Assignment_Global,
	Assignment_Local,
	Call_Statement,
	Function_Call_Expression,
	Function_Call_String,
	Function_Declaration,
	Index,
	Logical_Expression,
	Member_Expression,
	Unary_Expression,
	Return,
	Table_Constructor,
	Table_Key,
	Table_Key_String,
	Table_Value,
)
export const AST = S.Array(Node)

export type Node =
	// Leaves
	| typeof Binary.Type
	| typeof Boolean_Literal.Type
	| typeof For_Generic.Type
	| typeof For_Numeric.Type
	| typeof If.Type
	| typeof Literal_Nil.Type
	| typeof Literal_Numeric.Type
	| typeof Literal_String.Type
	| typeof Var_Identifier.Type
	// Branches
	| Assignment_Global
	| Assignment_Local
	| Call_Statement
	| Function_Call_Expression
	| Function_Call_String
	| Function_Declaration
	| Index
	| Logical_Expression
	| Member_Expression
	| Unary_Expression
	| Return
	| Table_Constructor
	| Table_Key
	| Table_Key_String
	| Table_Value

type NodeE =
	// Leaves
	| typeof Binary.Encoded
	| typeof Boolean_Literal.Encoded
	| typeof For_Generic.Encoded
	| typeof For_Numeric.Encoded
	| typeof If.Encoded
	| typeof Literal_Nil.Encoded
	| typeof Literal_Numeric.Encoded
	| typeof Literal_String.Encoded
	| typeof Var_Identifier.Encoded
	// Branches
	| Assignment_GlobalE
	| Assignment_LocalE
	| Call_Statement
	| Function_Call_ExpressionE
	| Function_Call_StringE
	| Function_DeclarationE
	| IndexE
	| Logical_ExpressionE
	| Member_ExpressionE
	| Unary_ExpressionE
	| ReturnE
	| Table_ConstructorE
	| Table_KeyE
	| Table_Key_StringE
	| Table_ValueE
