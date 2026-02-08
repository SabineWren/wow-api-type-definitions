---@meta

UIMENU_BUTTON_HEIGHT = 16
UIMENU_BUTTON_WIDTH = 104
UIMENU_BORDER_HEIGHT = 12
UIMENU_BORDER_WIDTH = 12
UIMENU_NUMBUTTONS = 32
UIMENU_TIMEOUT = 2.0

---@return nil
function UIMenu_Initialize() end

---@return nil
function UIMenu_OnShow() end

---@param text any (type not inferred)
---@param shortcut any (type not inferred)
---@param func any (type not inferred)
---@param nested any (type not inferred)
---@return nil
function UIMenu_AddButton(text, shortcut, func, nested) end

---@param elapsed any (type not inferred)
---@return nil
function UIMenu_OnUpdate(elapsed) end

---@return nil
function UIMenuButton_OnLoad() end

---@return nil
function UIMenuButton_OnClick() end

---@param menu any (type not inferred)
---@return nil
function UIMenu_StartCounting(menu) end

---@param menu any (type not inferred)
---@return nil
function UIMenu_StopCounting(menu) end

---@return nil
function UIMenuButton_OnEnter() end

---@return nil
function UIMenuButton_OnLeave() end