-- Identifier: f()
-- MemberExpression: obj.method()
-- IndexExpression: obj["method"]()
-- CallExpression: factory()() or IIFE
-- StringCallExpression: f"hello"()

Fn_Call_IIFE = (function(a) return a + 1 end)(1)
