---@meta

--- Removes a specific buff from the player.
--- - This function uses a zero-based index, while UnitBuff() does not. -Mind
--- - Not limited to hardware event restriction. This function can be called freely from an Addon to auto-remove a given buff.
---@param index integer
---@return nil
function CancelPlayerBuff(index) end

--- Cancels your current tracking buff (Find Minerals etc.)
---@return nil
function CancelTrackingBuff() end

--- Retrieves info about an aura.
--- - untilCancelled does not imply the current player can cancel it, only that it won't time out.
---@param buffIndex integer Starting from 0
---@param auraFilter AuraFilter
---@return integer buffIndex The index of the buff. Mainly to use for other GetPlayerBuffXYZ functions. If below zero, indicates there is no such buff.
---@return nil|1 untilCancelled If 1, this buff will last until it is cancelled (Aura, Aspect, Stealth).
---@nodiscard
function GetPlayerBuff(buffIndex, auraFilter) end

--- Retrieves the number of applications of a debuff or buff.
---@param buffIndex integer Starting from 0
---@return integer
---@nodiscard
function GetPlayerBuffApplications(buffIndex) end

--- Get the debuff type for a player debuff ("Magic", "Curse", "Disease", or "Poison")
---@param buffIndex integer Starting from 0
---@return string
---@nodiscard
function GetPlayerBuffDispelType(buffIndex) end

--- Retrieves the texture identifier for a certain buff.
---@param buffIndex integer Starting from 0
---@return nil|string path nil if buff doesn't exist.
---@nodiscard
function GetPlayerBuffTexture(buffIndex) end

--- Retrieves how long a buff will last before expiring.
---@param buffIndex integer Can be obtained with GetPlayerBuff.
---@return number buffTimeLeft Time (in seconds) left until the buff expires.
---@nodiscard
function GetPlayerBuffTimeLeft(buffIndex) end

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
---@nodiscard
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
---@nodiscard
function UnitDebuff(unit, index, showDispellable) end
