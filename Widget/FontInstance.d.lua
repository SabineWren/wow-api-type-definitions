---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#FontInstance)
--- <br>Abstract UI type. Groups font-related methods used by other widget types.
---@class FontInstance: UIObject
FontInstance = {}

--- Return the font file, height, and flags.
--- - To get an integer font height, use math.floor(fontHeight + 0.5)
---@return string filePath
---@return number fontheight Font height in pixels. Due to internal graphics engine workings, this will be ridiculously close to an integer.
---@return string fontFlags See [SetFont](lua://FontInstance:SetFont).
---@nodiscard
function FontInstance:GetFont() end

---Returns the font object from which the font instance's properties are inherited, or nil if none.
---@return nil|Font font
---@nodiscard
function FontInstance:GetFontObject() end

---Return the horizontal text justification.
---@return number
---@nodiscard
function FontInstance:GetJustifyH() end

---Return the vertical text justification.
---@return number
---@nodiscard
function FontInstance:GetJustifyV() end

---Returns the color of text shadow (r, g, b, a).
---@return number r [0, 1]
---@return number g [0, 1]
---@return number b [0, 1]
---@return number a [0, 1]
---@nodiscard
function FontInstance:GetShadowColor() end

---Returns the text shadow offset (x, y).
---@return number x
---@return number y
---@nodiscard
function FontInstance:GetShadowOffset() end

---Returns the text spacing.
---@return number
---@nodiscard
function FontInstance:GetSpacing() end

---Returns the default text color.
---@return number r [0, 1]
---@return number g [0, 1]
---@return number b [0, 1]
---@return number a [0, 1]
---@nodiscard
function FontInstance:GetTextColor() end

--- Sets the font to use for text, returns 1 if the path was valid, nil otherwise (no change occurs).
--- - TODO: this might return true if set successfully. Wiki unclear.
---@param path string Path to font file on disk.
---@param height number Size in points.
---@param flags string Any comma-delimited combination of OUTLINE, THICK and MONOCHROME; otherwise must be at least an empty string (except for FontString objects).
---@return nil
function FontInstance:SetFont(path, height, flags) end

---Sets the 'parent' Font object from which this object inherits properties.
--- - Can pass in a font path instead, but Font yields better type safety.
--- - Pass nil to explicitly unset the font.
---@param font nil|Font
---@return nil
function FontInstance:SetFontObject(font) end

---Sets horizontal text justification.
---@param justifyH "Left"|"Right"|"Center"
function FontInstance:SetJustifyH(justifyH) end

---Sets vertical text justification.
---@param justifyV "Top"|"Bottom"|"Middle"
function FontInstance:SetJustifyV(justifyV) end

---Sets the text shadow color.
---@param r number [0, 1]
---@param g number [0, 1]
---@param b number [0, 1]
---@param a? number [0, 1]
function FontInstance:SetShadowColor(r, g, b, a) end

---Sets the text shadow offset.
---@param x number
---@param y number
function FontInstance:SetShadowOffset(x, y) end

---Sets the spacing between lines of text in the object.
---@param spacing number
function FontInstance:SetSpacing(spacing) end

---Sets the default text color.
---@param r number [0, 1]
---@param g number [0, 1]
---@param b number [0, 1]
---@param a? number [0, 1]
function FontInstance:SetTextColor(r, g, b, a) end
