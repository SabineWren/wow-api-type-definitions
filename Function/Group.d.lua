---@meta

--- Accept the invitation to party.
function AcceptGroup() end

--- Unknown, called from UIParent's OnUpdate!
function CheckReadyCheckTime() end

--- Indicate if you are ready or not.
function ConfirmReadyCheck(isReady) end

--- Converts party to raid.
function ConvertToRaid() end

--- Decline the invitation to a party.
function DeclineGroup() end

--- Initiate a ready check.
function DoReadyCheck() end

function GetLookingForGroup() end

--- Return the currently active lootMethod
function GetLootMethod() end

--- Return the current loot threshold (for group/master loot)
function GetLootThreshold() end

--- Return the name of a player who is eligible to receive loot in master mode
function GetMasterLootCandidate(index) end

--- Returns number of party members.
---@return number
function GetNumPartyMembers() end

--- Returns the index of the party leader (1-4) if not yourself.
function GetPartyLeaderIndex() end

--- Returns the unit id of the party member at the given index if that party slot is filled, otherwise nil.
function GetPartyMember(index) end

--- Invites the specified player to the group you are currently in.
---@param name string
---@return nil
function InviteByName(name) end

--- Invite a unit to a party by its unit id (likely "target")
---@param unit UnitId
---@return nil
function InviteToParty(unit) end

--[[

--- Returns true if the player is the party leader.
function IsPartyLeader() end

--- Quit the party
function LeaveParty() end

--- Promotes by name the target.
function PromoteByName("name") end

--- Promote a unit to party leader.
function PromoteToPartyLeader("unit") end

function SetLookingForGroup(flag) end

--- Set the current loot method
function SetLootMethod("lootMethod", ?"masterPlayer" or ?threshold) end

--- Set the threshold for group/master loot
function SetLootThreshold(itemQuality) end

--- Uninvites (kicks) the named player from the current group if player is group leader.
function UninviteByName("name") end

--- Kick a unit from the party if player is group leader.
function UninviteFromParty("unit") end

--- Returns true if the unit is a member of your party.
function UnitInParty("unit") end

--- Returns true if the unit is the leader of its party.
function UnitIsPartyLeader("unit") end

]]
