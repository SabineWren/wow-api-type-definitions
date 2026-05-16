import { describe, it } from "node:test"
import { expect } from "expect"
import { State } from "../pure.ts"

await describe("State", async () => {
	// Constructors
	await it("Pure", () => {
		const sa = State.Pure<number, string>("hello")
		expect(State.Run(sa, 42)).toEqual(["hello", 42])
	})
	await it("Get", () => {
		const sa = State.Get<number>()
		expect(State.Run(sa, 5)).toEqual([5, 5])
	})
	await it("Put", () => {
		const sa = State.Put(7)
		expect(State.Run(sa, 0)).toEqual([undefined, 7])
	})
	await it("Modify", () => {
		const sa = State.Modify<number>(n => n * 3)
		expect(State.Run(sa, 4)).toEqual([undefined, 12])
	})

	// Transforms
	await it("Map", () => {
		const sa1 = State.Pure<string, number>(3)
		const sa2 = State.Map(sa1, a => a * 2)
		expect(State.Run(sa2, "ignore")).toEqual([6, "ignore"])
	})
	await it("Bind", () => {
		const sa1 = State.Pure<number, number>(3)
		const sa2 = State.Bind(sa1, a => s => [a * 2, s + 1])
		expect(State.Run(sa2, 0)).toEqual([6, 1])
	})
	await it("Multiple Binds", () => {
		const add_and_duplicate = (a: number): State<number, number> => State.Bind(
			State.Modify<number>(s => s + a),
			(_: void) => State.Get<number>(),
		)
		const sa1 = State.Bind(
			State.Get<number>(),
			add_and_duplicate,
		)
		const sa2 = State.Bind(
			State.Pure<number,number>(1),
			add_and_duplicate,
		)
		expect(State.Run(sa1, 3)).toEqual([6, 6])
		expect(State.Run(sa2, 3)).toEqual([4, 4])
	})

	// // Eliminators
	await it("Exec returns final state", () => {
		expect(State.Exec(State.Pure("ignore"), 42)).toBe(42)
		expect(State.Exec(State.Put(99), 0)).toBe(99)
	})
})
