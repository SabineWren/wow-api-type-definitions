---@meta

MAX_TRADE_ITEMS = 7
MAX_TRADABLE_ITEMS = 6

---@return nil
function TradeFrame_OnLoad() end

---@return nil
function TradeFrame_OnShow() end

---@return nil
function TradeFrame_OnEvent() end

---@return nil
function TradeFrame_Update() end

---@param id any (type not inferred)
---@return nil
function TradeFrame_UpdatePlayerItem(id) end

---@param id any (type not inferred)
---@return nil
function TradeFrame_UpdateTargetItem(id) end

---@param playerState any (type not inferred)
---@param targetState any (type not inferred)
---@return nil
function TradeFrame_SetAcceptState(playerState, targetState) end

---@return nil
function TradeFrameCancelButton_OnClick() end

---@return nil
function TradeFrame_OnHide() end

---@return nil
function TradeFrame_OnMouseUp() end

---@return nil
function TradeFrame_UpdateMoney() end

---@return nil nil
---@nodiscard
function TradeFrame_GetAvailableSlot() end