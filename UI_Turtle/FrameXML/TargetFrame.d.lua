---@meta

MAX_COMBO_POINTS = 5
MAX_TARGET_DEBUFFS = 16
MAX_TARGET_BUFFS = 5
CURRENT_TARGETTARGET = nil ---@type nil
UnitReactionColor = { { r = 1.0, g = 0.0, b = 0.0 }, { r = 1.0, g = 0.0, b = 0.0 }, { r = 1.0, g = 0.5, b = 0.0 }, { r = 1.0, g = 1.0, b = 0.0 }, { r = 0.0, g = 1.0, b = 0.0 }, { r = 0.0, g = 1.0, b = 0.0 }, { r = 0.0, g = 1.0, b = 0.0 } }

---@param type any (type not inferred)
---@return any "" (type not inferred)
---@nodiscard
function DispelTypeToDebuffType(type) end

---@param unit any (type not inferred)
---@param index any (type not inferred)
---@param filter any (type not inferred)
---@return any customDebuffs[id].texture (type not inferred)
---@return any customDebuffs[id].stackAmount (type not inferred)
---@return any x2 (type not inferred)
---@nodiscard
UnitDebuff = function(unit, index, filter) end

---@param self any (type not inferred)
---@param unitId any (type not inferred)
---@param buffIndex any (type not inferred)
---@return nil
GameTooltip.SetUnitDebuff = function(self, unitId, buffIndex) end

---@return nil
function TargetFrame_OnLoad() end

---@return nil
function TargetFrame_Update() end

---@return nil
function ClearCustomBuffs() end

---@param event any (type not inferred)
---@return nil
function TargetFrame_OnEvent(event) end

---@param msg any (type not inferred)
---@return nil
function HandleMessage(msg) end

---@return nil
function TargetFrame_OnShow() end

---@return nil
function TargetFrame_OnHide() end

---@return nil
function TargetFrame_CheckLevel() end

---@return nil
function TargetFrame_CheckFaction() end

---@return nil
function TargetFrame_CheckClassification() end

---@return nil
function TargetFrame_CheckDead() end

---@return nil
function TargetFrame_CheckDishonorableKill() end

---@param button any (type not inferred)
---@return nil
function TargetFrame_OnClick(button) end

---@return nil
function TargetFrame_OnUpdate() end

---@return nil
function TargetDebuffButton_Update() end

---@param elapsed any (type not inferred)
---@param unit any (type not inferred)
---@return nil
function TargetFrame_HealthUpdate(elapsed, unit) end

---@param n any (type not inferred)
---@return number
---@nodiscard
function TargetFrame_FormatHealth(n) end

---@return nil
function TargetHealthCheck() end

---@return nil
function TargetFrameDropDown_OnLoad() end

---@return nil
function TargetFrameDropDown_Initialize() end
RAID_TARGET_ICON_DIMENSION = 64
RAID_TARGET_TEXTURE_DIMENSION = 256
RAID_TARGET_TEXTURE_COLUMNS = 4
RAID_TARGET_TEXTURE_ROWS = 4

---@return nil
function TargetFrame_UpdateRaidTargetIcon() end

---@param id any (type not inferred)
---@return nil
function CheckCustomDebuffs(id) end

---@param texture any (type not inferred)
---@param raidTargetIconIndex any (type not inferred)
---@return nil
function SetRaidTargetIconTexture(texture, raidTargetIconIndex) end

---@param unit any (type not inferred)
---@param index any (type not inferred)
---@return nil
function SetRaidTargetIcon(unit, index) end

---@param elapsed any (type not inferred)
---@return nil
function TargetofTarget_OnUpdate(elapsed) end

---@return nil
function TargetofTarget_Update() end

---@param button any (type not inferred)
---@return nil
function TargetofTarget_OnClick(button) end

---@return nil
function TargetofTarget_CheckDead() end

---@return nil
function TargetofTargetHealthCheck() end