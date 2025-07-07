---@meta

INVENTORY_ALERT_STATUS_SLOTS = {  }
INVENTORY_ALERT_STATUS_SLOTS[1] = { slot = "Head" }
INVENTORY_ALERT_STATUS_SLOTS[2] = { slot = "Shoulders" }
INVENTORY_ALERT_STATUS_SLOTS[3] = { slot = "Chest" }
INVENTORY_ALERT_STATUS_SLOTS[4] = { slot = "Waist" }
INVENTORY_ALERT_STATUS_SLOTS[5] = { slot = "Legs" }
INVENTORY_ALERT_STATUS_SLOTS[6] = { slot = "Feet" }
INVENTORY_ALERT_STATUS_SLOTS[7] = { slot = "Wrists" }
INVENTORY_ALERT_STATUS_SLOTS[8] = { slot = "Hands" }
INVENTORY_ALERT_STATUS_SLOTS[9] = { slot = "Weapon", showSeparate = 1 }
INVENTORY_ALERT_STATUS_SLOTS[10] = { slot = "Shield", showSeparate = 1 }
INVENTORY_ALERT_STATUS_SLOTS[11] = { slot = "Ranged", showSeparate = 1 }
INVENTORY_ALERT_COLORS = {  }
INVENTORY_ALERT_COLORS[0] = nil ---@type nil
INVENTORY_ALERT_COLORS[1] = nil ---@type nil
INVENTORY_ALERT_COLORS[2] = nil ---@type nil
INVENTORY_ALERT_COLORS[3] = { r = 1, g = 0.82, b = 0.18 }
INVENTORY_ALERT_COLORS[4] = { r = 0.93, g = 0.07, b = 0.07 }

---@return nil
function DurabilityFrame_SetAlerts() end

---@param elapsed any (type not inferred)
---@return nil
function DurabilityFrame_OnUpdate(elapsed) end