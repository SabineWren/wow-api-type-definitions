---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#Texture)
---@class Texture: LayeredRegion
Texture = {}

--- See [SetBlendMode](lua://Texture:SetBlendMode)
---@return BlendMode mode Blend alphaMode
---@nodiscard
function Texture:GetBlendMode() end

--- Gets the 8 texture coordinates that map to the Texture's corners.
--- See (Texture:SetTexCoord)[lua://Texture:SetTexCoord]
---@return number ULx Upper left corner X position, 0.0 to 1.0
---@return number ULy Upper left corner Y position, 0.0 to 1.0
---@return number LLx Lower left corner X position, 0.0 to 1.0
---@return number LLy Lower left corner Y position, 0.0 to 1.0
---@return number URx Upper right corner X position, 0.0 to 1.0
---@return number URy Upper right corner Y position, 0.0 to 1.0
---@return number LRx Lower right corner X position, 0.0 to 1.0
---@return number LRy Lower right corner Y position, 0.0 to 1.0
---@nodiscard
function Texture:GetTexCoord() end

--- See (Texture:SetTexCoordModifiesRect)[lua://Texture:SetTexCoordModifiesRect]
---@return 1|nil
---@nodiscard
function Texture:GetTexCoordModifiesRect() end

--- Gets this texture's current texture path.
---@return string path
---@nodiscard
function Texture:GetTexture() end

---@return number r [0 to 1]
---@return number g [0 to 1]
---@return number b [0 to 1]
---@return number a [0 to 1]
---@nodiscard
function Texture:GetVertexColor() end

--- True if desaturation > 0.0
---@return 1|nil
---@nodiscard
function Texture:IsDesaturated() end

---@param mode BlendMode Blend alphaMode
---@return nil
function Texture:SetBlendMode(mode) end

---@param isGreyscale 1|nil
---@return 1|nil isShaderSupported
---@nodiscard
function Texture:SetDesaturated(isGreyscale) end

---@param orientation "HORIZONTAL"|"Vertical"
---@param minR number
---@param minG number
---@param minB number
---@param maxR number
---@param maxG number
---@param maxB number
---@return nil
function Texture:SetGradient(orientation, minR, minG, minB, maxR, maxG, maxB) end

---@param orientation "HORIZONTAL"|"Vertical"
---@param minR number
---@param minG number
---@param minB number
---@param minA number
---@param maxR number
---@param maxG number
---@param maxB number
---@param maxA number
---@return nil
function Texture:SetGradientAlpha(orientation, minR, minG, minB, minA, maxR, maxG, maxB, maxA) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_TextureBase_SetTexCoord?type=revision&diff=6837945&oldid=206219)
--- <br>Set a sub-region of a texture for display in a Texture widget.
--- <br>The texture still fills the rect, unless you first call [SetTexCoordModifiesRect](lua://SetTexCoordModifiesRect)
--- - The origin is at the TOP LEFT corner.
--- - The four-coordinate version of this function is well-suited to cropping textures.
--- - The eight-coordinate version can perform affine transformations: scaling, translating, shearing and rotating the source image.
--- - Ex. (0, 1, 1, 0) Flips vertically.
--- - Ex. (0, 0.5, 0.5, 1) Crops bottom left.
---@param ULx number Upper left corner X position, 0.0 to 1.0.
---@param ULy number Upper left corner Y position, 0.0 to 1.0.
---@param LLx number Lower left corner X position, 0.0 to 1.0.
---@param LLy number Lower left corner Y position, 0.0 to 1.0.
---@param URx number Upper right corner X position, 0.0 to 1.0.
---@param URy number Upper right corner Y position, 0.0 to 1.0.
---@param LRx number Lower right corner X position, 0.0 to 1.0.
---@param LRy number Lower right corner Y position, 0.0 to 1.0.
---@return nil
function Texture:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy) end
---@param minX number Left (or minX) edge of the scaled/cropped image, 0.0 to 1.0.
---@param maxX number Right (or maxX) edge of the scaled/cropped image, 0.0 to 1.0.
---@param minY number Top (or minY) edge of the scaled/cropped image, 0.0 to 1.0.
---@param maxY number Bottom (or maxY) edge of the scaled/cropped image, 0.0 to 1.0.
---@return nil
function Texture:SetTexCoord(minX, maxX, minY, maxY) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_Texture_SetTexCoordModifiesRect?type=revision&diff=5706207&oldid=190991)
--- Set whether future SetTexCoord operations should modify the display rectangle rather than stretch the texture.
--- - Defaults to false; the texture will stretch to fill its frame to the edges.
---@param enableFlag 1|nil
---@return nil
function Texture:SetTexCoordModifiesRect(enableFlag) end

--- Sets the texture to be displayed from a file or to a solid color.
--- - Texture can be path or a loaded texture.
--- - Returns 1 instead of nil, but that's still a unit return.
---@param texture string|Texture
---@return 1
function Texture:SetTexture(texture) end

--- Sets the texture to be displayed from a file or to a solid color.
--- - TODO return might be always nil or always true.
---@param r number
---@param g number
---@param b number
---@param a? number
---@return nil
function Texture:SetTexture(r, g, b, a) end
