---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#Region)
--- <br>Abstract UI type. Not directly related to Frame:GetRegions() et al.
--- <br>Region has every method from UIObject
---@class Region: UIObject
Region = {}

--- Clear all attachment points. This will hide the UI object unless you re-attach.
function Region:ClearAllPoints() end

--- Y-location of Bottom edge of region (measured from bottom).
---@return nil|number
---@nodiscard
function Region:GetBottom() end

--- X,Y locations of center point of the region (measured from bottom left).
---@return nil|number, nil|number
---@nodiscard
function Region:GetCenter() end

---@return number Zero if not anchored.
---@nodiscard
function Region:GetHeight() end

--- X-location of Left edge of region (measured from left).
---@return nil|number
---@nodiscard
function Region:GetLeft() end

--- Number of anchor points, or zero if none set.
---@return 0|1|2|3|4|5|6|7|8|9
---@nodiscard
function Region:GetNumPoints() end

---@return nil|Region
---@nodiscard
function Region:GetParent() end

---@return nil|FramePoint point
---@return nil|Region relativeTo Parent region.
---@return nil|FramePoint relativePoint Anchor point of the relativeTo frame.
---@return nil|number xOffset
---@return nil|number yOffset
---@nodiscard
function Region:GetPoint() end

--- X-location of Right edge of region (measured from left).
---@return nil|number
---@nodiscard
function Region:GetRight() end

--- Y-location of Top edge of region (measured from bottom).
---@return nil|number
---@nodiscard
function Region:GetTop() end

---@return number# Zero if not anchored.
---@nodiscard
function Region:GetWidth() end

--- Set this object to hidden (it and all of its children will disappear).
--- Pauses OnUpdate loop.
--- OnHide event handler will be called for the region and all its children.
--- TODO: probably calls for all descendants.
function Region:Hide() end

--- Determine if this object is shown (will be visible if its parent is visible).
--- Frames are shown by default.
---@return boolean
---@nodiscard
function Region:IsShown() end

--- Get whether the object is visible on screen.
-- <br>Equivalent to (&:IsShown() and &:GetParent():IsVisible());
-- <br>Does not consider transparency.
---@return boolean
---@nodiscard
function Region:IsVisible() end

--- Sets TopLeft and BottomRight anchors of the receiving frame.
--- If no reference frame provided, use screen edges.
---@param region nil|string|Region
function Region:SetAllPoints(region) end

--- No-op if height inferred from anchor points.
 ---@param height number
function Region:SetHeight(height) end

---@param parent nil|string|Region
function Region:SetParent(parent) end

--- Set an anchor point for this region.
---@param point FramePoint
---@param relativeRegion nil|string|Region nil uses screen edges.
---@param relativePoint FramePoint Defaults to "Center" if nil.
---@param xOffset? number Defaults to 0 if nil.
---@param yOffset? number Defaults to 0 if nil.
function Region:SetPoint(point, relativeRegion, relativePoint, xOffset, yOffset) end

--- No-op if width inferred from anchor points.
 ---@param width number
function Region:SetWidth(width) end

-- Set this object to shown (it will appear if its parent is visible).
-- Resumes OnUpdate loop.
-- OnShow event handler will be called for the region.
-- TODO: probably calls for all descendants.
function Region:Show() end
