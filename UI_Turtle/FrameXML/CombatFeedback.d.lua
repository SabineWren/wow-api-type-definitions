---@meta

COMBATFEEDBACK_FADEINTIME = 0.2
COMBATFEEDBACK_HOLDTIME = 0.7
COMBATFEEDBACK_FADEOUTTIME = 0.3
CombatFeedbackText = {  }

---@param feedbackText any (type not inferred)
---@param fontHeight any (type not inferred)
---@return nil
function CombatFeedback_Initialize(feedbackText, fontHeight) end

---@param event any (type not inferred)
---@param flags any (type not inferred)
---@param amount any (type not inferred)
---@param type any (type not inferred)
---@return nil
function CombatFeedback_OnCombatEvent(event, flags, amount, type) end

---@param elapsed any (type not inferred)
---@return nil
function CombatFeedback_OnUpdate(elapsed) end