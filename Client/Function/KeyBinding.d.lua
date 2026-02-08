---@meta

--- Returns the command name and all keys currently bound to it specified by index.
--- - Can use in conjunction with [GetNumBindings()](lua://GetNumBindings) to loop through and set/get all of the key bindings available.
--- - There's no limit to how many keys can be bound to a command.
---@param index integer
---@return string ... command, key1, key2, ..., keyN
function GetBinding(index) end

--- Get the action bound to that key.
---@param key string
---@return string action Empty string if no action bound.
---@nodiscard
function GetBindingAction(key) end

--- Returns all keys currently bound to the command.
---@param command string Name of command to get key bindings for (e.g. MOVEFORWARD, TOGGLEFRIENDSTAB)
---@return string ... key1, key2, ..., keyN
function GetBindingKey(command) end

--- Queries if current set of key bindings is character or account specific.
--- - See [SaveBindings(index)](lua://SaveBindings)
---@return BindingGroup which
---@nodiscard
function GetCurrentBindingSet() end

--- Returns the total number of key bindings listed in the key bindings window.
--- - This includes not only actions that can be bound, but also the category headers in the window.
--- - Can use in conjunction with [GetBinding(index)](lua://GetBinding) to loop through and set/get all of the key bindings available.
---@return integer numKeyBindings The total number of key bindings (including headers) listed in the key bindings window.
---@nodiscard
function GetNumBindings() end

--- Loads default, account, or character-specific key bindings into memory from disk.
--- - Fires event UPDATE_BINDINGS when finished.
---@param which 0|BindingGroup Pass 0 for default bindings.
---@return nil
function LoadBindings(which) end

--- Executes the key binding.
--- - Run as if key pressed down, unless "up" is passed.
--- - Command must match a Bindings.xml file
---@param command string Command to execute, ex. "TOGGLEFPS"
---@param up? "up" Run binding as if key was released.
---@return nil
function RunBinding(command, up) end

--- Writes current in-memory key bindings to disk.
--- - Fires event UPDATE_BINDINGS when finished.
--- - Writes to WTF\Account\ACCOUNTNAME\bindings-cache.wtf.
---@param which BindingGroup
---@return nil
function SaveBindings(which) end

--- Bind or unbind a key.
--- - A single key can only be bound to one command.
--- - Binding a key to a command that is already bound to another command will un-bind the key from the previous command.
--- - Changes not written to disk unless [SaveBindings()](lua://SaveBindings) is called.
---@param key string Key to bind.
---@param command? string Missing or invalid command will unbind the key.
---@return nil|1 isBound nil if unbound.
---@nodiscard
function SetBinding(key, command) end
