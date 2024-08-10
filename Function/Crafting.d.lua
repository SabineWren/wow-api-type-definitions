---@meta

--- No description
function CloseCraft() end

--- No description
function CollapseCraftSkillLine(index) end

--- No description
function DoCraft(index) end

--- No description
function ExpandCraftSkillLine(index) end

--- No description
function GetCraftButtonToken() end

--- No description
function GetCraftDescription(index) end

--- No description
function GetCraftDisplaySkillLine() end

--- No description
function GetCraftIcon(index) end

--- No description
function GetCraftInfo(index) end

--- Returns an itemLink for the specified craftable item.
function GetCraftItemLink(index) end

--- No description
function GetCraftName() end

--- No description
function GetCraftNumReagents(index) end

--- No description
function GetCraftReagentInfo(index,reagentIndex) end

--- Returns an itemLink for one of the reagents needed to craft the given item
function GetCraftReagentItemLink(index,reagentIndex) end

--- No description
function GetCraftSelectionIndex() end

--- No description
function GetCraftSkillLine() end

--- TODO documentation mentions index is " - 1 to GetNumCrafts()". Unclear what that means.
--- TODO returns types from TBC. Might be different in 1.12.1
--- - When called while the enchanting screen is open, this function returns which rod is required, if any. I don't know whether this function also applies to other types of crafts or spells.
--- - Returns two values when a rod is required: a string that contains the name of the rod, and the number "1". I don't know what the "1" means.
---@param index number
---@return nil|string catalyst
---@return nil|1 one
---@nodiscard
function GetCraftSpellFocus(index) end

--- No description
function GetNumCrafts() end

--- No description
function SelectCraft(index) end
