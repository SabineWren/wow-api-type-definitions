import { CurryRev } from "purity-seal"
import { Option } from "purity-seal"

export type Array<A> = globalThis.ReadonlyArray<A>
export type ArrayMut<A> = globalThis.Array<A>// equivalent to A[]
export type NonEmpty<A> = readonly [A, ...A[]]
export type NonEmptyMut<A> = [A, ...A[]]

export type Infer<S extends Array<any>> =
	S extends Array<infer A> ? A : never

// -----------------------------------------------------------------------------
// Emptiness
// -----------------------------------------------------------------------------

export type AndEmpty1<
	Zs extends Array<unknown>,
	R,
> = Zs extends NonEmpty<unknown>
	? NonEmptyMut<R>
	: R[]

export type AndEmpty2<
	Ys extends  Array<unknown>,
	Zs extends Array<unknown>,
	R,
> = Zs extends NonEmptyMut<unknown>
	? (Ys extends NonEmptyMut<unknown>
		? NonEmptyMut<R>
		: R[]
	)
	: R[]

// -----------------------------------------------------------------------------
// Type Guards
// -----------------------------------------------------------------------------

// I tried using two versions of this function instead of an overload.
// That fixes type inference for point-free calls, but it doesn't
// work if the point-free call is inside a Filter or FilterMap,
// as those have their own overloads.
export function IsNonEmpty<A>(xs: A[]): xs is NonEmptyMut<A>
export function IsNonEmpty<A>(xs: Array<A>): xs is NonEmpty<A>
export function IsNonEmpty<A>(xs: Array<A>): xs is NonEmpty<A> {
	return xs.length > 0
}

// -----------------------------------------------------------------------------
// Transforms
// -----------------------------------------------------------------------------

export const Bind_ = <A extends Array<any>, B>(xs: A, f: (a: Infer<A>, i: number) => B[]): B[] =>
	xs.flatMap(f)
export const Bind: {
	<A extends Array<any>, B>(xs: A, f: (a: Infer<A>, i: number) => NonEmptyMut<B>): AndEmpty1<A, B>
	<A extends Array<any>, B>(xs: A, f: (a: Infer<A>, i: number) => B[]): B[]
	<A extends Array<any>, B>(f: (a: Infer<A>, i: number) => NonEmptyMut<B>): (xs: A) => AndEmpty1<A, B>
	<A extends Array<any>, B>(f: (a: Infer<A>, i: number) => B[]): (xs: A) => B[]
} = CurryRev(Bind_)

export const Choose_ = <A, B>(xs: Array<A>, chooser: (x: A, i: number) => Option<B>): B[] => {
	const out: B[] = []
	for (let i=0; i < xs.length; i++) {
		const y = chooser(xs[i]!, i)
		if (Option.IsSome(y)) out.push(y.value)
	}
	return out
}
export const Choose: {
	<A, B>(xs: Array<A>, chooser: (x: A, i: number) => Option<B>): B[]
	<A, B>(chooser: (x: A, i: number) => Option<B>): (xs: Array<A>) => B[]
} = CurryRev(Choose_)

export const Filter_ = <A>(xs:  Array<A>, pred: (a: A, i: number) => boolean): A[] => {
	const out: A[] = []
	for (let i=0; i < xs.length; i++) {
		const x = xs[i]!
		if (pred(x, i)) out.push(x)
	}
	return out
}
export const Filter: {
	<A, B extends A>(xs: Array<A>, refine: (a: A, i: number) => a is B): B[]
	<A, B extends A>(refine: (a: A, i: number) => a is B): (xs:  Array<A>) => B[]
	<A>(xs:  Array<A>, pred: (a: A, i: number) => boolean): A[]
	<A>(pred: (a: NoInfer<A>, i: number) => boolean): (xs:  Array<A>) => A[]
} = CurryRev(Filter_)

export const Map_ = <A extends Array<any>, B>(xs: A, f: (a: Infer<A>, i: number) => B): AndEmpty1<A, B> =>
	xs.map(f) as AndEmpty1<A, B>
export const Map: {
  <A extends Array<any>, B>(f: (a: Infer<A>, i: number) => B): (xs: A) => AndEmpty1<A, B>
  <A extends Array<any>, B>(xs: A, f: (a: Infer<A>, i: number) => B): AndEmpty1<A, B>
} = CurryRev(Map_)

export const Map2Min_ = <
	As extends Array<any>,
	Bs extends Array<any>,
	Z,
>(as: As, bs: Bs, f: (a: Infer<As>, b: Infer<Bs>, i: number) => Z): AndEmpty2<As, Bs, Z> => {
	const out: Z[] = []
	const len = Math.min(as.length, bs.length)
	for (let i=0; i < len; i++) {
		out.push(f(as[i]!, bs[i]!, i))
	}
	return out as AndEmpty2<As, Bs, Z>
}
export const Map2Min: {
	<Ys extends Array<any>, Zs extends Array<any>, R>(ys: Ys, zs: Zs, f: (y: Infer<Ys>, z: Infer<Zs>, i: number) => R): AndEmpty2<Ys, Zs, R>
	<Ys extends Array<any>, Zs extends Array<any>, R>(f: (y: Infer<Ys>, z: Infer<Zs>, i: number) => R): (ys: Ys, zs: Zs) => AndEmpty2<Ys, Zs, R>
} = CurryRev(Map2Min_)

export const Map2PadRight_ = <
	As extends Array<any>,
	Bs extends Array<any>,
	Z,
>(as: As, bs: Bs, fallback: Infer<Bs>, f: (a: Infer<As>, b: Infer<Bs>, i: number) => Z): AndEmpty1<As, Z> => {
	const out: Z[] = []
	const len = as.length
	for (let i=0; i < len; i++) {
		const b = bs[i] ?? fallback
		out.push(f(as[i]!, b, i))
	}
	return out as AndEmpty1<As, Z>
}
