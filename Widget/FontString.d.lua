---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#FontString)
--- Note that FontString:Get/SetWidth() and Get/SetHeight() behave very differently for fontstrings
---@class FontString: LayeredRegion, FontInstance
FontString = {}

--- Get whether long strings without spaces are wrapped or truncated
---@return boolean
---@nodiscard
function FontString:CanNonSpaceWrap() end

--- Returns the width in pixels of the current string in the current font.
--- - Ignores word wrap but includes truncation
--- - If no width is explicitly set, GetWidth() will return the same result as GetStringWidth().
---@return number
---@nodiscard
function FontString:GetStringWidth() end

--- Get the displayed text.
---@return nil|string
---@nodiscard
function FontString:GetText() end

--- Create or remove an alpha gradient over the text.
--- - Pass length of 0 to return text to normal.
---@param start number Distance from the left in pixels that the gradient will start.
---@param length number Length in pixels of the gradient.
---@return nil|1 result 1 if the gradient changed, or nil if no action taken.
---@nodiscard
function FontString:SetAlphaGradient(start, length) end

--- Set whether long strings without spaces are wrapped or truncated.
---@param isWrap boolean
---@return nil
function FontString:SetNonSpaceWrap(isWrap) end

--- Set the displayed text.
---@param text string
---@return nil
function FontString:SetText(text) end

--- Set the height of the text by scaling graphics.
--- - This will distort the text because it enlarges the image rather than the font size.
--- - If you need crisp looking text, create separate text objects for each size.
---@param pixelHeight integer
---@return nil
function FontString:SetTextHeight(pixelHeight) end
