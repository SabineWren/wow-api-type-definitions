---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#Font)
--- <br>Font was introduced in 1.10 to replace virtual FontStrings; it allows for dynamic inheritance of font template changes. The standard UI fonts such as GameFontNormal are Font objects.
---@class Font: FontInstance
Font = {}

--- Copy all attributes from another font to this one.
---@param otherFont Font|string Reference to a Font object or a global name of a Font object.
---@return nil
function Font:CopyFontObject(otherFont) end
