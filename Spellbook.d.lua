---@meta

BOOKTYPE_PET = "pet"
BOOKTYPE_SPELL = "spell"

-- THIS IS BUGGED UPSTREAM
-- https://github.com/LuaLS/lua-language-server/issues/2732
---@alias BookType
--- | `pet`-- See above comment; should be BOOKTYPE_PET
--- | `spell`-- See above comment; should be BOOKTYPE_SPELL

-- CastShapeshiftForm(index)
-- CastSpell(spellID, "bookType")   - Cast the specified spell by ID. spellbookTab is "spell" or "pet".
-- CastSpellByName("name"[, onSelf])   - Cast the specified spell by display name.
-- GetCraftSpellFocus(index)   - ?.
-- GetNumShapeshiftForms()

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetNumSpellTabs)
--- TODO: Document whether or not this includes profession tabs.
---@return integer numTabs Number of tabs in the spellbook.
function GetNumSpellTabs() end

-- GetQuestLogRewardSpell - ?.
-- GetRewardSpell - ?.
-- GetShapeshiftFormCooldown(index)
-- GetShapeshiftFormInfo(index)   - Retrieves information about an available ShapeshiftForm or Stance.

-- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetSpellCooldown)
---@param spellIndex integer
---@param booktype BookType
---@return number startTime The time when the cooldown started, as returned by GetTime(), or zero if no cooldown.
---@return number duration The number of seconds the cooldown will last, or zero if no cooldown.
-- TODO confirm 'enable' isn't implemented (Stealth, Shadowmeld, Presence of Mind, etc.)
---@return number _1 Docs call it 'enable', but it always returns 1.
function GetSpellCooldown(spellIndex, booktype) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetSpellName)
---@param i integer
---@param booktype BookType
---@return string name Name of the spell as it appears in the spellbook, eg. "Lesser Heal".
---@return string rank The spell rank or type, eg. "Rank 3", "Racial Passive". This can be an empty string. Note: for the Enchanting trade skill at rank Apprentice, the returned string contains a trailing space, ie. "Apprentice ". This might be the case for other trade skills and ranks also.
function GetSpellName(i, booktype) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetSpellTabInfo)
---@param spellbookTabIndex number Index of tab (starting from 1)
---@return string schoolName ex. General, Shadow, Fury
---@return string schoolTexture Texture path of tooltip for spell school.
---@return integer tabOffset Number of spell entries preceding this tab.
---@return integer numSpells Number of spells in this tab.
function GetSpellTabInfo(spellbookTabIndex) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_GetSpellTexture)
---@param i integer
---@param booktype BookType
---@return string path Texture path of tooltip for spell.
function GetSpellTexture(i, booktype) end

-- GetTrackingTexture()   - Return the texture of the current tracking buff, if one is active.
-- IsCurrentCast(id, "bookType")
-- IsSpellPassive(spellID, "bookType")   - Returns whether the icon in your spellbook is a Passive ability.
-- IsTrainerServiceLearnSpell(index)
-- PickupSpell(spellID, "bookType")   - Loads an action button onto the cursor to be dropped into a quickbar slot.
-- PlayerHasSpells()   - ?.
-- SpellCanTargetUnit("unit")   - Returns true if the spell awaiting target selection can be cast on the specified unit.
-- SpellIsTargeting()   - Returns true if a spell has been cast and is awaiting target selection.
-- SpellStopCasting()   - Stops the current spellcast. (As of 1.10 PTR, this function must be used in direct response to a hardware input event, such as a mouse click or key press.)
-- SpellStopTargeting()   - Cancels the spell awaiting target selection.
-- SpellTargetUnit("unit")   - Casts the spell awaiting target selection on the specified unit.
-- UI ToggleSpellBook("bookType")   - Shows the spellbook. Can show your spells or your pet's.
-- UpdateSpells()   - ?.
