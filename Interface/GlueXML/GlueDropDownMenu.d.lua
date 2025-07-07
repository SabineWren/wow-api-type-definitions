---@meta

GLUEDROPDOWNMENU_MAXBUTTONS = 32
GLUEDROPDOWNMENU_MAXLEVELS = 3
GLUEDROPDOWNMENU_BUTTON_HEIGHT = 16
GLUEDROPDOWNMENU_BORDER_HEIGHT = 15
GLUEDROPDOWNMENU_OPEN_MENU = nil ---@type nil
GLUEDROPDOWNMENU_INIT_MENU = nil ---@type nil
GLUEDROPDOWNMENU_MENU_LEVEL = 1
GLUEDROPDOWNMENU_MENU_VALUE = nil ---@type nil
GLUEDROPDOWNMENU_SHOW_TIME = 2

---@param frame any (type not inferred)
---@param initFunction any (type not inferred)
---@param displayMode any (type not inferred)
---@param level any (type not inferred)
---@return nil
function GlueDropDownMenu_Initialize(frame, initFunction, displayMode, level) end

---@param elapsed any (type not inferred)
---@return nil
function GlueDropDownMenu_OnUpdate(elapsed) end

---@param frame any (type not inferred)
---@return nil
function GlueDropDownMenu_StartCounting(frame) end

---@param frame any (type not inferred)
---@return nil
function GlueDropDownMenu_StopCounting(frame) end

---@param info any (type not inferred)
---@param level any (type not inferred)
---@return nil
function GlueDropDownMenu_AddButton(info, level) end

---@param frame any (type not inferred)
---@param useValue any (type not inferred)
---@return nil
function GlueDropDownMenu_Refresh(frame, useValue) end

---@param frame any (type not inferred)
---@param name any (type not inferred)
---@param useValue any (type not inferred)
---@return nil
function GlueDropDownMenu_SetSelectedName(frame, name, useValue) end

---@param frame any (type not inferred)
---@param value any (type not inferred)
---@param useValue any (type not inferred)
---@return nil
function GlueDropDownMenu_SetSelectedValue(frame, value, useValue) end

---@param frame any (type not inferred)
---@param id any (type not inferred)
---@param useValue any (type not inferred)
---@return nil
function GlueDropDownMenu_SetSelectedID(frame, id, useValue) end

---@param frame any (type not inferred)
---@return any frame.selectedName (type not inferred)
---@nodiscard
function GlueDropDownMenu_GetSelectedName(frame) end

---@param frame any (type not inferred)
---@return nil
function GlueDropDownMenu_GetSelectedID(frame) end

---@param frame any (type not inferred)
---@return any frame.selectedValue (type not inferred)
---@nodiscard
function GlueDropDownMenu_GetSelectedValue(frame) end

---@return nil
function GlueDropDownMenuButton_OnClick() end

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
function GlueDropDownMenu_SetWidth(width, frame) end

---@param width any (type not inferred)
---@param frame any (type not inferred)
---@return nil
function GlueDropDownMenu_SetButtonWidth(width, frame) end

---@param text any (type not inferred)
---@param frame any (type not inferred)
---@return nil
function GlueDropDownMenu_SetText(text, frame) end

---@param frame any (type not inferred)
---@return any x0 (type not inferred)
---@nodiscard
function GlueDropDownMenu_GetText(frame) end

---@param frame any (type not inferred)
---@return nil
function GlueDropDownMenu_ClearAll(frame) end

---@param justification any (type not inferred)
---@param frame any (type not inferred)
---@return nil
function GlueDropDownMenu_JustifyText(justification, frame) end

---@param xOffset any (type not inferred)
---@param yOffset any (type not inferred)
---@param dropdown any (type not inferred)
---@param point any (type not inferred)
---@param relativeTo any (type not inferred)
---@param relativePoint any (type not inferred)
---@return nil
function GlueDropDownMenu_SetAnchor(xOffset, yOffset, dropdown, point, relativeTo, relativePoint) end

---@return any this (type not inferred)
---@nodiscard
function GlueDropDownMenu_GetCurrentDropDown() end

---@return any x0 (type not inferred)
---@nodiscard
function GlueDropDownMenuButton_GetChecked() end

---@return any x0 (type not inferred)
---@nodiscard
function GlueDropDownMenuButton_GetName() end

---@param button any (type not inferred)
---@return nil
function GlueDropDownMenuButton_OpenColorPicker(button) end

---@param level any (type not inferred)
---@param id any (type not inferred)
---@return nil
function GlueDropDownMenu_DisableButton(level, id) end

---@param level any (type not inferred)
---@param id any (type not inferred)
---@return nil
function GlueDropDownMenu_EnableButton(level, id) end

---@param level any (type not inferred)
---@param id any (type not inferred)
---@param text any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@return nil
function GlueDropDownMenu_SetButtonText(level, id, text, r, g, b) end