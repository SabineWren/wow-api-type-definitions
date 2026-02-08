---@meta

---@return nil
function TextStatusBar_Initialize() end

---@param bar any (type not inferred)
---@param text any (type not inferred)
---@return nil
function SetTextStatusBarText(bar, text) end

---@param cvar any (type not inferred)
---@param value any (type not inferred)
---@return nil
function TextStatusBar_OnEvent(cvar, value) end

---@param textStatusBar any (type not inferred)
---@return nil
function TextStatusBar_UpdateTextString(textStatusBar) end

---@return nil
function TextStatusBar_OnValueChanged() end

---@param bar any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function SetTextStatusBarTextPrefix(bar, prefix) end

---@param bar any (type not inferred)
---@param zeroText any (type not inferred)
---@return nil
function SetTextStatusBarTextZeroText(bar, zeroText) end

---@param bar any (type not inferred)
---@return nil
function ShowTextStatusBarText(bar) end

---@param bar any (type not inferred)
---@return nil
function HideTextStatusBarText(bar) end