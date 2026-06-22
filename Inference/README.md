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

| Lua RHS AST Node  | Example |
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
