---@meta

--- No wiki description, so types are guesswork.
---@return nil
function CloseCraft() end

--- No wiki description, so types are guesswork.
---@param index integer 1 to GetNumCrafts()
---@return nil
function CollapseCraftSkillLine(index) end

--- No wiki description, so types are guesswork.
---@param index integer 1 to GetNumCrafts()
---@return nil
function DoCraft(index) end

--- No wiki description, so types are guesswork.
---@param index integer 1 to GetNumCrafts()
---@return nil
function ExpandCraftSkillLine(index) end

--- No wiki description, so types are guesswork.
---@return any
---@nodiscard
function GetCraftButtonToken() end

---@param index integer 1 to GetNumCrafts()
---@return string description ex. "Permanently enchant a two handed melee weapon to grant +25 Agility."
---@nodiscard
function GetCraftDescription(index) end

--- - Returns nil for "Beast Training". See [GetCraftSkillLine](lua://GetCraftSkillLine).
---@return nil|string name The name of the active craft, or nil if the current craft has no displayable name. Also nil if there are no active crafting windows.
---@return nil|integer rank The player's current rank for the named craft, if applicable.
---@return nil|integer maxRank The maximum rank for the named craft, if applicable.
---@nodiscard
function GetCraftDisplaySkillLine() end

--- No wiki description, so types are guesswork.
---@param index integer 1 to GetNumCrafts()
---@return string iconpath
---@nodiscard
function GetCraftIcon(index) end

---@param index integer 1 to GetNumCrafts()
---@return string craftName Name of the item you can craft.
---@return string craftSubSpellName
---@return string craftType "header" or how hard it is to create the item; trivial, easy, medium or optimal.
---@return integer numAvailable This is the number of enchants you can perform with the reagents you got in your inventory (the number is also shown in the UI).
---@return nil|boolean isExpanded Only applies to headers. Indicates whether they are expanded or contracted. Nil if not applicable.
---@return integer trainingPointCost This is the number of training points your pet needs to train this skill. Nil if the craft window is not a trainer.
---@return nil|integer requiredLevel The required (player or pet) level to train this skill if at a trainer. Nil if the craft window is not a trainer.
---@nodiscard
function GetCraftInfo(index) end

--- Returns an itemLink for the specified craftable item.
---@param index integer 1 to GetNumCrafts()
---@return ItemLink
---@nodiscard
function GetCraftItemLink(index) end

--- Returns the localized name for the craft window, ex. Enchanting, Poisons, Cooking
---@return string
---@nodiscard
function GetCraftName() end

--- Return how many reagents are required for the craft.
---@param index integer 1 to GetNumCrafts()
---@return integer
---@nodiscard
function GetCraftNumReagents(index) end

---@param index integer 1 to GetNumCrafts()
---@param reagentIndex integer 1 to X, where 1 is the first reagent.
---@return string name Name of the reagent required. ie, "Large Brilliant Shard"
---@return string texturePath Path to the required item texture. ex. "Interface\Icons\INV_Enchant_ShardBrilliantLarge"
---@return integer numRequired Required number of reagents.
---@return integer numHave Available number of required reagents.
---@nodiscard
function GetCraftReagentInfo(index, reagentIndex) end

--- Returns an itemLink for one of the reagents needed to craft the given item.
---@param index integer 1 to GetNumCrafts()
---@param reagentIndex integer 1 to X, where 1 is the first reagent.
---@return ItemLink
---@nodiscard
function GetCraftReagentItemLink(index, reagentIndex) end

---@return integer index
---@nodiscard
function GetCraftSelectionIndex() end

---@param n 0 Integer, but passing anything other than 0 results in a nil return.
---@return nil|"Beast Training"|"Enchanting" currentCraftingWindow Name of the currently opened crafting window, or nil if no crafting window is open.
---@nodiscard
function GetCraftSkillLine(n) end

--- - When called while the enchanting screen is open, this function returns which rod is required, if any. I don't know whether this function also applies to other types of crafts or spells.
--- - Returns two values when a rod is required: a string that contains the name of the rod, and the number "1". I don't know what the "1" means.
---@param index integer 1 to GetNumCrafts()
---@return nil|string catalyst
---@return nil|1 one
---@nodiscard
function GetCraftSpellFocus(index) end

--- Returns the number of crafts in the currently opened crafting window.
--- - Can then loop for [GetCraftInfo](lua://GetCraftInfo)
---@return integer
---@nodiscard
function GetNumCrafts() end

--- No wiki description, so types are guesswork.
---@param index integer 1 to GetNumCrafts()
---@return nil
function SelectCraft(index) end
