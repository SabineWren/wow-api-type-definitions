import { CurryRev } from "purity-seal"

export type Ok<A, E=never> = { readonly _tag: "Ok"; readonly value: A }
export type Error<A=never, E=unknown> = { readonly _tag: "Error"; readonly error: E  }
export type Result<A, E> = Ok<A, E> | Error<A, E>

// -----------------------------------------------------------------------------
// Constructors
// -----------------------------------------------------------------------------

/** Lifts a value to a Result of type `Ok` */
export const Ok = <A, E = never>(value: A): Result<A, E> => ({
	_tag: "Ok",
	value: value,
})

/**  Lifts a value to a Result of type `Error` */
export const Error = <E, A = never>(reason: E): Result<A, E> => ({
	_tag: "Error",
	error: reason,
})

// -----------------------------------------------------------------------------
// Predicates
// -----------------------------------------------------------------------------

/** Returns `true` if it is an `Ok` */
export const IsOk = <A, E>(res: Result<A, E>): res is Ok<A, E> =>
	res._tag === "Ok"

/** Returns `true` if it is an `Error` */
export const IsError = <A, E>(res: Result<A, E>): res is Error<A, E> =>
	res._tag === "Error"

// -----------------------------------------------------------------------------
// Transforms
// -----------------------------------------------------------------------------

export const Map_ = <A, E, B>(res: Result<A, E>, f: (a: A) => B): Result<B, E> =>
	IsOk(res) ? Ok(f(res.value)) : res
/** Applies some function to modify the `Ok` case */
export const Map: {
	<A, E, B>(res: Result<A, E>, f: (a: A) => B): Result<B, E>
	<A, B>(f: (a: A) => B): <E>(res: Result<A, E>) => Result<B, E>
} = CurryRev(Map_)

export const MapError_ = <A, E, F>(res: Result<A, E>, f: (e: E) => F): Result<A, F> =>
	IsOk(res) ? res : Error(f(res.error))
/** Applies some function to modify the `Error` case */
export const MapError: {
	<A, E, F>(res: Result<A, E>, f: (e: E) => F): Result<A, F>
	<E, F>(f: (e: E) => F): <A>(res: Result<A, E>) => Result<A, F>
} = CurryRev(MapError_)

// -----------------------------------------------------------------------------
// Eliminators
// -----------------------------------------------------------------------------

export const GetOrThrow = <A, E>(res: Result<A, E>): A => {
	if (IsOk(res))
		return res.value
	else
		throw new globalThis.Error(JSON.stringify(res.error))
}
