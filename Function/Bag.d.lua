---@meta

---@param bagId BagId
---@param slot integer
---@return string texture Texture name
---@return integer itemCount Number of items in the bag slot
---@return boolean locked Locked by the server
---@return integer quality Numeric item quality
---@return boolean readable If the item can be "read" (a book)
---@return boolean lootable If the item is a temporary container containing items that can be looted
---@return ItemLink
---@nodiscard
function GetContainerItemInfo(bagId, slot) end

---@param bagId BagId
---@param slot integer
---@return nil
function PickupContainerItem(bagId, slot) end
