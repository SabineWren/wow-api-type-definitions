---@meta

BATTLEFIELD_ZONES_DISPLAYED = 12
BATTLEFIELD_ZONES_HEIGHT = 20
BATTLEFIELD_SHUTDOWN_TIMER = 0
BATTLEFIELD_TIMER_THRESHOLDS = { 600, 300, 60, 15 }
BATTLEFIELD_TIMER_THRESHOLD_INDEX = 1
PREVIOUS_BATTLEFIELD_MOD = 0
BATTLEFIELD_TIMER_DELAY = 3
BATTLEFIELD_MAP_WIDTH = 320
BATTLEFIELD_MAP_HEIGHT = 213
MAX_BATTLEFIELD_QUEUES = 3
CURRENT_BATTLEFIELD_QUEUES = {  }
PREVIOUS_BATTLEFIELD_QUEUES = {  }

---@return nil
function BattlefieldFrame_OnLoad() end

---@return nil
function BattlefieldFrame_OnEvent() end

---@param elapsed any (type not inferred)
---@return nil
function BattlefieldFrame_OnUpdate(elapsed) end

---@param tooltipOnly any (type not inferred)
---@return nil
function BattlefieldFrame_UpdateStatus(tooltipOnly) end

---@return nil
function BattlefieldFrame_Update() end

---@param id any (type not inferred)
---@return nil
function BattlefieldButton_OnClick(id) end

---@param joinAsGroup any (type not inferred)
---@return nil
function BattlefieldFrameJoinButton_OnClick(joinAsGroup) end

---@return nil
function MiniMapBattlefieldDropDown_OnLoad() end

---@return nil
function MiniMapBattlefieldDropDown_Initialize() end

---@return nil
function BattlegroundShineFadeIn() end

---@return nil
function BattlegroundShineFadeOut() end

---@param mapName any (type not inferred)
---@return any inQueue (type not inferred)
---@nodiscard
function IsAlreadyInQueue(mapName) end