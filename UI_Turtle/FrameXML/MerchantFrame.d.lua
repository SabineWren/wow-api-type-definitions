---@meta

MERCHANT_ITEMS_PER_PAGE = 10
BUYBACK_ITEMS_PER_PAGE = 12

---@return nil
function MerchantFrame_OnLoad() end

---@return nil
function MerchantFrame_OnEvent() end

---@return nil
function MerchantFrame_OnShow() end

---@return nil
function MerchantFrame_OnHide() end

---@return nil
function MerchantFrame_Update() end

---@return nil
function MerchantFrame_UpdateMerchantInfo() end

---@return nil
function MerchantFrame_UpdateBuybackInfo() end

---@return nil
function MerchantPrevPageButton_OnClick() end

---@return nil
function MerchantNextPageButton_OnClick() end

---@return nil
function MerchantItemButton_OnLoad() end

---@param button any (type not inferred)
---@param ignoreModifiers any (type not inferred)
---@return nil
function MerchantItemButton_OnClick(button, ignoreModifiers) end