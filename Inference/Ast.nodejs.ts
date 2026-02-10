// @ts-expect-error
import * as Parser from "luaparse"
import { Pipe, Result } from "purity-seal"
import { S } from "./Lib/pure.ts"
import * as N from "./type.ts"

export const ParseAst = (source: string): Result<typeof N.AST.Type, { raw: string; reason: string }> => {
	const raw: typeof N.AST.Encoded = Pipe(
		// LuaParse crashes on semicolon after break.
		source.replaceAll("break;\n", "break\n"),
		text => Parser.parse(text, { luaVersion: "5.1" }).body,
	)
	const ast = S.Decode(N.AST)(raw)
	return Result.IsError(ast)// TODO Result.MapError
		? Result.Error({
			raw: JSON.stringify(raw, null, "\t"),
			reason: ast.error,
		})
		: ast
}
