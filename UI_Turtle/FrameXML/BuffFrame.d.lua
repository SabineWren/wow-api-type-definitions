---@meta

BUFF_FLASH_TIME_ON = 0.75
BUFF_FLASH_TIME_OFF = 0.75
BUFF_MIN_ALPHA = 0.3
BUFF_WARNING_TIME = 31
BUFF_DURATION_WARNING_TIME = 60
DEBUFF_MAX_DISPLAY = 7
DebuffTypeColor = {  }
DebuffTypeColor["none"] = { r = 0.80, g = 0, b = 0 }
DebuffTypeColor["Magic"] = { r = 0.20, g = 0.60, b = 1.00 }
DebuffTypeColor["Curse"] = { r = 0.60, g = 0.00, b = 1.00 }
DebuffTypeColor["Disease"] = { r = 0.60, g = 0.40, b = 0 }
DebuffTypeColor["Poison"] = { r = 0.00, g = 0.60, b = 0 }

---@return nil
function BuffFrame_OnLoad() end

---@param elapsed any (type not inferred)
---@return nil
function BuffFrame_OnUpdate(elapsed) end

---@return nil
function BuffButton_Update() end

---@return nil
function BuffButton_OnLoad() end

---@param event any (type not inferred)
---@return nil
function BuffButton_OnEvent(event) end

---@return nil
function BuffButton_OnUpdate() end

---@return nil
function BuffButton_OnClick() end

---@return nil
function BuffButtons_UpdatePositions() end

---@param elapsed any (type not inferred)
---@return nil
function BuffFrame_Enchant_OnUpdate(elapsed) end

---@return nil
function BuffFrame_EnchantButton_OnUpdate() end

---@return nil
function BuffFrame_EnchantButton_OnEnter() end

---@param buffButton any (type not inferred)
---@param timeLeft any (type not inferred)
---@return nil
function BuffFrame_UpdateDuration(buffButton, timeLeft) end

---@param button any (type not inferred)
---@param showBuffs any (type not inferred)
---@param unit any (type not inferred)
---@return nil
function RefreshBuffs(button, showBuffs, unit) end