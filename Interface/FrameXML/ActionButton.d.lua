---@meta

CURRENT_ACTIONBAR_PAGE = 1
NUM_ACTIONBAR_PAGES = 6
NUM_ACTIONBAR_BUTTONS = 12
ATTACK_BUTTON_FLASH_TIME = 0.4
BOTTOMLEFT_ACTIONBAR_PAGE = 6
BOTTOMRIGHT_ACTIONBAR_PAGE = 5
LEFT_ACTIONBAR_PAGE = 4
RIGHT_ACTIONBAR_PAGE = 3
RANGE_INDICATOR = "●"
VIEWABLE_ACTION_BAR_PAGES = { 1, 1, 1, 1, 1, 1 }

---@param id any (type not inferred)
---@return nil
function ActionButtonDown(id) end

---@param id any (type not inferred)
---@param onSelf any (type not inferred)
---@return nil
function ActionButtonUp(id, onSelf) end

---@return nil
function ActionBar_PageUp() end

---@return nil
function ActionBar_PageDown() end

---@return nil
function ActionButton_OnLoad() end

---@param actionButtonType any (type not inferred)
---@return nil
function ActionButton_UpdateHotkeys(actionButtonType) end

---@return nil
function ActionButton_Update() end

---@param button any (type not inferred)
---@return nil
function ActionButton_ShowGrid(button) end

---@param button any (type not inferred)
---@return nil
function ActionButton_HideGrid(button) end

---@return nil
function ActionButton_UpdateState() end

---@return nil
function ActionButton_UpdateUsable() end

---@return nil
function ActionButton_UpdateCount() end

---@return nil
function ActionButton_UpdateCooldown() end

---@param event any (type not inferred)
---@return nil
function ActionButton_OnEvent(event) end

---@return nil
function ActionButton_SetTooltip() end

---@param elapsed any (type not inferred)
---@return nil
function ActionButton_OnUpdate(elapsed) end

---@param button any (type not inferred)
---@return nil
function ActionButton_GetPagedID(button) end

---@return nil
function ActionButton_UpdateFlash() end

---@return nil
function ActionButton_StartFlash() end

---@return nil
function ActionButton_StopFlash() end

---@return nil
function ActionButton_IsFlashing() end