---@meta

---@param maxStack any (type not inferred)
---@param parent any (type not inferred)
---@param anchor any (type not inferred)
---@param anchorTo any (type not inferred)
---@return nil
function OpenStackSplitFrame(maxStack, parent, anchor, anchorTo) end

---@param maxStack any (type not inferred)
---@return nil
function UpdateStackSplitFrame(maxStack) end

---@return nil
function StackSplitFrame_OnChar() end

---@return nil
function StackSplitFrame_OnKeyDown() end

---@return nil
function StackSplitFrameLeft_Click() end

---@return nil
function StackSplitFrameRight_Click() end

---@return nil
function StackSplitFrameOkay_Click() end

---@return nil
function StackSplitFrameCancel_Click() end

---@return nil
function StackSplitFrame_OnHide() end