function F() end
function G() return 42 end
function H(a, b) return a end

function I(x)
	local y = x + 1
	return y
end

function J(x)
	return x .. 1
end

function K(x)
	local y = x + 1
	return x .. 1
end

function L(x)
	local y = x .. 1
	return x + 1
end
