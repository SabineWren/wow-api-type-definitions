-- Incomplete. Add stuff from here:
-- https://github.com/MOUZU/Blizzard-WoW-Interface/tree/master/1.12.1/FrameXML/UIParent.lua
-- https://github.com/MOUZU/Blizzard-WoW-Interface/tree/master/1.12.1/FrameXML/UIParent.xml

---[Wowhead Description](https://www.wowhead.com/guide/comprehensive-beginners-guide-for-wow-addon-coding-in-lua-5338#10-6-frames)
--- Root Region for UI.
---@type Frame
UIParent = UIParent

---https://wowpedia.fandom.com/wiki/Make_frames_closable_with_the_Escape_key?oldid=213706
---@type string[]
UISpecialFrames = UISpecialFrames

---@param frame Frame
---@param topOffset number
---@param bottomOffset number
---@param leftOffset number
---@param rightOffset number
---@return nil|1
---@overload fun(frame: Frame): nil|1
---@nodiscard
function MouseIsOver(frame, topOffset, bottomOffset, leftOffset, rightOffset) end
