// @ts-expect-error
import * as Parser from "luaparse"
import { Pipe } from "purity-seal"
import { Result, S } from "./Lib/pure.ts"
import * as N from "./type.ts"

export const ParseAst = (source: string): Result<typeof N.AST.Type, { raw: string; reason: string }> => {
	const raw = Pipe(
		// LuaParse crashes on semicolon after break.
		source.replaceAll("break;\n", "break\n"),
		text => Parser.parse(text, { luaVersion: "5.1" }).body,
	)
	return Pipe(
		S.Decode(N.AST)(raw),
		Result.MapError(e => ({
			raw: JSON.stringify(raw, null, "\t"),
			reason: e,
		})),
	)
}
