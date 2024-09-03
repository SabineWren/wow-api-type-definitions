---@meta
--- These functions aren't part of the WoW API, but the
--- default interface provides them as global variables.
--- Source code is available for every function here.

--- [Source Code: FrameXML/UIParent.lua](https://github.com/MOUZU/Blizzard-WoW-Interface/blob/d162a4c0d198a4381b5b6573d975635ed7316702/1.12.1/FrameXML/UIParent.lua#L1388-L1418)
---@param frame Frame
---@param topOffset number
---@param bottomOffset number
---@param leftOffset number
---@param rightOffset number
---@return nil|1
---@overload fun(frame: Frame): nil|1
---@nodiscard
function MouseIsOver(frame, topOffset, bottomOffset, leftOffset, rightOffset) end

-- TODO document xml colorpicker
-- https://wowpedia.fandom.com/wiki/Using_the_ColorPickerFrame?oldid=89462
