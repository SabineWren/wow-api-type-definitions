---@meta

ManaBarColor = {  }
ManaBarColor[0] = { r = 0.00, g = 0.00, b = 1.00, prefix = nil }
ManaBarColor[1] = { r = 1.00, g = 0.00, b = 0.00, prefix = nil }
ManaBarColor[2] = { r = 1.00, g = 0.50, b = 0.25, prefix = nil }
ManaBarColor[3] = { r = 1.00, g = 1.00, b = 0.00, prefix = nil }
ManaBarColor[4] = { r = 0.00, g = 1.00, b = 1.00, prefix = nil }

---@param unit any (type not inferred)
---@param name any (type not inferred)
---@param portrait any (type not inferred)
---@param healthbar any (type not inferred)
---@param healthtext any (type not inferred)
---@param manabar any (type not inferred)
---@param manatext any (type not inferred)
---@return nil
function UnitFrame_Initialize(unit, name, portrait, healthbar, healthtext, manabar, manatext) end

---@return nil
function UnitFrame_Update() end

---@param event any (type not inferred)
---@return nil
function UnitFrame_OnEvent(event) end

---@return nil
function UnitFrame_OnEnter() end

---@return nil
function UnitFrame_OnLeave() end

---@param elapsed any (type not inferred)
---@return nil
function UnitFrame_OnUpdate(elapsed) end

---@param unitFrame any (type not inferred)
---@return nil
function UnitFrame_UpdateManaType(unitFrame) end

---@param unit any (type not inferred)
---@param statusbar any (type not inferred)
---@param statustext any (type not inferred)
---@return nil
function UnitFrameHealthBar_Initialize(unit, statusbar, statustext) end

---@param statusbar any (type not inferred)
---@param unit any (type not inferred)
---@return nil
function UnitFrameHealthBar_Update(statusbar, unit) end

---@param value any (type not inferred)
---@return nil
function UnitFrameHealthBar_OnValueChanged(value) end

---@param unit any (type not inferred)
---@param statusbar any (type not inferred)
---@param statustext any (type not inferred)
---@return nil
function UnitFrameManaBar_Initialize(unit, statusbar, statustext) end

---@param statusbar any (type not inferred)
---@param unit any (type not inferred)
---@return nil
function UnitFrameManaBar_Update(statusbar, unit) end

---@param unit any (type not inferred)
---@param showServerName any (type not inferred)
---@return nil
function GetUnitName(unit, showServerName) end