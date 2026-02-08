---@meta

json = { _version = "0.1.2" }

---@param val any (type not inferred)
---@param stack any (type not inferred)
---@return nil
encode = function(val, stack) end

---@param val any (type not inferred)
---@return any x0 (type not inferred)
---@nodiscard
function json.encode(val) end


---@param str any (type not inferred)
---@param idx any (type not inferred)
---@param set any (type not inferred)
---@param negate any (type not inferred)
---@return number 0
---@nodiscard
function next_char(str, idx, set, negate) end

---@param str any (type not inferred)
---@param idx any (type not inferred)
---@param msg any (type not inferred)
---@return nil
function decode_error(str, idx, msg) end

---@param n any (type not inferred)
---@return nil
function codepoint_to_utf8(n) end

---@param s any (type not inferred)
---@return nil
function parse_unicode_escape(s) end

---@param str any (type not inferred)
---@param i any (type not inferred)
---@return nil
function parse_string(str, i) end

---@param str any (type not inferred)
---@param i any (type not inferred)
---@return any n (type not inferred)
---@return any x (type not inferred)
---@nodiscard
function parse_number(str, i) end

---@param str any (type not inferred)
---@param i any (type not inferred)
---@return any literal_map[word] (type not inferred)
---@return any x (type not inferred)
---@nodiscard
function parse_literal(str, i) end

---@param str any (type not inferred)
---@param i any (type not inferred)
---@return any res (type not inferred)
---@return any i (type not inferred)
---@nodiscard
function parse_array(str, i) end

---@param str any (type not inferred)
---@param i any (type not inferred)
---@return any res (type not inferred)
---@return any i (type not inferred)
---@nodiscard
function parse_object(str, i) end

---@param str any (type not inferred)
---@param idx any (type not inferred)
---@return nil
parse = function(str, idx) end

---@param str any (type not inferred)
---@return any res (type not inferred)
---@nodiscard
function json.decode(str) end