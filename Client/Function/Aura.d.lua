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
--- As IDs are unique, they are more reliable than texture matching.
---@param unitID UnitId The unit ID you want buff information for - "player", "target", "pet" etc
---@param buffIndex integer Index of the buff to retrieve, starting at 1. Max is 32 for party/pet; target's cap is unconfirmed (observed around 8).
---@param showCastable? nil|1 If present and 1, only buffs castable by the player are returned.
---@return nil|string buffTexture The icon texture path of the indicated buff, or nil if no buff.
---@return nil|number buffApplications The number of times the buff has been applied to the target. Returns 0 for any buff which doesn't stack.
---@return nil|number buffID The unique identifier for the buff. (if supported by core).
---@nodiscard
function UnitBuff(unit, buffIndex, showCastable) end

--- Retrieves info about a debuff of a certain unit.
--- As IDs are unique, they are more reliable than texture matching.
---@alias DebuffDispelType "Magic"|"Curse"|"Poison"|"Disease"
---@param unitID UnitId The unit ID you want debuff information for - "player", "target", "pet" etc
---@param debuffIndex integer The index of the debuff to retrieve info for. Starts at 1. The maximum index is 16 for party/pet/target debuffs.
---@param showDispellable? nil|1 Can be 0, 1, or nil. If present and 1, then only debuffs will be returned which are dispellable by the player. Index is still starting with 1 and counting up.
---@return nil|string debuffTexture The icon texture path of the indicated debuff, or nil if no debuff.
---@return nil|number  debuffApplications The number of times the debuff has been applied to the target. Returns 0 for any debuff which doesn't stack.
---@return nil|DebuffDispelType debuffDispelType The debuff dispel type. Can be "Magic", "Curse", "Poison", "Disease" or nil if not dispellable.
---@return nil|number debuffID The unique identifier for the debuff. (if supported by core).
---@nodiscard
function UnitDebuff(unit, debuffIndex, showDispellable) end
