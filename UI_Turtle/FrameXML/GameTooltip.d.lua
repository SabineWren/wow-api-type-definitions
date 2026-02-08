---@meta

TOOLTIP_DEFAULT_COLOR = { r = 1, g = 1, b = 1 }
TOOLTIP_DEFAULT_BACKGROUND_COLOR = { r = 0.09, g = 0.09, b = 0.19 }
DEFAULT_TOOLTIP_POSITION = -13

---@param unit any (type not inferred)
---@return any r (type not inferred)
---@return any g (type not inferred)
---@return any b (type not inferred)
---@nodiscard
function GameTooltip_UnitColor(unit) end

--Manual
---@param tooltip GameTooltip
---@param parent Frame
---@return nil
function GameTooltip_SetDefaultAnchor(tooltip, parent) end

---@return nil
function GameTooltip_OnLoad() end

---@param frame any (type not inferred)
---@param money any (type not inferred)
---@return nil
function SetTooltipMoney(frame, money) end

---@return nil
function GameTooltip_ClearMoney() end

---@return nil
function GameTooltip_OnHide() end

---@param normalText any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@param newbieText any (type not inferred)
---@param noNormalText any (type not inferred)
---@return nil
function GameTooltip_AddNewbieTip(normalText, r, g, b, newbieText, noNormalText) end
