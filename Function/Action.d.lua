---@meta

--- Determine if specified action has a numeric range requirement.
---@param slot ActionBarSlot
---@return nil|1
---@nodiscard
function ActionHasRange(slot) end

--- Changes the current action button set to CURRENT_ACTIONBAR_PAGE.
--- - TODO wiki conflicts for 1.12: may or may not have a parameter.
--- - Notifies the UI that the current action button set has been updated to the current value of the CURRENT_ACTIONBAR_PAGE global variable.
--- - Will cause an ACTIONBAR_PAGE_CHANGED event to fire only if there was actually a change.
---@param actionBarPage integer (usually 1-6)
---@return nil
function ChangeActionBarPage(actionBarPage) end

--- Return the toggles for each action bar.
---@return nil|1 bottomLeftState 1 if the left-hand bottom action bar is shown.
---@return nil|1 bottomRightState 1 if the right-hand bottom action bar is shown
---@return nil|1 sideRightState 1 if the first (outer) right side action bar is shown.
---@return nil|1 sideRight2State 1 if the second (inner) right side action bar is shown.
---@nodiscard
function GetActionBarToggles() end

--- This returns the cooldown values of the specified action.
---@param slot ActionBarSlot
---@return number start The time at which the current cooldown period began (relative to the result of GetTime), or 0 if the cooldown is not active or not applicable.
---@return number duration The duration of the current cooldown period in seconds, or 0 if the cooldown is not active or not applicable.
---@return number enable Indicate if cooldown is enabled. Returns greater than 0 if a cooldown is active, and 0 if a cooldown cannot be active. This lets you know when a shapeshifting form has ended and the actual countdown has started.
---@nodiscard
function GetActionCooldown(slot) end

--- Get the count (bandage/potion/etc) for an action.
--- - Returns 0 if the action has no count or if the specified action slot is empty.
--- - The action's count as displayed on the action's icon; ex. for a potion action, returns the number of potions left.
---@param slot ActionBarSlot
---@return number
---@nodiscard
function GetActionCount(slot) end

--- Get the text label (macros, etc) for an action, returns nil if none.
--- - nil if the slot has no action text, or is empty.
--- - Macro actions use their names for their action text.
--- - Most standard WoW action icons don't have action text.
---@param slot ActionBarSlot
---@return nil|string
---@nodiscard
function GetActionText(slot) end

--- Get filepath for an action's texture, i.e. icon image.
--- - Returns nil if the slot is empty.
---@param slot ActionBarSlot
---@return nil|string filepath
---@nodiscard
function GetActionTexture(slot) end

--- Determine which page of bonus actions to show.
--- - Warrior
--- - Battle Stance: 1
--- - Defensive Stance: 2
--- - Berserker Stance: 3
--- - Druid
--- - Caster: 0
--- - Cat: 1
--- - Tree of Life: 2
--- - Bear: 3
--- - Moonkin: 4
--- - Rogue
--- - Normal: 0
--- - Stealthed: 1
--- - Priest
--- - Normal: 0
--- - Shadowform: 1
---@return integer offset The current bonus action bar index.
---@nodiscard
function GetBonusBarOffset() end

--- Check if the player has an action in the specified slot.
---@param slot ActionBarSlot
---@return nil|1
---@nodiscard
function HasAction(slot) end

--- Test if an action is in range (1=yes, 0=no, nil=not applicable).
---@param slot ActionBarSlot
---@return nil|0|1
---@nodiscard
function IsActionInRange(slot) end

--- Return 1 if an action is an 'attack' action (flashes during combat), nil otherwise.
---@param slot ActionBarSlot
---@return nil|1
---@nodiscard
function IsAttackAction(slot) end

--- Return 1 if an action is auto-repeating, nil otherwise.
---@param slot ActionBarSlot
---@return nil|1
---@nodiscard
function IsAutoRepeatAction(slot) end

--- Return 1 if an action is the one currently underway, nil otherwise.
---@param slot ActionBarSlot
---@return nil|1
---@nodiscard
function IsCurrentAction(slot) end

--- Return 1 if an action can be used at present, nil otherwise.
---@param slot ActionBarSlot
---@return nil|1
---@nodiscard
function IsUsableAction(slot) end

--- Return 1 if an action is consumable (i.e. has a count), nil otherwise.
---@param slot ActionBarSlot
---@return nil|1
---@nodiscard
function IsConsumableAction(slot) end

--- Return 1 if an action is equipped (i.e. connected to an item that must be equipped), nil otherwise.
---@param slot ActionBarSlot
---@return nil|1
---@nodiscard
function IsEquippedAction(slot) end

--- Drags an action out of the specified quickbar slot and holds it on the cursor.
---@param slot ActionBarSlot
---@return nil
function PickupAction(slot) end

--- Drops an action from the cursor into the specified quickbar slot.
--- - IMPORTANT: You can crash your client if you send an invalid slot number.
---@param slot ActionBarSlot
---@return nil
function PlaceAction(slot) end

--- Set show toggle for each action bar.
--- <br>This doesn't actually change the action bar states directly, it simply registers the desired states for the next time the game is loaded. The states during play are in the variables SHOW_MULTI_ACTIONBAR_1, SHOW_MULTI_ACTIONBAR_2, SHOW_MULTI_ACTIONBAR_3, SHOW_MULTI_ACTIONBAR_4, and reflected by calling MultiActionBar_Update().
---@param bottomLeft nil|0|1 1 if the left-hand bottom action bar is to be shown, 0 or nil otherwise.
---@param bottomRight nil|0|1 1 if the right-hand bottom action bar is to be shown, 0 or nil otherwise.
---@param sideRight nil|0|1 1 if the first (outer) right side action bar is to be shown, 0 or nil otherwise.
---@param sideRight2 nil|0|1 1 if the second (inner) right side action bar is to be shown, 0 or nil otherwise.
---@param alwaysShow? nil|0|1 1 if the bars are always shown, 0 or nil otherwise.
---@return nil
function SetActionBarToggles(bottomLeft, bottomRight, sideRight, sideRight2, alwaysShow) end

--- This instructs the interface to use the action associated with the specified ID, optionally selfcasting.
---@param slot ActionBarSlot
---@param checkCursor? nil|0|1 If 0, use the action even if another item/skill is on the cursor. If 1, replace the action on the slot with the one on the cursor.
---@param onSelf? nil|0|1 If present and 1, the action is performed on the player. If "true" is passed instead of 1, Blizzard produces a Lua error.
---@return nil
function UseAction(slot, checkCursor, onSelf) end
