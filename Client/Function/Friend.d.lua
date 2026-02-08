---@meta

--- Adds a character to the friends list.
--- - Emits warning to chat when trying to add yourself or an already added friend.
--- - Does nothing if the player with that name does not exist.
---@param name string Character name to add.
---@return nil
function AddFriend(name) end

--- Returns information about a friend.
---@param index integer Index from 1 to GetNumFriends().
---@return nil|string name Character name.
---@return integer level Character level, 0 if unknown.
---@return string class Character class, UNKNOWN if unknown.
---@return string area Zone name, UNKNOWN if unknown.
---@return nil|1 connected Whether the friend is online.
---@return nil|string status "AFK" or "DND", nil if none.
---@nodiscard
function GetFriendInfo(index) end

--- Returns the number of friends on the friends list.
---@return integer
---@nodiscard
function GetNumFriends() end

--- Removes a friend from the friends list by name or index.
---@param nameOrIndex string|integer Character name or index from 1 to GetNumFriends().
---@return nil
function RemoveFriend(nameOrIndex) end
