---@meta

--- Get number of items stored in a container.
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

---@param slotName InvSlotName
---@return InventorySlot invSlot
---@return string textureName
---@nodiscard
function GetInventorySlotInfo(slotName) end
