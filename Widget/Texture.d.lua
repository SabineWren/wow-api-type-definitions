---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#Texture)
---@class Texture: LayeredRegion
Texture = {}

--[[
function Texture:GetBlendMode() end--- Return the blend mode set by SetBlendMode()

function Texture:GetTexCoord() end--- Gets the 8 texture coordinates that map to the Texture's corners

function Texture:GetTexCoordModifiesRect() end--- Get the SetTexCoordModifiesRect setting

function Texture:GetTexture() end--- Gets this texture's current texture path.

function Texture:GetVertexColor() end--- Gets the vertex color for the Texture.

function Texture:IsDesaturated() end--- Gets the desaturation state of this Texture.

function Texture:SetBlendMode("mode") end--- Set the alphaMode of the texture.

function Texture:SetDesaturated(flag) end--- Set whether this texture should be displayed with no saturation (Note: This has a return value)

function Texture:SetGradient("orientation", minR, minG, minB, maxR, maxG, maxB) end

function Texture:SetGradientAlpha("orientation", minR, minG, minB, minA, maxR, maxG, maxB, maxA) end

function Texture:SetTexCoord(minX, maxX, minY, maxY or ULx, ULy, LLx, LLy, URx, URy, LRx, LRy) end--- Set the corner coordinates for texture display.

function Texture:SetTexCoordModifiesRect(enableFlag) end--- Set whether future SetTexCoord operations should modify the display rectangle rather than stretch the texture.

--- Sets the texture to be displayed from a file or to a solid color.
--- - Texture can be path or a loaded texture.
--- - TODO return might be always nil or always true.
---@param texture Texture
function Texture:SetTexture(texture) end

--- Sets the texture to be displayed from a file or to a solid color.
--- - TODO return might be always nil or always true.
---@param r number
---@param g number
---@param b number
---@param a? number
function Texture:SetTexture(r, g, b, a) end

]]
