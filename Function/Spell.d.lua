---@meta

---@param spellIndex integer
---@return nil
function CastShapeshiftForm(spellIndex) end

--- Cast the specified spell by ID.
---@param spellID number
---@param bookType BookType
---@return nil
function CastSpell(spellID, bookType) end

--- Cast the specified spell by display name.
--- - Rank is optional, and defaults to highest possible.
--- - ex. CastSpellByName("Flash Heal(Rank 2)") Casts on target at rank 2
--- - ex. CastSpellByName("Flash Heal") Casts on target
--- - ex. CastSpellByName("Flash Heal", 1) Casts on self
---@param name string
---@param isSelf? boolean
---@return nil
function CastSpellByName(name, isSelf) end

--- TODO documentation mentions index is " - 1 to GetNumCrafts()". Unclear what that means.
--- TODO returns types from TBC. Might be different in 1.12.1
--- - When called while the enchanting screen is open, this function returns which rod is required, if any. I don't know whether this function also applies to other types of crafts or spells.
--- - Returns two values when a rod is required: a string that contains the name of the rod, and the number "1". I don't know what the "1" means.
---@param index number
---@return nil|string catalyst
---@return nil|1 one
function GetCraftSpellFocus(index) end

--- Returns the number of shapeshift buttons (stances for Warriors, auras for Paladins, forms for Druids, etc) the player currently has.
--- - Might return 0 if called before the event UNIT_AURA has fired.
---@return number
function GetNumShapeshiftForms() end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetNumSpellTabs)
--- TODO: Document whether or not this includes profession tabs.
---@return integer numTabs Number of tabs in the spellbook.
function GetNumSpellTabs() end

--- [Source](https://www.wowinterface.com/forums/showthread.php?t=49500)
--- Returns the spell reward for a quest.
---@return string texturePath
---@return string spellName The spell name
---@return boolean isTradeskillSpell
---@return boolean isSpellLearned
function GetQuestLogRewardSpell() end

--- [Source](https://www.wowinterface.com/forums/showthread.php?t=49500)
--- Returns the spell reward for the quest in the gossip window.
---@return string texturePath
---@return string spellName The spell name
---@return boolean isTradeskillSpell
---@return boolean isSpellLearned
function GetRewardSpell() end

--- Returns cooldown information for a specified form: shapeshift, stance, stealth, shadowform, spirit of redemption.
---@param index number
---@return number startTime Cooldown start time (per GetTime) in seconds.
---@return number duration Cooldown duration in seconds.
---@return nil|1 isActive Returns 1 if the cooldown is running.
function GetShapeshiftFormCooldown(index) end

--- Retrieves information about an available ShapeshiftForm or Stance.
---@param index number
---@return string texturePath
---@return nil|1 1 if this shapeshift is currently active.
---@return nil|1 1 if this shapeshift form may be entered.
---@return number SpellId Index of the spell that activates this ability.
function GetShapeshiftFormInfo(index) end

-- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetSpellCooldown)
---@param spellIndex integer
---@param bookType BookType
---@return number startTime The time when the cooldown started, as returned by GetTime(), or zero if no cooldown.
---@return number duration The number of seconds the cooldown will last, or zero if no cooldown.
-- TODO confirm 'enable' isn't implemented (Stealth, Shadowmeld, Presence of Mind, etc.)
---@return number _1 Docs call it 'enable', but it always returns 1.
function GetSpellCooldown(spellIndex, bookType) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetSpellName)
---@param spellIndex integer
---@param bookType BookType
---@return string name Name of the spell as it appears in the spellbook, eg. "Lesser Heal".
---@return string rank The spell rank or type, eg. "Rank 3", "Racial Passive". This can be an empty string. Note: for the Enchanting trade skill at rank Apprentice, the returned string contains a trailing space, ie. "Apprentice ". This might be the case for other trade skills and ranks also.
function GetSpellName(spellIndex, bookType) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetSpellTabInfo)
---@param spellbookTabIndex number Index of tab (starting from 1)
---@return string schoolName ex. General, Shadow, Fury
---@return string schoolTexture Texture path of tooltip for spell school.
---@return integer tabOffset Number of spell entries preceding this tab.
---@return integer numSpells Number of spells in this tab.
function GetSpellTabInfo(spellbookTabIndex) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetSpellTexture)
---@param spellIndex integer
---@param bookType BookType
---@return string texturePath Texture path of tooltip for spell.
function GetSpellTexture(spellIndex, bookType) end

--- Return the texture of the current tracking buff, if one is active.
---@return nil|string texturePath Texture path of tooltip for spell.
function GetTrackingTexture() end

--- TODO not documented - HELP WANTED because it sounds useful
---@param spellIndex integer
---@param bookType BookType
---@return boolean
function IsCurrentCast(spellIndex, bookType) end

--- Returns whether the icon in your spellbook is a Passive ability.
---@param spellIndex integer
---@param bookType BookType
---@return boolean
function IsSpellPassive(spellIndex, bookType) end

--- Returns the type of trainer spell in the trainer window.
--- TODO what does that mean? Needs an example.
---@param spellIndex integer
---@return nil|1 isLearnSpell 1 if a class spell or a learnable profession spell.
---@return nil|1 isPetLearnSpell 1 if a pet spell.
function IsTrainerServiceLearnSpell(spellIndex) end

--- Loads an action button onto the cursor to be dropped into a quickbar slot.
---@param spellIndex integer
---@param bookType BookType
---@return nil
function PickupSpell(spellIndex, bookType) end

--- TODO not documented
function PlayerHasSpells() end

--- Returns true if the spell awaiting target selection can be cast on the specified unit.
---@param unit UnitId
---@return boolean
function SpellCanTargetUnit(unit) end

--- Returns true if a spell has been cast and is awaiting target selection.
---@return nil|1
function SpellIsTargeting() end

--- Stops the current spellcast.
--- - This function must be used in direct response to a hardware input event, such as a mouse click or key press.
---@return nil|1 IsStopped 1 if it stopped a spellcast.
function SpellStopCasting() end

--- Cancels the spell awaiting target selection.
--- Also cancels some types of weapon buffs when they ask for confirmation. For example, if you attempt to apply a poison to a weapon that already has a poison, the game will ask you to confirm the replacement. You can accept the replacement with ReplaceEnchant() or cancel the replacement with SpellStopTargeting().
---@return nil
function SpellStopTargeting() end

--- Casts the spell awaiting target selection on the specified unit.
---@param unit UnitId
---@return nil
function SpellTargetUnit(unit) end

--- TODO not documented
function UpdateSpells() end