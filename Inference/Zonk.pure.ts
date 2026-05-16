import { Func, type FuncParam, type FuncReturn, Table, type TableField, type Tree, Unknown, Union } from "./Lua.type.ts"
import { Lookup, type MetaContext } from "./MetaContext.pure.ts"

export const Zonk = (t: Tree, ctx: MetaContext): Tree => {
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
			return Unknown
	}
	case "table":
		return Table(
			t.Fields.map((f): TableField => ({ Name: f.Name, Type: Zonk(f.Type, ctx) })),
			t.ArrayElement !== undefined ? Zonk(t.ArrayElement, ctx) : undefined,
		)
	case "function":
		return Func(
			t.Params.map((p): FuncParam => ({ Name: p.Name, Type: Zonk(p.Type, ctx) })),
			t.Returns.map((r): FuncReturn => r.Name !== undefined
				? { Type: Zonk(r.Type, ctx), Name: r.Name }
				: { Type: Zonk(r.Type, ctx) }),
			t.HasVararg,
		)
	case "union":
		return Union(...[...t.Members].map(m => Zonk(m, ctx)))
	}
}
