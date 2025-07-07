---@meta

GenderTagInfo = { "_NONE", nil, "_FEMALE", "_MPLURAL", "_FPLURAL", "_MIXED" }
MAX_GENDER_INDICES = 6
MAX_PLURAL_INDICES = 4

---@param token any (type not inferred)
---@param gender any (type not inferred)
---@param ordinal any (type not inferred)
---@return any string (type not inferred)
---@nodiscard
function GetText(token, gender, ordinal) end

---@param ordinal any (type not inferred)
---@return nil
function GetPluralIndex(ordinal) end

---@param ordinal any (type not inferred)
---@return string ""
---@nodiscard
function GetPluralTag(ordinal) end

---@param gender any (type not inferred)
---@return any GenderTagInfo[gender] (type not inferred)
---@nodiscard
function GetGenderTag(gender) end