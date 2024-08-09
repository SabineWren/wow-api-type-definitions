---@meta

--- Dynamically create a font object
--- - Changing a font object will affect the text displayed on every widget it's assigned to.
--- - Newly created fonts have no properties set.
--- - See [FontInstance:SetFont](lua://FontInstance:SetFont)
---@param name string Globally-accessible name to be assigned for use as _G["name"].
---@return Font font Reference to the new font object.
function CreateFont(name) end

-- Multiple overloads until LuaLS can overload in place:
-- https://github.com/LuaLS/lua-language-server/issues/1456
--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_CreateFrame)
---@param frameType "Button" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Button
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "CheckButton" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return CheckButton
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "ColorSelect" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return ColorSelect
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "DressUpModel" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return DressUpModel
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "EditBox" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return EditBox
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "Frame" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Frame
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "GameTooltip" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return GameTooltip
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "MessageFrame" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return MessageFrame
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "Model" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Model
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "PlayerModel" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return PlayerModel
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "ScrollFrame" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return ScrollFrame
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "SimpleHTML" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return SimpleHTML
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "Slider" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Slider
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "StatusBar" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return StatusBar
function CreateFrame(frameType, name, parent, template) end
---
---@param frameType "TabardModel" Type of frame to create.
---@param name nil|string Global name to assign to frame.
---@param parent nil|Frame Frame reference to assign as parent. Cannot be a string!
---@param template nil|string Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return TabardModel
function CreateFrame(frameType, name, parent, template) end

--- Get the current number of Frame objects
---@return number
function GetNumFrames() end

--- Get the Frame which follows currentFrame
--- - If you know the name of the frame you're looking for, don't use this function, just use the frame's name directly or get it from the _G table.
--- - Order of iteration follows the order that frames were created in.
---@param currentFrame? Frame If omitted, request first frame.
---@return nil|Frame nextFrame nil if currentFrame is the last frame.
function EnumerateFrames(currentFrame) end

--- Returns the frame that currently has the mouse focus.
--- - The frame must have enableMouse="true"
---@return Frame
function GetMouseFocus() end
