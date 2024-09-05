-- Syntax for [declaring globals](https://github.com/LuaLS/lua-language-server/issues/116)

BOOKTYPE_PET = "pet"
BOOKTYPE_SPELL = "spell"

---[Source](https://github.com/MOUZU/Blizzard-WoW-Interface/blob/master/1.12.1/FrameXML/ColorPickerFrame.xml)
---[Documentation](https://wowpedia.fandom.com/wiki/Using_the_ColorPickerFrame?oldid=89462)
---@class (exact) ColorPickerFrame : ColorSelect
---@field cancelFunc fun(): nil
---@field func fun(): nil
---@field hasOpacity boolean
---@field opacity number 0 to 1
---@field previousValues [number, number, number] Values to apply on escape or close

---@type ColorPickerFrame
ColorPickerFrame = ColorPickerFrame

---@type ScrollingMessageFrame
DEFAULT_CHAT_FRAME = DEFAULT_CHAT_FRAME

---@type Font
GameFontNormalSmall = GameFontNormalSmall

---@type GameTooltip
GameTooltip = GameTooltip

---@type table<string, function>
SlashCmdList = SlashCmdList

---[Wowhead Description](https://www.wowhead.com/guide/comprehensive-beginners-guide-for-wow-addon-coding-in-lua-5338#10-6-frames)
--- Root Region for UI.
---@type Frame
UIParent = UIParent

---@type Frame
WorldFrame = WorldFrame
