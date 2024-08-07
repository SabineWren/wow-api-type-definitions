---@meta

-- https://wowpedia.fandom.com/wiki/World_of_Warcraft_API?oldid=293146#Frame_Management

-- Multiple overloads until LuaLS can overload in place:
-- https://github.com/LuaLS/lua-language-server/issues/1456


--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "Button" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Button
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "CheckButton" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return CheckButton
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "ColorSelect" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return ColorSelect
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "DressUpModel" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return DressUpModel
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "EditBox" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return EditBox
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "Frame" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Frame
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "GameTooltip" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return GameTooltip
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "MessageFrame" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return MessageFrame
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "Model" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Model
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "PlayerModel" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return PlayerModel
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "ScrollFrame" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return ScrollFrame
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "SimpleHTML" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return SimpleHTML
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "Slider" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Slider
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "StatusBar" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return StatusBar
function CreateFrame(frameType, name, parent, template) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "TabardModel" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return TabardModel
function CreateFrame(frameType, name, parent, template) end

--[[
	 CreateFont("name")   - Dynamically create a font object
    GetNumFrames()   - Get the current number of Frame (and derivative) objects
    EnumerateFrames(currentFrame)   - Get the Frame which follows currentFrame
    GetMouseFocus()   - Returns the frame that currently has the mouse focus.
    UI MouseIsOver - Determines whether or not the mouse is over the specified frame.
    UI ToggleDropDownMenu(level, value, dropDownFrame, anchorName, xOffset, yOffset)
    UI UIFrameFadeIn(frame, fadeTime, startAlpha, endAlpha)
    UI UIFrameFlash(...)
]]
