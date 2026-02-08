---@meta

TRADE_SKILLS_DISPLAYED = 8
MAX_TRADE_SKILL_REAGENTS = 8
TRADE_SKILL_HEIGHT = 16
TradeSkillTypeColor = {  }
TradeSkillTypeColor["optimal"] = { r = 1.00, g = 0.50, b = 0.25 }
TradeSkillTypeColor["medium"] = { r = 1.00, g = 1.00, b = 0.00 }
TradeSkillTypeColor["easy"] = { r = 0.25, g = 0.75, b = 0.25 }
TradeSkillTypeColor["trivial"] = { r = 0.50, g = 0.50, b = 0.50 }
TradeSkillTypeColor["header"] = { r = 1.00, g = 0.82, b = 0 }

---@return nil
function TradeSkillFrame_OnLoad() end

---@return nil
function TradeSkillFrame_OnEvent() end

---@return nil
function TradeSkillFrame_Update() end

---@param id any (type not inferred)
---@return nil
function TradeSkillFrame_SetSelection(id) end

---@param button any (type not inferred)
---@return nil
function TradeSkillSkillButton_OnClick(button) end

---@return nil
function TradeSkillCollapseAllButton_OnClick() end

---@return nil
function TradeSkillSubClassDropDown_OnLoad() end

---@return nil
function TradeSkillSubClassDropDown_OnShow() end

---@return nil
function TradeSkillSubClassDropDown_Initialize() end

---@param ... any (type not inferred)
---@return nil
function TradeSkillFilterFrame_LoadSubClasses(...) end

---@return nil
function TradeSkillInvSlotDropDown_OnLoad() end

---@return nil
function TradeSkillInvSlotDropDown_OnShow() end

---@return nil
function TradeSkillInvSlotDropDown_Initialize() end

---@param ... any (type not inferred)
---@return nil
function TradeSkillFilterFrame_LoadInvSlots(...) end

---@return nil
function TradeSkillSubClassDropDownButton_OnClick() end

---@return nil
function TradeSkillInvSlotDropDownButton_OnClick() end

---@return nil
function TradeSkillFrameIncrement_OnClick() end

---@return nil
function TradeSkillFrameDecrement_OnClick() end