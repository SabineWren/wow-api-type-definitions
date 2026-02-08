import { Brand, Either, Schema } from "effect"
import { Flow, Pipe } from "purity-seal"
import * as S from "effect/Schema"

export const DecodeThrows = <I, IE>(schema: S.Schema<I, IE, never>) => (t: IE): I =>
	Pipe(t, Schema.decodeUnknownEither(schema), eitherGetOrThrow)

export const Encode = <I, IE>(schema: S.Schema<I, IE, never>): ((data: I) => IE) =>
	Flow(Schema.encodeSync(schema, { propertyOrder: "none" }))

export const Validate = <A, I, R>(schema: S.Schema<A, I, R>, a: Brand.Brand.Unbranded<A>): A =>
	Pipe(a, Schema.validateEither(schema), eitherGetOrThrow)

const eitherGetOrThrow = <R, L>(e: Either.Either<R, L>): R => {
	switch (e._tag) {
		case "Left":
			const msg = e.left! && typeof e.left === "object" && "message" in e.left
				? e.left.message as string
				: JSON.stringify(e, null, 2)
			throw new Error(msg)
		case "Right": return e.right
	}}

export {
	Any,
	Array,
	Boolean,
	brand as Brand,
	clamp as Clamp,
	declare as Declare,
	filter as Filter,
	Int,
	length as Length,
	maxItems as MaxItems,
	maxLength as MaxLength,
	minItems as MinItems,
	minLength as MinLength,
	Literal,
	lowercased as Lowercase,
	Lowercased as LowercaseString,
	Map as MutableMap,
	NullOr,
	Number,
	omit as Omit,
	Option,
	optional as Optional,
	partial as Partial,
	ReadonlyMap as Map,
	ReadonlySet as Set,
	Record,
	type Schema,
	String,
	Struct,
	suspend as Suspend,
	Union,
} from "effect/Schema"
