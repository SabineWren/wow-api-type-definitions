---@meta

---@param moneyFrame any (type not inferred)
---@return nil
function MoneyInputFrame_ResetMoney(moneyFrame) end

---@param moneyFrame any (type not inferred)
---@return nil
function MoneyInputFrame_ClearFocus(moneyFrame) end

---@param moneyFrame any (type not inferred)
---@return any totalCopper (type not inferred)
---@nodiscard
function MoneyInputFrame_GetCopper(moneyFrame) end

---@param moneyFrame any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@return nil
function MoneyInputFrame_SetTextColor(moneyFrame, r, g, b) end

---@param moneyFrame any (type not inferred)
---@param money any (type not inferred)
---@return nil
function MoneyInputFrame_SetCopper(moneyFrame, money) end

---@param moneyFrame any (type not inferred)
---@return nil
function MoneyInputFrame_OnTextChanged(moneyFrame) end

---@param frame any (type not inferred)
---@param mode any (type not inferred)
---@return nil
function MoneyInputFrame_SetMode(frame, mode) end

---@param moneyFrame any (type not inferred)
---@param focus any (type not inferred)
---@return nil
function MoneyInputFrame_SetPreviousFocus(moneyFrame, focus) end

---@param moneyFrame any (type not inferred)
---@param focus any (type not inferred)
---@return nil
function MoneyInputFrame_SetNextFocus(moneyFrame, focus) end

---@param moneyFrame any (type not inferred)
---@param func any (type not inferred)
---@return nil
function MoneyInputFrame_SetOnvalueChangedFunc(moneyFrame, func) end