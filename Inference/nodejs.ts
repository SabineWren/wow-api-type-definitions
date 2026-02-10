import { existsSync, promises as Fs } from "node:fs"
import path from "node:path"
import { Pipe, Result } from "purity-seal"
import { ParseAst } from "./Ast.nodejs.ts"
import { AnnotateFile } from "./pure.ts"
import * as Turtle from "./FilesTurtle.type.ts"
import * as Vanilla from "./FilesVanilla.type.ts"

const readFileContents = async (fp: string): Promise<string> => {
	const file = await Fs.open(fp)
	const lines = []
	for await (const line of file.readLines()) {
		lines.push(line)
	}
	await file.close()
	return lines.join("\n")
}

const annotateDirectory = async (source: string, out: string, filenames: readonly string[]) => {
	const dist = path.resolve(out)
	if (!existsSync(dist)) await Fs.mkdir(dist)

	for (const name of filenames) {
		const fpSource = path.resolve(source + "/" + name + ".lua")
		const fpDefs = path.resolve(dist + "/" + name + ".d.lua")
		const fpAST = path.resolve(dist + "/" + name + ".json")

		const ast = ParseAst(await readFileContents(fpSource))

		if (Result.IsError(ast)) {
			const outFile = await Fs.open(fpAST, "w")
			await outFile.write(ast.error.raw, 0)
			await outFile.close()
			console.error(ast.error.reason)
			console.error("Error -- AST dumped", fpAST)
		} else {
			const annotations = AnnotateFile(ast.value)
			if (annotations.length > 0) {
				const outFile = await Fs.open(fpDefs, "w")
				await outFile.write("---@meta\n\n" + annotations, 0)
				await outFile.close()
			} else {
				console.warn("Empty defs", fpSource)
			}
		}
	}
}

await annotateDirectory(Vanilla.Source, Vanilla.Out, Vanilla.Files)
// for (const [dir, files] of Object.entries(Turtle.Files)) {
// 	const source = path.resolve(Turtle.Source + "/" + dir)
// 	const out = path.resolve(Turtle.Out + "/" + dir)
// 	await annotateDirectory(source, out, files)
// }
