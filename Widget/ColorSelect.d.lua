---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#ColorSelect)
---@class ColorSelect: Frame
ColorSelect = {}

--- Get the HSV values of the selected color.
---@return number h [0, 360]
---@return number s [0, 1]
---@return number v [0, 1]
---@nodiscard
function ColorSelect:GetColorHSV() end

--- Get the RGB values of the selected color.
---@return number r [0, 1]
---@return number g [0, 1]
---@return number b [0, 1]
---@nodiscard
function ColorSelect:GetColorRGB() end

--- Get the texture used to show color value.
function ColorSelect:GetColorValueTexture() end

--- Get the texture for the color picker's value slider selection indicator.
---@return Texture
---@nodiscard
function ColorSelect:GetColorValueThumbTexture() end

--- Get the texture used to display the color picker's hue/saturation wheel.
---@return Texture
---@nodiscard
function ColorSelect:GetColorWheelTexture() end

--- Get the texture for the selection indicator on the color picker's hue/saturation wheel.
---@return Texture
---@nodiscard
function ColorSelect:GetColorWheelThumbTexture() end

--- Set to a specific HSV color.
---@param h number [0, 360]
---@param s number [0, 1]
---@param v number [0, 1]
---@return nil
function ColorSelect:SetColorHSV(h, s, v) end

--- Set to a specific RGB color.
---@param r number [0, 1]
---@param g number [0, 1]
---@param b number [0, 1]
---@return nil
function ColorSelect:SetColorRGB(r, g, b) end

--- Sets the texture used to display the color picker's value slider.
--- - Texture can be path or a loaded texture.
---@param texture string|Texture
---@return nil
function ColorSelect:SetColorValueTexture(texture) end

--- Sets the texture for the color picker's value slider selection indicator.
--- - Texture can be path or a loaded texture.
---@param texture string|Texture
---@return nil
function ColorSelect:SetColorValueThumbTexture(texture) end

--- Sets the texture used to display the color picker's hue/saturation wheel.
--- - Texture can be path or a loaded texture.
---@param texture string|Texture
---@return nil
function ColorSelect:SetColorWheelTexture(texture) end

--- Sets the texture for the selection indicator on the color picker's hue/saturation wheel.
--- - Texture can be path or a loaded texture.
---@param texture string|Texture
---@return nil
function ColorSelect:SetColorWheelThumbTexture(texture) end
