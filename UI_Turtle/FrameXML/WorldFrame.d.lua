---@meta

FRAMERATE_FREQUENCY = 0.25

---@return nil
function ToggleFramerate() end

---@param elapsed any (type not inferred)
---@return nil
function WorldFrame_OnUpdate(elapsed) end
SCREENSHOT_STATUS_FADETIME = 1.5

---@return nil
function TakeScreenshot() end

---@return nil
function ScreenshotStatus_OnLoad() end

---@param event any (type not inferred)
---@return nil
function ScreenshotStatus_OnEvent(event) end

---@param elapsed any (type not inferred)
---@return nil
function ScreenshotStatus_OnUpdate(elapsed) end