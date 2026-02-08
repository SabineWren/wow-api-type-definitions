---@meta

GAMETIME_DAWN = 0 ---@type number
GAMETIME_DUSK = 0 ---@type number

---@return nil
function GameTimeFrame_Update() end

---@param hours any (type not inferred)
---@param minutes any (type not inferred)
---@return nil
function GameTimeFrame_UpdateTooltip(hours, minutes) end

---@return nil
function GameTime_GetTime() end

---@param hours any (type not inferred)
---@param minutes any (type not inferred)
---@return nil
function GameTimeAMPM(hours, minutes) end