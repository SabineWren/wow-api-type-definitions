---@meta

KEY_BINDINGS_DISPLAYED = 17
KEY_BINDING_HEIGHT = 22

---@return nil
function KeyBindingFrame_OnShow() end

---@return nil
function KeyBindingFrame_OnLoad() end

---@param name any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function KeyBindingFrame_GetLocalizedName(name, prefix) end

---@return nil
function KeyBindingFrame_Update() end

---@param button any (type not inferred)
---@return nil
function KeyBindingFrame_OnKeyDown(button) end

---@param button any (type not inferred)
---@return nil
function KeyBindingButton_OnClick(button) end

---@param key any (type not inferred)
---@param selectedBinding any (type not inferred)
---@param oldKey any (type not inferred)
---@return nil
function KeyBindingFrame_SetBinding(key, selectedBinding, oldKey) end