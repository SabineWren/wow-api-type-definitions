---@meta

NUM_ALWAYS_UP_UI_FRAMES = 0
NUM_EXTENDED_UI_FRAMES = 0
MAX_WORLDSTATE_SCORE_BUTTONS = 22
MAX_NUM_STAT_COLUMNS = 7
WORLDSTATESCOREFRAME_BASE_WIDTH = 530
WORLDSTATESCOREFRAME_COLUMN_SPACING = 77
WORLDSTATECOREFRAME_BUTTON_TEXT_OFFSET = -32
ExtendedUI = {  }

---@return nil
function WorldStateAlwaysUpFrame_OnLoad() end

---@return nil
function WorldStateAlwaysUpFrame_OnEvent() end

---@return nil
function WorldStateAlwaysUpFrame_Update() end

---@return nil
function WorldStateFrame_ToggleMinimap() end

---@param id any (type not inferred)
---@return any frame (type not inferred)
---@nodiscard
function CaptureBar_Create(id) end

---@param id any (type not inferred)
---@param value any (type not inferred)
---@return nil
function CaptureBar_Update(id, value) end
ExtendedUI["CAPTUREPOINT"] = { name = "WorldStateCaptureBar", create = CaptureBar_Create, update = CaptureBar_Update, onHide = CaptureBar_Hide }

---@return nil
function WorldStateScoreFrame_OnLoad() end

---@return nil
function WorldStateScoreFrame_Update() end

---@param width any (type not inferred)
---@return nil
function WorldStateScoreFrame_Resize(width) end

---@param tab any (type not inferred)
---@return nil
function WorldStateScoreFrameTab_OnClick(tab) end

---@return nil
function ToggleWorldStateScoreFrame() end