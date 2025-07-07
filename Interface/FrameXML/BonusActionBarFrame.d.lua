---@meta

BONUSACTIONBAR_SLIDETIME = 0.15
BONUSACTIONBAR_YPOS = 43
BONUSACTIONBAR_XPOS = 4
NUM_BONUS_ACTION_SLOTS = 12
NUM_SHAPESHIFT_SLOTS = 10

---@return nil
function BonusActionBar_OnLoad() end

---@return nil
function BonusActionBar_OnEvent() end

---@param elapsed any (type not inferred)
---@return nil
function BonusActionBar_OnUpdate(elapsed) end

---@return nil
function ShowBonusActionBar() end

---@return nil
function HideBonusActionBar() end

---@return nil
function BonusActionButton_OnEvent() end

---@param id any (type not inferred)
---@return nil
function BonusActionButtonUp(id) end

---@param id any (type not inferred)
---@return nil
function BonusActionButtonDown(id) end

---@param state any (type not inferred)
---@return nil
function BonusActionBar_SetButtonTransitionState(state) end

---@return nil
function ShapeshiftBar_OnLoad() end

---@return nil
function ShapeshiftBar_OnEvent() end

---@return nil
function ShapeshiftBar_Update() end

---@return nil
function ShapeshiftBar_UpdateState() end

---@param id any (type not inferred)
---@return nil
function ShapeshiftBar_ChangeForm(id) end

---@return nil
function ShapeshiftBar_UpdatePosition() end