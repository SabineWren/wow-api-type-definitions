-- Identifier: f()
-- MemberExpression: obj.method()
-- IndexExpression: obj["method"]()
-- CallExpression: factory()() or IIFE
-- StringCallExpression: f"hello"

local fooStrUnion = function(a) return "$"..a end
local id = function(a) return a end

Fn_Call_Str_From_Num = fooStrUnion(1)-- "$1"

Fn_Call_Str_From_Str = fooStrUnion("1")-- "$1"

-- TODO
-- Fn_Call_Str_From_StrCallExpr = fooStrUnion "1"-- "$1"

Fn_Call_Num_From_Id = id(1)

-- TODO - Id over-solves on first use. Investigate Hindley-Milner.
-- Fn_Call_Str_From_Id = id("1")

Fn_Call_Num_IIFE_Id = (function(a) return a end)(1)
