---@meta

--- Accept another player's challenge to duel.
---@return nil
function AcceptDuel() end

--- Forfeits the current duel or declines a duel invitation.
---@return nil
function CancelDuel() end

--- Cancels the logout timer (from camping or quitting).
--- This is called whenever the logout dialogs are hidden.
---@return nil
function CancelLogout() end

--- Remove character from an instance's Meeting Stone queue.
--- If the character is not in a Meeting Stone queue, nothing happens.
---@return nil
function CancelMeetingStoneRequest() end

--- No description
---@return unknown
function ClearTutorials() end

--- Accepts a summon request.
---@return nil
function ConfirmSummon() end

--- No description, guessing this flags a tutorial as completed
---@param tutorial string
---@return unknown
function FlagTutorial(tutorial) end

--- Instantly quits the game, bypassing the usual 20 seconds countdown. Your character will not be logged out when using this function. This means he/she will stay in Azeroth until the realm server notices that your WoW client is not running anymore. Meanwhile your character could be hit or even be killed, so consider using Quit() instead.
--- - LuaLS doesn't support a never/void return type T.T
function ForceQuit() end

---@return string areaName The zone to where you will be summoned.
---@nodiscard
function GetSummonConfirmAreaName() end

---@return nil|string summoner Name of the player summoning you, or nil if no summon is currently pending.
---@nodiscard
function GetSummonConfirmSummoner() end

---@return number timeLeft Time remaining in seconds to accept a summon. Zero if not being summoned.
---@nodiscard
function GetSummonConfirmTimeLeft() end

--- Logs the user out of the game.
--- - Triggers event PLAYER_CAMPING
--- - See [CancelLogout()](lua://CancelLogout)
--- - LuaLS doesn't support a never/void return type T.T
function Logout() end

--- Quits the application, NOT the Lua script.
--- - LuaLS doesn't support a never/void return type T.T
function Quit() end

--- Does a random roll from low to high
---@param low integer
---@param high integer
function RandomRoll(low, high) end

--- Does a random roll from 1 to the value provided
---@param high? integer Default 100
function RandomRoll(high) end

--- The player sits or stands.
function SitOrStand() end

--- Challenge someone to a duel (by name)
---@param playerName string
function StartDuel(playerName) end

--- Challenge a unit to a duel.
---@param unit UnitId
function StartDuelUnit(unit) end

--- Toggles PVP Status
function TogglePVP() end

--- Toggles sheathed or unsheathed weapons.
function ToggleSheath() end

--- Use an active soulstone to resurrect yourself after death.
function UseSoulstone() end
