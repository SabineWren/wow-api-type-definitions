---@meta

MIRRORTIMER_NUMTIMERS = 3
MirrorTimerColors = {  }
MirrorTimerColors["EXHAUSTION"] = { r = 1.00, g = 0.90, b = 0.00 }
MirrorTimerColors["BREATH"] = { r = 0.00, g = 0.50, b = 1.00 }
MirrorTimerColors["DEATH"] = { r = 1.00, g = 0.70, b = 0.00 }
MirrorTimerColors["FEIGNDEATH"] = { r = 1.00, g = 0.70, b = 0.00 }

---@param timer any (type not inferred)
---@param value any (type not inferred)
---@param maxvalue any (type not inferred)
---@param scale any (type not inferred)
---@param paused any (type not inferred)
---@param label any (type not inferred)
---@return any dialog (type not inferred)
---@nodiscard
function MirrorTimer_Show(timer, value, maxvalue, scale, paused, label) end

---@return nil
function MirrorTimerFrame_OnLoad() end

---@return nil
function MirrorTimerFrame_OnEvent() end

---@param frame any (type not inferred)
---@param elapsed any (type not inferred)
---@return nil
function MirrorTimerFrame_OnUpdate(frame, elapsed) end