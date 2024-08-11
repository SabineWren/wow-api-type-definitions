---@meta

--- Accept the invitation to party.
---@return nil
function AcceptGroup() end

--- Unknown, called from UIParent's OnUpdate!
---@return nil
function CheckReadyCheckTime(isReady) end

--- Indicate if you are ready or not.
--- - Related event: READY_CHECK
---@param isReady boolean Actually nil|1, but boolean is better.
---@return nil
function ConfirmReadyCheck(isReady) end

--- Converts party to raid.
---@return nil
function ConvertToRaid() end

--- Decline the invitation to a party.
--- - Related event: PARTY_INVITE_REQUEST
--- - Related event: PARTY_MEMBERS_CHANGED
--- - Does NOT cause the "accept/decline dialog" to go away. Use StaticPopup_Hide("PARTY_INVITE") to hide the dialog.
--- - Depending on the order of events, your handler may run before UIParent's, attempting to hide the dialog before it is shown. Hiding the popup after PARTY_MEMBERS_CHANGED solves this.
---@return nil
function DeclineGroup() end

--- Ready checks are handled server-side. There's a chat message shown when complete, so you can listen for CHAT_MSG_SYSTEM and read the result from chat.
--- - Related event: READY_CHECK
function DoReadyCheck() end

--- Wiki reference links are dead.
---@return string objective1
---@return string objective2
---@return string objective3
---@return string message A message you provided when flagging yourself as LFG with SetLookingForGroup()
---@nodiscard
function GetLookingForGroup() end

---@return LootMethod method Defaultst to "freeforall" if not grouped.
---@return nil|0|1|2|3|4 masterlooterID 0 if player is master looter, 1-4 for party members, nil if other ML in other party or not set to master loot.
---@nodiscard
function GetLootMethod() end

--- Return the current loot threshold (for group/master loot)
---@return ItemQuality
---@nodiscard
function GetLootThreshold() end

--- Return the name of a player who is eligible to receive loot in master mode.
--- - WIKI: This appears not to work unless you are the master looter, and not until the list of candidates has been built by the system, which looks like after you first try and assign an item.
--- - WIKI: Also if you were master looter of a group, and then join another group later and are not the master looter, it will return the names of candidates from your previous group. -- Haarm
---@param index RaidIndex
---@return string playerName TODO can this return nil?
---@nodiscard
function GetMasterLootCandidate(index) end

--- Returns number of party members, excluding yourself.
---@return 0|1|2|3|4
---@nodiscard
function GetNumPartyMembers() end

--- Returns the index of the party leader (1-4).
---@return 0|1|2|3|4 index 0 means not applicable (no party or you are the leader)
---@nodiscard
function GetPartyLeaderIndex() end

--- TODO Conflicting return types on wiki.
--- Both agree on nil, but not clear whether it's a boolean or a UnitId
---@param index RaidIndex
---@return nil|(UnitId|1) flagOrUnitId
---@nodiscard
function GetPartyMember(index) end

--- Invites the specified player to the group you are currently in.
--- - Wiki shows you can always pass a UnitId. That's horrible, since InviteToParty exists.
---@param name string
---@return nil
function InviteByName(name) end

--- Invite somone to a party by UnitId, ex. "target", "mouseover"
---@param unit UnitId
---@return nil
function InviteToParty(unit) end

--- Returns true if the player is party leader.
---@return boolean
---@nodiscard
function IsPartyLeader() end

--- Quit the party
---@return nil
function LeaveParty() end

--- Promotes by name the target.
---@param name string
---@return nil
function PromoteByName(name) end

--- Promote a unit to party leader.
---@param unit UnitId
---@return nil
function PromoteToPartyLeader(unit) end

--- Wiki reference links are dead.
---@param category1 number
---@param objective1 number
---@param category2? number
---@param objective2? number
---@param category3? number
---@param objective3? number
---@param message? string
---@return nil
function SetLookingForGroup(category1, objective1, category2, objective2, category3, objective3, message) end

--- Set the current loot method
---@param lootMethod LootMethod
---@param threshold? ItemQuality
---@return nil
function SetLootMethod(lootMethod, threshold) end

--- Set the threshold for group/master loot
---@param quality ItemQuality
---@return nil
function SetLootThreshold(quality) end

--- Uninvites (kicks) the named player from the current group.
--- - Requires party leader.
---@param name string
---@return nil
function UninviteByName(name) end

--- Kick a unit from the party.
--- - Requires party leader.
---@param unit UnitId
---@return nil
function UninviteFromParty(unit) end

--- Returns 1 if unit is a member of your party.
---@param unit UnitId
---@return nil|1
---@nodiscard
function UnitInParty(unit) end

--- Returns 1 if the unit is the leader of its party.
---@param unit UnitId
---@return nil|1
---@nodiscard
function UnitIsPartyLeader(unit) end

-- ************ MEETING STONE ************

--- Remove character from an instance's Meeting Stone queue.
---@return nil
function CancelMeetingStoneRequest() end

--- No description
---@return nil
function GetMeetingStoneStatusText() end

--- No description
---@return nil
function IsInMeetingStoneQueue() end
