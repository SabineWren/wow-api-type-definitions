export type State<S, A> = (s: S) => [A, S]

// -----------------------------------------------------------------------------
// Constructors
// -----------------------------------------------------------------------------

/** @alias Of, Return */
export const Pure = <S, A>(a: A): State<S, A> => s => [a, s]

const duplicate_ = <S>(s: S): [S, S] => [s, s]
export const Get = <S>(): State<S, S> => duplicate_

export const Put = <S>(s: S): State<S, void> => _ => [undefined, s]

export const Modify = <S>(f: (s: S) => S): State<S, void> => s => [undefined, f(s)]

// -----------------------------------------------------------------------------
// Transforms
// -----------------------------------------------------------------------------

export const Map = <S, A, B>(sa: State<S, A>, f: (a: A) => B): State<S, B> => s => {
	const [a, s1] = sa(s)
	return [f(a), s1]
}

export const Bind = <S, A, B>(sa: State<S, A>, f: (a: A) => State<S, B>): State<S, B> => s => {
	const [a, s1] = sa(s)
	return f(a)(s1)
}

// -----------------------------------------------------------------------------
// Eliminators
// -----------------------------------------------------------------------------

/** Executes a state computation against an initial state */
export const Run = <S, A>(sa: State<S, A>, s: S): [A, S] => sa(s)

/** `Run >> Pair.Snd` */
export const Exec = <S, A>(sa: State<S, A>, s: S): S => sa(s)[1]
