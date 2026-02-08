---@meta

--- Collapses a trade skill header in the trade skill window.
--- - Collapses all headers if index is 0.
--- - Trade skill window must be open.
---@param index integer integer 1 to GetNumTradeSkills()
---@return nil
function CollapseTradeSkillSubClass(index) end

--- Expands a trade skill header in the trade skill window.
--- - Expands all headers if index is 0.
--- - Trade skill window must be open.
---@param index integer 1 to GetNumTradeSkills()
---@return nil
function ExpandTradeSkillSubClass(index) end

--- Returns the number of trade skill entries (including headers).
--- - Trade skill window must be open.
---@return integer
---@nodiscard
function GetNumTradeSkills() end

--- Retrieves information about a specific trade skill entry.
--- - Trade skill window must be open.
---@param index integer 1 to GetNumTradeSkills().
---@return nil|string skillName The name of the skill or header.
---@return nil|string skillType "header", "trivial", "easy", "medium", "optimal", or "difficult".
---@return nil|integer numAvailable The number of items the player can craft with available reagents.
---@return nil|1 isExpanded Whether the header is expanded.
---@nodiscard
function GetTradeSkillInfo(index) end

--- Returns the inventory slot filter status.
--- - Returns whether all filters are checked if slotIndex is 0.
--- - Trade skill window must be open.
---@param slotIndex integer
---@return nil|1
---@nodiscard
function GetTradeSkillInvSlotFilter(slotIndex) end

--- Returns a list of the available inventory slot types.
--- - Trade skill window must be open.
---@return string ...
---@nodiscard
function GetTradeSkillInvSlots() end

--- Returns an item link for the specified trade skill item.
--- - Trade skill window must be open.
---@param index integer 1 to GetNumTradeSkills().
---@return nil|string link
---@nodiscard
function GetTradeSkillItemLink(index) end

--- Returns information about the currently open trade skill.
--- - Trade skill window must be open.
---@return nil|string name Name of the current trade skill.
---@return nil|integer level Current level in the trade skill.
---@return nil|integer maxLevel Current maximum level for the trade skill.
---@nodiscard
function GetTradeSkillLine() end

--- Returns a list of the valid subclasses for the current trade skill.
--- - Trade skill window must be open.
---@return string ...
---@nodiscard
function GetTradeSkillSubClasses() end

--- Returns whether a subclass filter is enabled.
--- - Returns whether all subclass filters are enabled if subclassIndex is 0.
--- - Trade skill window must be open.
---@param subclassIndex integer
---@return nil|1
---@nodiscard
function GetTradeSkillSubClassFilter(subclassIndex) end

--- Sets the inventory slot type filter.
--- - Trade skill window must be open.
---@param slotIndex integer
---@param enable nil|1
---@param exclusive? nil|1 Sets if the slot is the only slot to be selected.
---@return nil
function SetTradeSkillInvSlotFilter(slotIndex, enable, exclusive) end

--- Sets the subclass filter.
--- - Trade skill window must be open.
---@param subclassIndex integer
---@param enable nil|1
---@param exclusive? nil|1 Sets if the subclass is the only subclass to be selected.
---@return nil
function SetTradeSkillSubClassFilter(subclassIndex, enable, exclusive) end
