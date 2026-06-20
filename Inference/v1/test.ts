import { describe, it } from "node:test"
import { expect } from "expect"
import { Result } from "purity-seal"
import * as AST from "../Tree/AST.nodejs.ts"

import { AnnotateFile } from "./pure.ts"

await describe("Assignment", async () => {
	await it("Ignore locals", () => {
		expect("").toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("local x"))))
		expect("").toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("local x;"))))
		expect("").toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("local x = nil;"))))
		expect("").toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("local x = 1;"))))
		expect("").toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("local x, y = 1, 2;"))))
		expect("").toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("local x = 1;"))))
	})

	await it("Variable declaration nil", () => {
		const src = "x = nil;"
		const exp = "x = nil---@type nil"
		const out = AnnotateFile(Result.GetOrThrow(AST.Parse(src)))
		expect(out).toEqual(exp)
	})

	await it("Variable declaration nil x 2", () => {
		const exp = [
			"x = nil---@type nil",
			"y = nil---@type nil",
		].join("\n")
		expect(exp).toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("x, y = nil;"))))
		expect(exp).toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("x, y = nil, nil;"))))
		expect(exp).toEqual(AnnotateFile(Result.GetOrThrow(AST.Parse("x, y = nil, nil, 1;"))))
	})
})
