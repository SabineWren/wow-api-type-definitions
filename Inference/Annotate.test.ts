import { describe, it } from "node:test"
import { expect } from "expect"
import { readdirSync, readFileSync } from "node:fs"
import { Pipe, Result } from "purity-seal"

import { AnnotateFile } from "./Annotate.pure.ts"
import { ParseAst } from "./AST.nodejs.ts"

const fixturesDir = new URL("./Fixtures/", import.meta.url)

await describe("v2 Fixtures", async () => {
	const luaFiles = readdirSync(fixturesDir)
		.filter(f => f.endsWith(".lua") && !f.endsWith(".d.lua"))
		.sort()

	for (const luaFile of luaFiles) {
		const name = luaFile.replace(/\.lua$/, "")
		const expectedFile = name + ".d.lua"

		await it(name, () => {
			const input = readFileSync(new URL(luaFile, fixturesDir), "utf-8")
			const exp = readFileSync(new URL(expectedFile, fixturesDir), "utf-8")
			const out = Pipe(
				ParseAst(input),
				Result.GetOrThrow,
				AnnotateFile,
			)
			expect(out).toEqual(exp)
		})
	}
})
