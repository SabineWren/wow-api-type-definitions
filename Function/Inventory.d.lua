---@meta

--- Causes the equipment on the cursor to be equipped.<br>
--- ex. Equip the first item from your backpack.<br>
--- /run PickupContainerItem(0,1)<br>
--- /run AutoEquipCursorItem()<br>
---@return nil
function AutoEquipCursorItem() end

-- TODO bank
--- Returns the ID number of a bank button in terms of inventory slot ID.
function BankButtonIDToInvSlotID(buttonID) end

--- When a user attempts to (1) loot a BoP item or (2) equip a BoE item,
--- the client opens a dialog to confirm equip.
--- Pressing 'cancel' calls this function.
---@return nil
function CancelPendingEquip(index) end

--- When a user attempts to (1) loot a BoP item or (2) equip a BoE item,
--- the client opens a dialog to confirm equip.
--- Pressing 'confirm' calls this function.
---@return nil
function ConfirmBindOnUse() end

--- Maps a strict subset of BagIds to InventorySlotIds.
--- Will return nonsense values when given invalid input.
---@param bagId BagIdStrict
---@return InventorySlotId
---@nodiscard
function ContainerIDToInventoryID(bagId) end

--- Predicate checking if the item currently held by cursor can go into the given inventory slot.
---@param invSlot InventorySlotId
---@return boolean
---@nodiscard
function CursorCanGoInSlot(invSlot) end

--- Equips the item currently held by cursor into the given inventory slot.
---@param invSlot InventorySlotId
---@return nil
function EquipCursorItem(invSlot) end

-- Internal function
-- function EquipPendingItem(invSlot) end

--- Returns one of several codes describing the "status" of an equipped item.
---@param i "Head" | "Shoulders" | "Chest" | "Waist" | "Legs" | "Feet" | "Wrists" | "Hands" | "Weapon" | "Shield" | "Ranged"
---@return 0 | 1 | 2 status Normal=0 (6+ durability), Yellow=1 (1-5 durability), Broken=2
---@nodiscard
function GetInventoryAlertStatus(i) end

--- Determine if an inventory item is broken (no durability).
---@param unit UnitId
---@param invSlot InventorySlotId
---@return boolean broken
---@nodiscard
function GetInventoryItemBroken(unit, invSlot) end

-- TODO
--- Get cooldown information for an inventory item.
---@param unit UnitId
function GetInventoryItemCooldown(unit, invSlot) end

-- TODO
--- Determine the quantity of an item in an inventory slot.
---@param unit UnitId
function GetInventoryItemCount(unit, invSlot) end

--- Determine the quantity of an item in an inventory slot.
--- - Returns 1 for normal items.
--- - Returns 1 for empty slots (including empty ammo slots).
--- - Returns the number of the item in the specified slot otherwise.
--- - Therefore, to disambiguate 0 ammo from 1 ammo, you need to check the texture:
---```
--- local ammoSlot = GetInventorySlotInfo("AmmoSlot")
--- local ammoCount = GetInventoryItemCount("player", ammoSlot)
--- if ((ammoCount == 1) and (not GetInventoryItemTexture("player", ammoSlot))) then
---    ammoCount = 0
--- end
---```
---@param unit UnitId
---@param invSlot InventorySlotId
---@return number
---@nodiscard
function GetInventoryItemCount(unit, invSlot) end

-- TODO
--- Returns an itemLink for an inventory (equipped) item.
---@param unit UnitId
function GetInventoryItemLink(unit, invSlot) end

-- TODO
--- Return the quality of an inventory item.
---@param unit UnitId
function GetInventoryItemQuality(unit, invSlot) end

-- TODO
--- Return the texture for an inventory item.
---@param unit UnitId
function GetInventoryItemTexture(unit, invSlot) end

--- Get the info for a named inventory slot (slot ID and texture)
---@param slotName InvSlotName
---@return InventorySlotId invSlot
---@return string textureName
---@nodiscard
function GetInventorySlotInfo(slotName) end

-- TODO
--- Return information about main and offhand weapon enchantments.
function GetWeaponEnchantInfo() end

-- TODO
--- Returns 1 if a wand is equipped, false otherwise.
function HasWandEquipped() end

--- Returns whether an inventory item is locked, usually as it awaits pending action.
---@param invSlot InventorySlotId
---@return boolean isLocked
---@nodiscard
function IsInventoryItemLocked(invSlot) end

-- TODO
--- Map a keyring button to an inventory slot button for use in inventory functions.
function KeyRingButtonIDToInvSlotID(buttonID) end

-- TODO
--- Picks up the bag from the specified slot, placing it in the cursor. If an item is already picked up, this places the item into the specified slot, swapping the items if needed.
function PickupBagFromSlot(slot) end

--- Cursor grabs an item from the player's worn inventory. If the cursor already has an item, it will swap the items.
---@param invSlot InventorySlotId
---@return nil
function PickupInventoryItem(invSlot) end

-- TODO
--- no description
function SetInventoryPortaitTexture() end

-- TODO
--- No description
function UpdateInventoryAlertStatus() end

-- TODO
--- Use an item in a specific inventory slot.
function UseInventoryItem(invSlot) end
