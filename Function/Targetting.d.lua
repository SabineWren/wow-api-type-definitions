---@meta

--- Assists (i.e. targets target of) player.
--- - Only works with players, not pets or NPCs.
---@param playerName string
---@return nil
function AssistByName(playerName) end

--- Instructs your character to assist the specified unit. (works in 1.12.1)
---@param unit UnitId
---@return nil
function AssistUnit(unit) end

--- Attacks targetted unit.
---@return nil
function AttackTarget() end

--- Clears selected target.
---@return nil
function ClearTarget() end

--- TODO probably clicks something in an opened trade window
---@param index integer
---@return nil
function ClickTargetTradeButton(index) end

--- Selects the specified player as the current target.<br>
--- EXAMPLE given a blue dragon and a player named "Greenknight"<br>
--- - Using false:<br>
--- /run TargetByName("Blue Dragon", false)<br>
--- /run TargetByName("Green Dragon", false)<br>
--- /run DEFAULT_CHAT_FRAME:AddMessage(UnitName("target"))<br>
--- // outputs "Greenknight", as "Green Dragon" fuzzy-targets the player<br>
--- - Using true:<br>
--- /run TargetByName("Blue Dragon", true)<br>
--- /run TargetByName("Green Dragon", true)<br>
--- /run DEFAULT_CHAT_FRAME:AddMessage(UnitName("target"))<br>
--- // outputs "Blue Dragon"
---@param name string Name of target.
---@param exactMatch boolean True for string equality. False for fuzzy matching.
---@return nil
function TargetByName(name, exactMatch) end

--- Selects the last targetted enemy as the current target.
---@return nil
function TargetLastEnemy() end

--- Selects the last target as the current target.
---@return nil
function TargetLastTarget() end

--- Selects the nearest enemy as the current target.
---@param reverseFlag boolean True to cycle backwards
---@return nil
function TargetNearestEnemy(reverseFlag) end

--- Selects the nearest friendly unit as the current target.
---@return nil
function TargetNearestFriend() end

--- Selects the nearest Party member as the current target.
---@return nil
function TargetNearestPartyMember() end

--- Selects the nearest Raid member as the current target.
---@return nil
function TargetNearestRaidMember() end

--- Selects the specified unit as the current target.
---@param unit UnitId
---@return nil
function TargetUnit(unit) end
