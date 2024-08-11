---@meta

--- Follow a player with the specified player name
--- - Precondition: requires hardware event
---@param name string
---@param exactMatch? boolean Require exact player name
---@return nil
function FollowByName(name, exactMatch) end

--- Follow an ally with the specified UnitID
--- - Precondition: requires hardware event
---@param unit UnitId
---@return nil
function FollowUnit(unit) end
