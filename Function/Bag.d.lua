---@meta

-- TODO
--- Get the name of one of the player's bags.
-- function GetBagName(bagID) end

-- TODO
-- function GetContainerItemCooldown(bagID, slot) end

--- Get the info for an item in one of the player's bags.
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

-- TODO
--- Returns the itemLink of the item located in bag#, slot#.
-- function GetContainerItemLink(bagID, slot) end

--- Get the size of a bag.
---@param bagId BagId
---@return integer numSlots
---@nodiscard
function GetContainerNumSlots(bagId) end

-- TODO
--- Returns 1 if the player has a keyring, nil otherwise.
-- function HasKey() end

-- TODO
--- Picks up the bag from the specified slot, placing it in the cursor. If an item is already picked up, this places the item into the specified slot, swapping the items if needed.
-- function PickupBagFromSlot(slot) end

---@param bagId BagId
---@param slot integer
---@return nil
function PickupContainerItem(bagId, slot) end

-- TODO
--- attempts to place item in backpack (bag slot 0).
-- function PutItemInBackpack() end

-- TODO
--- attempts to place item in a specific bag.
-- function PutItemInBag(inventoryId) end

-- TODO
-- function SetBagPortaitTexture(texture,slot) end

-- TODO
-- function SplitContainerItem(bagID,slot,amount) end

-- TODO
--- Uses an item located in bag# and slot#.
-- function UseContainerItem(bagID, slot, onSelf)
