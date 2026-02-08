---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#LayeredRegion)
--- <br>Abstract type for objects that represent a screen rendering process, rather than a full blown frame.
---@class LayeredRegion: Region
LayeredRegion = {}

--- Get the Region's DrawLayer and sublayer within it
---@return DrawLayer layer
---@return nil|-8|-7|-6|-5|-4|-3|-2|-1|0|1|2|3|4|5|6|7 sublayer
---@nodiscard
function LayeredRegion:GetDrawLayer() end

--- Sets the draw layer for the Region
---@param layer DrawLayer
---@param sublayer? -8|-7|-6|-5|-4|-3|-2|-1|0|1|2|3|4|5|6|7 Defaults to 0 if not set.
function LayeredRegion:SetDrawLayer(layer, sublayer) end

---@param r number [0, 1]
---@param g number [0, 1]
---@param b number [0, 1]
---@param a? number [0, 1]
function LayeredRegion:SetVertexColor(r, g, b, a) end
