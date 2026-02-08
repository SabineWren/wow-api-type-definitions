---@meta

--- This globally resets the debug timer.
--- - Never call this function, since it's global. Call debugprofilestop() 2 times and compare the difference.
---@return nil
function debugprofilestart() end

--- Returns the time in milliseconds since the last call to debugprofilestart().
--- - Doesn't stop the debug timer.
---@return number
---@nodiscard
function debugprofilestop() end

--- Sets FrameXML logging state. When enabled, logs to /WoW Folder/Logs/FrameXML.log
--- - Addon and file load order
--- - Names of all created frames and templates
---@param flag nil|0|1 1 to start, 0 to stop, nil for no-op.
---@return 0|1 isLogging Current state after calling this function.
---@nodiscard
function FrameXML_Debug(flag) end

--- No wiki description
---@return any
---@nodiscard
function GetDebugStats() end

--- Returns a string representation of the current calling stack
--- - If there are more than count1+count2 calls in the stack, they are separated by a "..." line.
---@param start integer Stack depth at which to start the stack trace (default 1 - the function calling debugstack).
---@param count1 integer Number of functions to output at the top of the stack (default 12).
---@param count2 integer Number of functions to output at the bottom of the stack (default 10).
---@return string callstack A multi-line string showing the current call stack.
function debugstack(start, count1, count2) end
