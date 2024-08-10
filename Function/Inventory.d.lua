---@meta

--- Causes the equipment on the cursor to be equipped.
function AutoEquipCursorItem() end

--- Returns the ID number of a bank button in terms of inventory slot ID.
function BankButtonIDToInvSlotID(buttonID) end

--- This function is used to cancel a pending equip.
function CancelPendingEquip(index) end

--- No description
function ConfirmBindOnUse() end

--- No description
function ContainerIDToInventoryID(bagID) end

--- Return true if the item currently held by the cursor can go into the given inventory (equipment) slot
function CursorCanGoInSlot(invSlot) end

--- No description
function EquipCursorItem(invSlot) end

--- Equips the currently pending Bind-on-Equip or Bind-on-Pickup item from the specified inventory slot. (Internal   - do not use)   - No description
function EquipPendingItem(invSlot) end

--- Returns one of several codes describing the "status" of an equipped item.
function GetInventoryAlertStatus(index) end

--- Determine if an inventory item is broken (no durability).
---@param unit UnitId
function GetInventoryItemBroken(unit, invSlot) end

--- Get cooldown information for an inventory item.
---@param unit UnitId
function GetInventoryItemCooldown(unit, invSlot) end

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
---@param invSlot InventorySlot
---@return number
---@nodiscard
function GetInventoryItemCount(unit, invSlot) end

--- Returns an itemLink for an inventory (equipped) item.
---@param unit UnitId
function GetInventoryItemLink(unit, invSlot) end

--- Return the quality of an inventory item.
---@param unit UnitId
function GetInventoryItemQuality(unit, invSlot) end

--- Return the texture for an inventory item.
---@param unit UnitId
function GetInventoryItemTexture(unit, invSlot) end

--- Get the info for a named inventory slot (slot ID and texture)
---@param slotName InvSlotName
---@return InventorySlot invSlot
---@return string textureName
---@nodiscard
function GetInventorySlotInfo(slotName) end

--- Return information about main and offhand weapon enchantments.
function GetWeaponEnchantInfo() end

--- Returns 1 if a wand is equipped, false otherwise.
function HasWandEquipped() end

--- Returns whether an inventory item is locked, usually as it awaits pending action.
function IsInventoryItemLocked(id) end

--- Map a keyring button to an inventory slot button for use in inventory functions.
function KeyRingButtonIDToInvSlotID(buttonID) end

--- Picks up the bag from the specified slot, placing it in the cursor. If an item is already picked up, this places the item into the specified slot, swapping the items if needed.
function PickupBagFromSlot(slot) end

--- "Picks up" an item from the player's worn inventory.
function PickupInventoryItem(invSlot) end

--- no description
function SetInventoryPortaitTexture() end

--- No description
function UpdateInventoryAlertStatus() end

--- Use an item in a specific inventory slot.
function UseInventoryItem(invSlot) end
