import { existsSync, promises as Fs } from "node:fs"
import path from "node:path"
import { fileURLToPath } from "node:url"
import { Pipe, Result } from "purity-seal"
import * as AST from "./AST.nodejs.ts"
import * as Vanilla from "../FilesVanilla.type.ts"

const srcDir = path.dirname(fileURLToPath(import.meta.url))
const fixtureDir = path.resolve(srcDir + "/../vanilla")

const readFileContents = async (fp: string): Promise<string> => {
	const file = await Fs.open(fp)
	const lines = []
	for await (const line of file.readLines()) {
		lines.push(line)
	}
	await file.close()
	return lines.join("\n")
}

type error = {
	AST: string
	Filename: string
	Reason: string
	Contents: string
}
const errors: error[] = []
const dump = async (name: string, ext: string, contents: string) => {
	const filename = srcDir + "/" + "Dump." + name + ext
	if (existsSync(filename)) throw new Error("Would overwrite file " + filename)
	const file = await Fs.open(filename, "w")
	await file.write(contents, 0)
	await file.close()
}

const annotateDirectory = async (source: string, filenames: readonly string[]) => {
	for (const name of filenames) {
		const contents = await readFileContents(path.resolve(source + "/" + name + ".lua"))
		const ast = AST.Parse(contents)
		if (Result.IsError(ast)) {
			void errors.push({
				AST: ast.error.raw,
				Filename: name,
				Reason: ast.error.reason,
				Contents: contents,
			})
		}
	}

	if (errors.length > 0) {
		const shortest = Math.min(...errors.map(x => x.Contents.length))
		const e = errors.find(x => x.Contents.length === shortest)!
		await dump(e.Filename, ".ast.json", e.AST)
		await dump(e.Filename, ".err.txt", e.Reason)
		await dump(e.Filename, ".lua", e.Contents)
		console.log(`${errors.length} errors, see shortest dump`)
	} else {
		console.error(`AST parsed successfully ${filenames.length} times`)
	}
}

await annotateDirectory(fixtureDir, Vanilla.Files)
