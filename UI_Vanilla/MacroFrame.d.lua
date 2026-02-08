---@meta

MAX_MACROS = 18
NUM_MACRO_ICONS_SHOWN = 20
NUM_ICONS_PER_ROW = 5
NUM_ICON_ROWS = 4
MACRO_ICON_ROW_HEIGHT = 36

---@return nil
function MacroFrame_OnLoad() end

---@return nil
function MacroFrame_OnShow() end

---@return nil
function MacroFrame_OnHide() end

---@return nil
function MacroFrame_Update() end

---@param line any (type not inferred)
---@return nil
function MacroFrame_AddMacroLine(line) end

---@return nil
function MacroButton_OnClick() end

---@param id any (type not inferred)
---@return nil
function MacroFrame_SelectMacro(id) end

---@return nil
function MacroNewButton_OnClick() end

---@return nil
function MacroEditButton_OnClick() end

---@return nil
function MacroFrame_HideDetails() end

---@return nil
function MacroFrame_ShowDetails() end

---@return nil
function MacroPopupFrame_OnShow() end

---@return nil
function MacroPopupFrame_OnHide() end

---@return nil
function MacroPopupFrame_Update() end

---@return nil
function MacroPopupOkayButton_Update() end

---@return nil
function MacroPopupButton_OnClick() end

---@return nil
function MacroPopupOkayButton_OnClick() end

---@return nil
function MacroFrame_EditMacro() end