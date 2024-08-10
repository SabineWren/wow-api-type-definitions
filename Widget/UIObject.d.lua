---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#UIObject)
--- <br>Abstract UI type. Base class of all UI objects.
---@class UIObject
UIObject = {}

---@return number
---@nodiscard
function UIObject:GetAlpha() end

--- Corresponds to a variable in global namespace. Returns nil for anonymous frames.
--- - WorldFrame:GetName() -- "WorldFrame"
--- - CreateFrame("Frame", "SomeFrame"):GetName() -- "SomeFrom"
--- - CreateFrame("Frame"):GetName() -- nil
---@return nil|string
---@nodiscard
function UIObject:GetName() end

--- Can return any valid Object Type.
--- - CreateFrame("Frame"):GetObjectType() -- "Frame"
--- - CreateFrame("Button"):GetObjectType() -- "Button"
---@return string widgetType
---@nodiscard
function UIObject:GetObjectType() end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_FrameScriptObject_IsObjectType)
--- <br>Predicate determines if this object is an instance of that type, or a subclass of that type. Watch for edge cases:
--- - Derivatives of Texture will test false against the TextureBase type.
--- - Derivatives of Frame will test true against the Region type, but not all methods in the documentation for Region are available on Frames.
--- - All objects test false against: AnimatableObject, FrameScriptObject, ScriptRegion, ScriptRegionResizing
---@return boolean isType
---@nodiscard
function UIObject:IsObjectType() end

---@param alpha number [0.0, 1.0] from transparent to opaque.
function UIObject:SetAlpha(alpha) end
