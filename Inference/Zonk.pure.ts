import * as Type from "./Tree/Type.type.ts"
import { Lookup, type MetaContext } from "./MetaContext.pure.ts"

export const Zonk = (t: Type.Unsolved, ctx: MetaContext): Type.Solved => {
	switch (t._tag) {
	case "boolean":
	case "class":
	case "literal":
	case "nil":
	case "number":
	case "string":
	case "unknown":
	case "function-any":
		return t
	case "meta": {
		const [entry, _s] = Lookup(t.Id)(ctx)
		if (entry.Solved)
			return Zonk(entry.Type, ctx)
		else
			return Type.Unknown
	}
	case "table":
		return Type.Table(
			t.Fields.map((f): Type.TableField<never> => ({ Name: f.Name, Type: Zonk(f.Type, ctx) })),
			t.ArrayElement !== undefined ? Zonk(t.ArrayElement, ctx) : undefined,
		)
	case "function":
		return Type.MkFunc(
			t.Params.map((p): Type.FuncParam<never> => ({ Name: p.Name, Type: Zonk(p.Type, ctx) })),
			t.Returns.map((r): Type.FuncReturn<never> => r.Name !== undefined
				? { Type: Zonk(r.Type, ctx), Name: r.Name }
				: { Type: Zonk(r.Type, ctx) }),
			t.HasVararg,
		)
	case "union":
		return Type.MkUnion(...t.Members.values().map(m => Zonk(m, ctx)))
	}
}
