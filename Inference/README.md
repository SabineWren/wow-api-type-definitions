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
