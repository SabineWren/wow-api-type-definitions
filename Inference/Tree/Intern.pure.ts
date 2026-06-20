import type * as Type from "./Type.type.ts"

const pool = new Map<string, Type.Unsolved>()

/** Dangerous preconditions:
 * - Create records with consistent property order.
 * - ??? Keep arrays sorted.
*/
const makeKeySingle = (a: Type.UnsolvedSingle) => JSON.stringify(a)

const makeKeyAny = (a: Type.Unsolved) =>
	a._tag === "union"
		// Sets are not valid JSON.
		// We do not store unions in a deterministic order.
		? ("union:" + [...a.Members].map(makeKeySingle).sort().join("|"))
		: makeKeySingle(a)

// Could use any JS comparable type, but we only need strings.
export const Intern = <A extends Type.Unsolved>(a: A): A => {
	const key = makeKeyAny(a)
	const value = pool.get(key) ?? a
	pool.set(key, value)
	return value as A
}
