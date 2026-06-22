3 stages of tree:
1. Lua AST
2. Types Unsolved (contains metavariables)
3. Types Solved (Zonked)

```fs
// Pseudocode
LuaSourceFiles// string[][]
|> Array.Map(ParseOrThrow)// AST[]
|> Infer// Unsolved[] & Constraint State
|> Solve// Solved[]
|> Array.Filter(HasExports)
|> Array.Map(AnnotateFile)// string[][]
```

Only expressions may appear on the RHS of assignment.
| Expression  | Example |
| ------------- | ------------- |
| CallExpression | lhs = f() |
| StringCallExpression | lhs = f"x" |
| BooleanLiteral | lhs = true |
| NumericLiteral | lhs = 123 |
| NilLiteral  | lhs = nil  |
| StringLiteral | lhs = "x" |
| VarargLiteral | lhs = ... |
| BinaryExpression | lhs = x + y |
| FunctionDeclaration | lhs = function() end |
| Identifier | lhs = b |
| IndexExpression | lhs = t[i] |
| LogicalExpression | lhs = x and y |
| MemberExpression | lhs = t.x |
| TableConstructorExpression | lhs = {} |
| UnaryExpression | lhs = -x |

Array tables indicated by one or more TableValue nodes.
| Table Field | Example |
| ------------- | ------------- |
| TableKey | { a = 1, b = 2 } |
| TableKeyValue | { [a] = 5, [foo()] = 6 } |
| TableValue | { foo(), x } |
