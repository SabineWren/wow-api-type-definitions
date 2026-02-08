import { describe, it } from "node:test"
import { expect } from "expect"

await describe("Stubbed tests", async () => {
	await it("Stub to ensure tests run", () => {
		expect(2).toEqual(2)
	})
})
