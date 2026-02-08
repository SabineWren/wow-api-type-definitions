---@meta

UIDROPDOWNMENU_MAXBUTTONS = 32
UIDROPDOWNMENU_MAXLEVELS = 3
UIDROPDOWNMENU_BUTTON_HEIGHT = 16
UIDROPDOWNMENU_BORDER_HEIGHT = 15
UIDROPDOWNMENU_OPEN_MENU = nil ---@type nil
UIDROPDOWNMENU_INIT_MENU = nil ---@type nil
UIDROPDOWNMENU_MENU_LEVEL = 1
UIDROPDOWNMENU_MENU_VALUE = nil ---@type nil
UIDROPDOWNMENU_SHOW_TIME = 2
UIDROPDOWNMENU_DEFAULT_TEXT_HEIGHT = nil ---@type nil
OPEN_DROPDOWNMENUS = {  }

---@param frame any (type not inferred)
---@param initFunction any (type not inferred)
---@param displayMode any (type not inferred)
---@param level any (type not inferred)
---@return nil
function UIDropDownMenu_Initialize(frame, initFunction, displayMode, level) end

---@param elapsed any (type not inferred)
---@return nil
function UIDropDownMenu_OnUpdate(elapsed) end

---@param frame any (type not inferred)
---@return nil
function UIDropDownMenu_StartCounting(frame) end

---@param frame any (type not inferred)
---@return nil
function UIDropDownMenu_StopCounting(frame) end

---@param info any (type not inferred)
---@param level any (type not inferred)
---@return nil
function UIDropDownMenu_AddButton(info, level) end

---@param frame any (type not inferred)
---@param useValue any (type not inferred)
---@param dropdownLevel any (type not inferred)
---@return nil
function UIDropDownMenu_Refresh(frame, useValue, dropdownLevel) end

---@param frame any (type not inferred)
---@param name any (type not inferred)
---@param useValue any (type not inferred)
---@return nil
function UIDropDownMenu_SetSelectedName(frame, name, useValue) end

---@param frame any (type not inferred)
---@param value any (type not inferred)
---@param useValue any (type not inferred)
---@return nil
function UIDropDownMenu_SetSelectedValue(frame, value, useValue) end

---@param frame any (type not inferred)
---@param id any (type not inferred)
---@param useValue any (type not inferred)
---@return nil
function UIDropDownMenu_SetSelectedID(frame, id, useValue) end

---@param frame any (type not inferred)
---@return any frame.selectedName (type not inferred)
---@nodiscard
function UIDropDownMenu_GetSelectedName(frame) end

---@param frame any (type not inferred)
---@return nil
function UIDropDownMenu_GetSelectedID(frame) end

---@param frame any (type not inferred)
---@return any frame.selectedValue (type not inferred)
---@nodiscard
function UIDropDownMenu_GetSelectedValue(frame) end

---@return nil
function UIDropDownMenuButton_OnClick() end

---@param level any (type not inferred)
---@return nil
function HideDropDownMenu(level) end

---@param level any (type not inferred)
---@param value any (type not inferred)
---@param dropDownFrame any (type not inferred)
---@param anchorName any (type not inferred)
---@param xOffset any (type not inferred)
---@param yOffset any (type not inferred)
---@return nil
function ToggleDropDownMenu(level, value, dropDownFrame, anchorName, xOffset, yOffset) end

---@param level any (type not inferred)
---@return nil
function CloseDropDownMenus(level) end

---@param width any (type not inferred)
---@param frame any (type not inferred)
---@return nil
function UIDropDownMenu_SetWidth(width, frame) end

---@param width any (type not inferred)
---@param frame any (type not inferred)
---@return nil
function UIDropDownMenu_SetButtonWidth(width, frame) end

---@param text any (type not inferred)
---@param frame any (type not inferred)
---@return nil
function UIDropDownMenu_SetText(text, frame) end

---@param frame any (type not inferred)
---@return any x0 (type not inferred)
---@nodiscard
function UIDropDownMenu_GetText(frame) end

---@param frame any (type not inferred)
---@return nil
function UIDropDownMenu_ClearAll(frame) end

---@param justification any (type not inferred)
---@param frame any (type not inferred)
---@return nil
function UIDropDownMenu_JustifyText(justification, frame) end

---@param xOffset any (type not inferred)
---@param yOffset any (type not inferred)
---@param dropdown any (type not inferred)
---@param point any (type not inferred)
---@param relativeTo any (type not inferred)
---@param relativePoint any (type not inferred)
---@return nil
function UIDropDownMenu_SetAnchor(xOffset, yOffset, dropdown, point, relativeTo, relativePoint) end

---@return any this (type not inferred)
---@nodiscard
function UIDropDownMenu_GetCurrentDropDown() end

---@return any x0 (type not inferred)
---@nodiscard
function UIDropDownMenuButton_GetChecked() end

---@return any x0 (type not inferred)
---@nodiscard
function UIDropDownMenuButton_GetName() end

---@param button any (type not inferred)
---@return nil
function UIDropDownMenuButton_OpenColorPicker(button) end

---@param level any (type not inferred)
---@param id any (type not inferred)
---@return nil
function UIDropDownMenu_DisableButton(level, id) end

---@param level any (type not inferred)
---@param id any (type not inferred)
---@return nil
function UIDropDownMenu_EnableButton(level, id) end

---@param level any (type not inferred)
---@param id any (type not inferred)
---@param text any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@return nil
function UIDropDownMenu_SetButtonText(level, id, text, r, g, b) end