---@meta

--- Returns the position of a unit on the current world map. Can return 0,0 if unknown/invalid:
--- 1. The player is inside an instance. On some servers, such as Turtle WoW post-1.17, it may still work.
--- 2. The map hasn't been updated yet; either open the map or use SetMapToCurrentZone() after entering a new zone.
--- 3. Unsupported UnitId param.
---@param unit UnitId
---@return number posX
---@return number posY
function GetPlayerMapPosition(unit) end
