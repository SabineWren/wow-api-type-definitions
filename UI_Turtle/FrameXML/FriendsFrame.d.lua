---@meta

FRIENDS_TO_DISPLAY = 10
FRIENDS_FRAME_FRIEND_HEIGHT = 34
IGNORES_TO_DISPLAY = 20
FRIENDS_FRAME_IGNORE_HEIGHT = 16
WHOS_TO_DISPLAY = 17
FRIENDS_FRAME_WHO_HEIGHT = 16
GUILDMEMBERS_TO_DISPLAY = 13
FRIENDS_FRAME_GUILD_HEIGHT = 14
MAX_IGNORE = 50
MAX_WHOS_FROM_SERVER = 50
MAX_GUILDCONTROL_OPTIONS = 12
CURRENT_GUILD_MOTD = ""
SHOW_OFFLINE_GUILD_MEMBERS = 1
GUILD_DETAIL_NORM_HEIGHT = 195
GUILD_DETAIL_OFFICER_HEIGHT = 255
WHOFRAME_DROPDOWN_LIST = { { name = ZONE, sortType = "zone" }, { name = GUILD, sortType = "guild" }, { name = RACE, sortType = "race" } }
FRIENDSFRAME_SUBFRAMES = { "FriendsListFrame", "IgnoreListFrame", "WhoFrame", "GuildFrame", "RaidFrame" }

---@param frameName any (type not inferred)
---@return nil
function FriendsFrame_ShowSubFrame(frameName) end

---@param name any (type not inferred)
---@param connected any (type not inferred)
---@return nil
function FriendsFrame_ShowDropdown(name, connected) end

---@return nil
function FriendsFrameDropDown_Initialize() end

---@return nil
function FriendsFrame_OnLoad() end

---@return nil
function FriendsFrame_OnShow() end

---@return nil
function FriendsFrame_Update() end

---@return nil
function FriendsFrame_OnHide() end

---@return nil
function FriendsList_Update() end

---@return nil
function IgnoreList_Update() end

---@return nil
function WhoList_Update() end

---@return nil
function GuildStatus_Update() end

---@param width any (type not inferred)
---@param frame any (type not inferred)
---@return nil
function WhoFrameColumn_SetWidth(width, frame) end

---@return nil
function WhoFrameDropDown_Initialize() end

---@return nil
function WhoFrameDropDown_OnLoad() end

---@return nil
function WhoFrameDropDownButton_OnClick() end

---@return nil
function FriendsFrame_OnEvent() end

---@param button any (type not inferred)
---@return nil
function FriendsFrameFriendButton_OnClick(button) end

---@return nil
function FriendsFrameIgnoreButton_OnClick() end

---@param button any (type not inferred)
---@return nil
function FriendsFrameWhoButton_OnClick(button) end

---@param button any (type not inferred)
---@return nil
function FriendsFrameGuildStatusButton_OnClick(button) end

---@return nil
function FriendsFrame_UnIgnore() end

---@return nil
function FriendsFrame_RemoveFriend() end

---@return nil
function FriendsFrame_SendMessage() end

---@return nil
function FriendsFrame_GroupInvite() end

---@param tab any (type not inferred)
---@return nil
function ToggleFriendsFrame(tab) end

---@return nil
function WhoFrameEditBox_OnEnterPressed() end

---@return nil
function ShowWhoPanel() end

---@return nil
function ShowIgnorePanel() end

---@return any command (type not inferred)
---@nodiscard
function WhoFrame_GetDefaultWhoCommand() end

---@return nil
function GuildControlPopupFrame_OnLoad() end

---@return nil
function GuildControlPopupFrame_OnShow() end

---@return nil
function GuildControlPopupFrame_OnHide() end

---@return nil
function GuildControlPopupAcceptButton_OnClick() end

---@return nil
function GuildControlPopupFrameDropDown_OnLoad() end

---@return nil
function GuildControlPopupFrameDropDown_Initialize() end

---@return nil
function GuildControlPopupFrameDropDownButton_OnClick() end


---@return nil
function GuildControlPopupFrameAddRankButton_OnUpdate() end

---@return nil
function GuildControlPopupFrameRemoveRankButton_OnClick() end

---@return nil
function GuildControlPopupFrameRemoveRankButton_OnUpdate() end

---@return nil
function InGuildCheck() end

---@return nil
function GuildFrameGuildListToggleButton_OnClick() end

---@return nil
function GuildFrameControlButton_OnUpdate() end

---@param guildIndex any (type not inferred)
---@return any lastOnline (type not inferred)
---@nodiscard
function GuildFrame_GetLastOnline(guildIndex) end

---@return nil
function ToggleGuildInfoFrame() end