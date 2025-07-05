---@meta

--- Causes the equipment on the cursor to be equipped.<br>
--- ex. Equip the first item from your backpack.<br>
--- /run PickupContainerItem(0,1)<br>
--- /run AutoEquipCursorItem()<br>
---@return nil
function AutoEquipCursorItem() end

--- Returns the ID number of a bank button in terms of inventory slot ID.
--- - Will return nonsense values when given invalid input.
--- - TODO is there a valid enum for bankItemId?
---@param bankItemId number
---@param isBag? nil
---@return InventorySlotId
---@nodiscard
function BankButtonIDToInvSlotID(bankItemId, isBag) end

--- Returns the ID number of a bank bag in terms of inventory slot ID.
--- - Will return nonsense values when given invalid input.
--- - Similar to [ContainerIDToInventoryID](lua://ContainerIDToInventoryID)
---@param bagId BankBagId
---@param isBag 1
---@return InventorySlotId_BankBag
---@nodiscard
function BankButtonIDToInvSlotID(bagId, isBag) end

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
--- - Will return nonsense values when given invalid input.
---@param bagId BagIdStrict
---@return InventorySlotId_Bag
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

--- Get cooldown information for an inventory item.
---@param unit UnitId
---@param invSlot InventorySlotId
---@return number start 0 if no item or no CD.
---@return number duration 0 if no item or no CD.
---@return 0|1 enable 1 if item can have a CD, else 0.
---@nodiscard
function GetInventoryItemCooldown(unit, invSlot) end

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

--- Returns an itemLink for an inventory (equipped) item.
---@param unit UnitId
---@param invSlot InventorySlotId
---@return string|nil link nil if slot is empty.
---@nodiscard
function GetInventoryItemLink(unit, invSlot) end

--- Return the quality of an inventory item.
---@param unit UnitId
---@param invSlot InventorySlotId
---@return ItemQuality|nil quality nil if slot is empty.
---@nodiscard
function GetInventoryItemQuality(unit, invSlot) end

--- Return the texture for an inventory item.
---@param unit UnitId
---@param invSlot InventorySlotId
---@return string|nil texturePath nil if slot is empty.
---@nodiscard
function GetInventoryItemTexture(unit, invSlot) end

--- Get the info for a named inventory slot (slot ID and texture)
---@param slotName InvSlotName
---@return InventorySlotId invSlot
---@return string textureName
---@nodiscard
function GetInventorySlotInfo(slotName) end

--- Return information about main and offhand weapon enchantments.
--- - Used for temporary enchants, ex. poisons.
--- - Self (player) only.
---@return 1|nil hasMainHandEnchant
---@return number mainHandExpiration Time remaining as thousands of seconds.
---@return integer mainHandCharges Charges remaining.
---@return 1|nil hasOffHandEnchant
---@return number offHandExpiration Time remaining as thousands of seconds.
---@return integer offHandCharges Charges remaining.
---@nodiscard
function GetWeaponEnchantInfo() end

---@return 1|nil hasWand 1 if a wand is equipped, else nil.
---@nodiscard
function HasWandEquipped() end

--- Returns whether an inventory item is locked, usually as it awaits pending action.
---@param invSlot InventorySlotId
---@return boolean isLocked
---@nodiscard
function IsInventoryItemLocked(invSlot) end

--- Map a keyring button to an inventory slot button for use in inventory functions.
--- - TODO is there a valid enum for keyRingButtonId?
---@param keyRingButtonId integer
---@return InventorySlotId
---@nodiscard
function KeyRingButtonIDToInvSlotID(keyRingButtonId) end

--- Picks up the bag from the specified slot, placing it in the cursor. If an item is already picked up, this places the item into the specified slot, swapping the items if needed.
---@param slot InventorySlotId_Bag
function PickupBagFromSlot(slot) end

--- Cursor grabs an item from the player's worn inventory. If the cursor already has an item, it will swap the items.
---@param invSlot InventorySlotId
---@return nil
function PickupInventoryItem(invSlot) end

--- Set the texture to display in the Inventory (character) screen.
--- - TODO not documented on wiki.
--- - Possibly related to SetPortraitTexture.
function SetInventoryPortaitTexture() end

--- - TODO not documented on wiki.
function UpdateInventoryAlertStatus() end

--- Use an item in a specific inventory slot.
--- - Only callable from input event handlers (key, button, icon).
---@param invSlot InventorySlotId
---@return nil
function UseInventoryItem(invSlot) end
