export type BinaryOperator = ".." | "<" | ">" | "+" | "-" | "*" | "/"

export type _assignment = { init: readonly Node[]; variables: readonly Var_Identifier[] }
export type Assignment_Global = { type: "AssignmentStatement" } & _assignment
export type Assignment_Local = { type: "LocalStatement" } & _assignment
export type Binary = { type: "BinaryExpression"; operator: BinaryOperator }
export type Boolean_Literal = { type: "BooleanLiteral"; value: boolean }
export type Call_Statement = { type: "CallStatement" }
export type For_Generic = { type: "ForGenericStatement" }
export type For_Numeric = { type: "ForNumericStatement" }
export type Function_Call_Expression = { type: "CallExpression"; base: Var_Identifier; arguments: readonly Node[] }
export type Function_Call_String = { type: "StringCallExpression"; base: Node; argument: Literal_String }
export type Function_Declaration = {
	type: "FunctionDeclaration"
	body: readonly Node[]
	identifier: null | Var_Identifier// null if anonymous function
	isLocal: boolean
	parameters: readonly Var_Identifier[]// Node[]??
}
export type If = { type: "IfStatement" }
export type Index = { type: "IndexExpression"; index: Node; base: Var_Identifier }
export type Literal_Nil = { type: "NilLiteral" }
export type Literal_Numeric = { type: "NumericLiteral"; raw: number }
export type Literal_String = { type: "StringLiteral"; value: any; raw: string }
export type Logical_Expression = { type: "LogicalExpression"; left: Node; right: Node }
export type Member_Expression = { type: "MemberExpression"; base: Var_Identifier; identifier: Var_Identifier }
export type Return = { type: "ReturnStatement"; arguments: readonly Node[] }
export type Table_Constructor = { type: "TableConstructorExpression"; fields: readonly Node[] }
export type Table_Key = { type: "TableKey"; key: { raw: unknown }; value: Table_Value }
export type Table_Key_String = { type: "TableKeyString"; key: { name: string }; value: Table_Value }
export type Table_Value = { type: "TableValue"; value: Node }
export type Unary_Expression = { type: "UnaryExpression"; operator: string; argument: { raw: string } }
export type Var_Identifier = { type: "Identifier"; name: string }

export type Node =
	| Assignment_Global
	| Assignment_Local
	| Binary
	| Boolean_Literal
	| Call_Statement
	| For_Generic
	| For_Numeric
	| Function_Call_Expression
	| Function_Call_String
	| Function_Declaration
	| If
	| Index
	| Literal_Nil
	| Literal_Numeric
	| Literal_String
	| Logical_Expression
	| Member_Expression
	| Return
	| Table_Constructor
	| Table_Key
	| Table_Key_String
	| Table_Value
	| Unary_Expression
	| Var_Identifier
	| { type: "__unhandled" }// + many other node types
