---@meta

--- Retrieves info about an item
---@param itemId integer
---@return string itemName
---@return string itemString The item id in string format, ex. "item:12345:0:0:0".
---@return ItemQuality itemQuality
---@return integer itemMinLevel The minimum level required to use the item, 0 being no level requirement.
---@return string itemType The type of the item. Armor, Weapon, Quest, Key, etc.
---@return string itemSubType The sub type of the item. Enchanting, Cloth, Sword, etc. See itemType.
---@return integer itemStackCount How many of the item per stack. ie. 20 for Runecloth, 1 for weapon, 100 for Alterac Ram Hide, etc.
---@return string itemEquipLoc Where the item may be equipped, if it can. The string returned is also the name of a global string variable, i.e. for "INVTYPE_HEAD" there is a INVTYPE_HEAD variable containing a localized, displayable name of the location.
---@return string itemTexture The name and path for the inventory icon texture for the item.
---@nodiscard
function GetItemInfo(itemId) end

--- Retrieves info about an item
---@param itemString string The item id in string format, ex. "item:12345:0:0:0".
---@return string itemName
---@return string itemString The item id in string format, ex. "item:12345:0:0:0".
---@return ItemQuality itemQuality
---@return integer itemMinLevel The minimum level required to use the item, 0 being no level requirement.
---@return string itemType The type of the item. Armor, Weapon, Quest, Key, etc.
---@return string itemSubType The sub type of the item. Enchanting, Cloth, Sword, etc. See itemType.
---@return integer itemStackCount How many of the item per stack. ie. 20 for Runecloth, 1 for weapon, 100 for Alterac Ram Hide, etc.
---@return string itemEquipLoc Where the item may be equipped, if it can. The string returned is also the name of a global string variable, i.e. for "INVTYPE_HEAD" there is a INVTYPE_HEAD variable containing a localized, displayable name of the location.
---@return string itemTexture The name and path for the inventory icon texture for the item.
---@nodiscard
function GetItemInfo(itemString) end
