import { describe, it } from "node:test"
import { expect } from "expect"
import { existsSync, readdirSync, readFileSync } from "node:fs"
import { Array, Flow, Option, Pipe, Result } from "purity-seal"

import { AnnotateFiles } from "./Annotate.pure.ts"
import * as AST from "./Tree/AST.nodejs.ts"

const fixturesDir = new URL("./Fixtures/", import.meta.url)
const toFilepath = (filename: string) => new URL(filename, fixturesDir)
const read = (filename: string) => readFileSync(toFilepath(filename), "utf-8")

const stripComments = (source: string): string => source
	.split("\n")
	.filter(line => !(line.startsWith("-- ") || line === "--"))
	.join("\n")

const zip2 = <A, B>(as: Array<A>, bs: Array<B>): [A, B][] =>
	as.map((a, i) => [a, bs[i]!])

void describe("Fixture file pairs", async () => {
	const inpNames = readdirSync(fixturesDir)
		.filter(x => x.endsWith(".lua") && !x.endsWith(".d.lua"))
		.sort()
	const expNames = inpNames
		.map(x => x.replace(/\.lua$/, ".d.lua"))

	const keys = inpNames.map(x => x.replace(/\.lua$/, ""))
	const outs = Pipe(
		inpNames.map(Flow(read, AST.Parse, Result.GetOrThrow)),
		AnnotateFiles,
		xs => new Map(zip2(keys, xs)),
	)
	// TODO - Create Dict module with Dict.FilterMap
	const exps = Pipe(
		zip2(keys, expNames),
		xs => xs.filter(([k, n]) => existsSync(toFilepath(n))),
		xs => xs.map(([k, n]) => [k, stripComments(read(n))] as const),
		xs => new Map(xs),
	)

	for await (const [key, output] of outs.entries()) {
		await it(key, () => {
			expect(output).toEqual(Option.OfNullable(exps.get(key)))
		})
	}
})
