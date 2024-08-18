---@meta

---Writes the current in-memory key bindings to disk and fires an UPDATE_BINDINGS event when finished.
function SaveBindings() end

---Binds a key or button press to an command. Unbinds the key or button if the command argument is nil.
---
---A single key can only be bound to one command.
---Binding a key to a command that is already bound to another command will result in un-binding the key from the previous command.
---
---Changes are not written to disk unless [SaveBindings()](lua://SaveBindings) is called.
---
---@param key string
---@param command string
---@see SaveBindings
function SetBinding(key, command) end

---Returns the command name and all keys currently bound to the command specified by index.
---
---This would generally be used in conjunction with [GetNumBindings()](lua://GetNumBindings) to loop through and set/get all of the key bindings available.
---@param index integer
---@return [string]
function GetBinding(index) end

---Returns the total number of key bindings listed in the key bindings window.
---
---This includes not only actions that can be bound, but also the category headers in the window.
---This would generally be used in conjunction with [GetBinding(index)](lua://GetBinding) to loop through and set/get all of the key bindings available.
---
---@return integer numKeyBindings The total number of key bindings (including headers) listed in the key bindings window.
function GetNumBindings() end

---Returns all keys currently bound to the command specified by command
---@param command string The name of the command to get key bindings for (e.g. MOVEFORWARD, TOGGLEFRIENDSTAB)
---@return integer[] Keys
function GetBindingKey(command) end
