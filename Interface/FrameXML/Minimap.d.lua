---@meta

MINIMAPPING_TIMER = 5
MINIMAPPING_FADE_TIMER = 0.5
CURSOR_OFFSET_X = -7
CURSOR_OFFSET_Y = -9

---@return nil
function Minimap_OnLoad() end

---@return nil
function ToggleMinimap() end

---@return nil
function Minimap_Update() end

---@return nil
function Minimap_OnEvent() end

---@param elapsed any (type not inferred)
---@return nil
function Minimap_OnUpdate(elapsed) end

---@param x any (type not inferred)
---@param y any (type not inferred)
---@param playSound any (type not inferred)
---@return nil
function Minimap_SetPing(x, y, playSound) end

---@return nil
function MiniMapPing_FadeOut() end

---@return nil
function Minimap_ZoomInClick() end

---@return nil
function Minimap_ZoomOutClick() end

---@return nil
function Minimap_OnClick() end

---@return nil
function Minimap_ZoomIn() end

---@return nil
function Minimap_ZoomOut() end

---@return nil
function ShowTWBGQueueMenu() end

---@return nil
function BuildTWBGQueueMenu() end