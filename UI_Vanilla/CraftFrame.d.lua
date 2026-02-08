---@meta

CRAFTS_DISPLAYED = 8
MAX_CRAFT_REAGENTS = 8
CRAFT_SKILL_HEIGHT = 16
CraftTypeColor = {  }
CraftTypeColor["optimal"] = { r = 1.00, g = 0.50, b = 0.25 }
CraftTypeColor["medium"] = { r = 1.00, g = 1.00, b = 0.00 }
CraftTypeColor["easy"] = { r = 0.25, g = 0.75, b = 0.25 }
CraftTypeColor["trivial"] = { r = 0.50, g = 0.50, b = 0.50 }
CraftTypeColor["used"] = { r = 0.50, g = 0.50, b = 0.50 }
CraftTypeColor["header"] = { r = 1.00, g = 0.82, b = 0 }
CraftTypeColor["none"] = { r = 0.25, g = 0.75, b = 0.25 }
CraftSubTypeColor = {  }
CraftSubTypeColor["optimal"] = { r = 1.00, g = 0.50, b = 0.25 }
CraftSubTypeColor["medium"] = { r = 1.00, g = 1.00, b = 0.00 }
CraftSubTypeColor["easy"] = { r = 0.25, g = 0.75, b = 0.25 }
CraftSubTypeColor["trivial"] = { r = 0.50, g = 0.50, b = 0.50 }
CraftSubTypeColor["used"] = { r = 0.50, g = 0.50, b = 0.50 }
CraftSubTypeColor["header"] = { r = 1.00, g = 0.82, b = 0 }
CraftSubTypeColor["none"] = { r = 0, g = 0.45, b = 0 }

---@return nil
function CraftFrame_OnLoad() end

---@return nil
function CraftFrame_OnEvent() end

---@return nil
function CraftFrame_Update() end

---@param id any (type not inferred)
---@return nil
function CraftFrame_SetSelection(id) end

---@param button any (type not inferred)
---@return nil
function CraftButton_OnClick(button) end

---@return nil
function CraftCollapseAllButton_OnClick() end