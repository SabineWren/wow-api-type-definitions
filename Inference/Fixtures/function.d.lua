---@meta

---@return nil
function F() end

---@return number
---@nodiscard
function G() end

---@generic A, B
---@param a A
---@param b B
---@return A x
---@nodiscard
function H(a, b) end

---@param x number
---@return number y
---@nodiscard
function I(x) end

---@param x string | number
---@return string
---@nodiscard
function J(x) end

---@param x number
---@return string
---@nodiscard
function K(x) end

---@param x number
---@return number
---@nodiscard
function L(x) end
