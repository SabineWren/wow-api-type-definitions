---@meta

MONEY_ICON_WIDTH = 19
MONEY_ICON_WIDTH_SMALL = 13
MONEY_BUTTON_SPACING = -4
MONEY_BUTTON_SPACING_SMALL = -4
COPPER_PER_SILVER = 100
SILVER_PER_GOLD = 100
COPPER_PER_GOLD = 0 ---@type number
COIN_BUTTON_WIDTH = 32
MoneyTypeInfo = {  }
MoneyTypeInfo["PLAYER"] = { UpdateFunc = function() end, PickupFunc = function(amount) end, DropFunc = function() end, collapse = 1, canPickup = 1, showSmallerCoins = "Backpack" }
MoneyTypeInfo["STATIC"] = { UpdateFunc = function() end, collapse = 1 }
MoneyTypeInfo["AUCTION"] = { UpdateFunc = function() end, showSmallerCoins = "Backpack", fixedWidth = 1, collapse = 1, truncateSmallCoins = nil }
MoneyTypeInfo["PLAYER_TRADE"] = { UpdateFunc = function() end, PickupFunc = function(amount) end, DropFunc = function() end, collapse = 1, canPickup = 1 }
MoneyTypeInfo["TARGET_TRADE"] = { UpdateFunc = function() end, collapse = 1 }
MoneyTypeInfo["SEND_MAIL"] = { UpdateFunc = function() end, PickupFunc = function(amount) end, DropFunc = function() end, collapse = nil, canPickup = 1, showSmallerCoins = "Backpack" }
MoneyTypeInfo["SEND_MAIL_COD"] = { UpdateFunc = function() end, PickupFunc = function(amount) end, DropFunc = function() end, collapse = 1, canPickup = 1 }

---@return nil
function MoneyFrame_OnLoad() end

---@return nil
function SmallMoneyFrame_OnLoad() end

---@return nil
function MoneyFrame_OnEvent() end

---@param type any (type not inferred)
---@return nil
function MoneyFrame_SetType(type) end

---@return nil
function MoneyFrame_UpdateMoney() end

---@param frameName any (type not inferred)
---@param money any (type not inferred)
---@return nil
function MoneyFrame_Update(frameName, money) end

---@param frameName any (type not inferred)
---@param money any (type not inferred)
---@param small any (type not inferred)
---@param collapse any (type not inferred)
---@param showSmallerCoins any (type not inferred)
---@return nil
function RefreshMoneyFrame(frameName, money, small, collapse, showSmallerCoins) end

---@param frameName any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@return nil
function SetMoneyFrameColor(frameName, r, g, b) end