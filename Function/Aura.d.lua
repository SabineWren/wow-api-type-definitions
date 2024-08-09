---@meta

--- Retrieves info about a buff of a certain unit.
--- - TODO return values taken from 2008 wiki. Might be inaccurate.
---@param unit UnitId
---@param index integer The index of the debuff to retrieve info for. Starts at 1, maximum 40.
---@param showCastable? boolean
---@return string name The name of the spell or effect of the debuff. This is the name shown in yellow when you mouse over the icon.
---@return string rank The rank of the spell or effect that caused the debuff. Returns "" if there is no rank.
---@return string icon Probably a texture path??
---@return integer count The number of times the debuff has been applied to the target. Returns 0 for any debuff which doesn't stack.
---@return nil|string debuffType The type of the debuff: Magic, Disease, Poison, Curse, or nothing for those with out a type.
---@return nil|number duration The full duration of the debuff in seconds; nil if the debuff was not cast by the player.
function UnitBuff(unit, index, showCastable) end

--- Retrieves info about a debuff of a certain unit.
--- - TODO return values taken from 2008 wiki. Might be inaccurate.
---@param unit UnitId
---@param index integer The index of the debuff to retrieve info for. Starts at 1, maximum 40.
---@param showDispellable? boolean
---@return string name The name of the spell or effect of the debuff. This is the name shown in yellow when you mouse over the icon.
---@return string rank The rank of the spell or effect that caused the debuff. Returns "" if there is no rank.
---@return string icon Probably a texture path??
---@return integer count The number of times the debuff has been applied to the target. Returns 0 for any debuff which doesn't stack.
---@return nil|string debuffType The type of the debuff: Magic, Disease, Poison, Curse, or nothing for those with out a type.
---@return nil|number duration The full duration of the debuff in seconds; nil if the debuff was not cast by the player.
function UnitDebuff(unit, index, showDispellable) end
