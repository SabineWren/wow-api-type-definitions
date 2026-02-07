---@meta

--- 3rd party library bundled with WoW
--- @link https://github.com/LuaDist/bitlib
bit = {}

--- Returns the one's complement of `a`.
---@param a number
---@return number
---@nodiscard
function bit.bnot(a) end

--- Returns the bitwise AND of the arguments.
---@param a number
---@param ... number
---@return number
---@nodiscard
function bit.band(a, ...) end

--- Returns the bitwise OR of the arguments.
---@param a number
---@param ... number
---@return number
---@nodiscard
function bit.bor(a, ...) end

--- Returns the bitwise exclusive OR of the arguments.
---@param a number
---@param ... number
---@return number
---@nodiscard
function bit.bxor(a, ...) end

--- Returns `a` shifted left `b` places.
---@param a number
---@param b number
---@return number
---@nodiscard
function bit.lshift(a, b) end

--- Returns `a` shifted logically right `b` places.
---@param a number
---@param b number
---@return number
---@nodiscard
function bit.rshift(a, b) end

--- Returns `a` shifted arithmetically right `b` places.
---@param a number
---@param b number
---@return number
---@nodiscard
function bit.arshift(a, b) end

--- Returns the integer remainder of `a` divided by `b`.
---@param a number
---@param b number
---@return number
---@nodiscard
function bit.mod(a, b) end
