---@meta

--- Converts party to raid.
---@return nil
function ConvertToRaid() end

--- Demotes player from assistant status.
--- - Requires raid leadership.
---@param name string
---@return nil
function DemoteAssistant(name) end

--- Returns number of raid members.
--- - Returns 0 if not in a raid group.
---@return number
---@nodiscard
function GetNumRaidMembers() end

--- Returns information about a raid member.
---@param index RaidIndex
---@return string name
---@return 0|1|2 rank 0 is regular member, 1 is raid assist, 2 is raid lead
---@return 1|2|3|4|5|6|7|8 subgroup
---@return integer level 0 if Offline. Normally 0-60, but GM/developer accounts can exceed that.
---@return string classLocalized Character class, with the first letter capitalized, ex. "Priest". Works for offline characters.
---@return CharacterClass classEnglish
---@return nil|"Offline"|string zone The name of the zone this character is currently in. This is the same value you see if you mouseover their portrait (if in group). May return nil when called on self; use location functions for that instead.
---@return nil|1 isOnline
---@return nil|1 isDead Hunter Feign Death does not show as dead for this.
---@nodiscard
function GetRaidRosterInfo(index) end

--- No documentation on wiki
function GetRaidRosterSelection() end

--- Get the raid mark assigned to a unit.
---@param unit UnitId
---@return nil|RaidMark
function GetRaidTargetIndex(unit) end

---@return nil|1 isRaidLead
---@nodiscard
function IsRaidLeader() end

---@return nil|1 hasAssist
---@nodiscard
function IsRaidOfficer() end

--- Promotes player to assistant status.
--- - Requires raid leadership.
---@param name string
---@return nil
function PromoteToAssistant(name) end

--- Request which instances you are saved to.
--- - Equivalent to typing /raidinfo
--- - TODO this might trigger event UPDATE_INSTANCE_INFO
---@return nil
function RequestRaidInfo() end

--- No documentation on wiki
function SetRaidRosterSelection(index) end

--- Move a raid member from his current subgroup into a different (non-full) subgroup.
---@param index RaidIndex
---@param subgroup 1|2|3|4|5|6|7|8
---@return nil
function SetRaidSubgroup(index, subgroup) end

--- Swaps raid members into different groups
---@param index1 RaidIndex
---@param index2 RaidIndex
---@return nil
function SwapRaidSubgroup(index1, index2) end

--- Assign raid mark to a unit.
---@param unit UnitId
---@param mark RaidMark
---@return nil
function SetRaidTarget(unit, mark) end

--- Boots someone from a raid
---@param index RaidIndex
---@return nil
function UninviteFromRaid(index) end

--- Predicate checking if unit is a member of your raid.
---@param unit UnitId
---@return nil|1
---@nodiscard
function UnitInRaid(unit) end
