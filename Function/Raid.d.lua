---@meta

--- Converts party to raid.
function ConvertToRaid() end

--- Demotes player from assistant status. Requires raid leadership.
---@param name string
function DemoteAssistant(name) end

--- Returns number of raid members.
--- - Returns 0 if not in a raid group.
---@return number
---@nodiscard
function GetNumRaidMembers() end

--- Returns information about the members of your raid .
function GetRaidRosterInfo(index) end

--- no description
function GetRaidRosterSelection() end

--- Get the raid target index assigned to a unit.
---@param unit UnitId
function GetRaidTargetIndex(unit) end

--- Returns a value based on whether the player is a raid leader
function IsRaidLeader() end

--- Returns a value based on whether the player is a raid officer (assistant (?)).
function IsRaidOfficer() end

--- Promotes player to assistant status. Requires raid leadership.
---@param name string
function PromoteToAssistant(name) end

--- Returns information about which instances you are saved to
function RequestRaidInfo() end

--- no description
function SetRaidRosterSelection(index) end

--- Move a raid member from his current subgroup into a different (non-full) subgroup.
function SetRaidSubgroup(index, subgroup) end

--- Swaps raid members into different groups
function SwapRaidSubgroup(index1, index2) end

--- Set the raid target index for a unit.
---@param unit UnitId
function SetRaidTarget(unit, index) end

--- Boots someone from a raid
function UninviteFromRaid(index) end

--- Returns 1 if unit is in your raid, nil if not.
---@param unit UnitId
function UnitInRaid(unit) end
