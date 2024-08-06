---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Frame_Strata)
--- Affects how frames overlap.
--- @alias FrameStrata
--- | "WORLD" Reserved for the world frame and cannot be assigned.
--- | "BACKGROUND"
--- | "LOW"
--- | "MEDIUM"
--- | "HIGH"
--- | "DIALOG"
--- | "FULLSCREEN"
--- | "FULLSCREEN_DIALOG"
--- | "TOOLTIP"

--- @alias FrameType
--- | "Button"
--- | "CheckButton"
--- | "ColorSelect"
--- | "DressUpModel"
--- | "EditBox"
--- | "Frame"
--- | "GameTooltip"
--- | "MessageFrame"
--- | "Model"
--- | "PlayerModel"
--- | "ScrollFrame"
--- | "SimpleHTML"
--- | "Slider"
--- | "StatusBar"
--- | "TabardModel"

--- Distance from edges the background will be drawn. e.x. use higher values for thicker edges.
---@alias Insets { right: number, top: number, bottom: number, left: number }

---@class Backdrop
---@field bgFile string Texture path for background.
---@field edgeFile string Texture path for edges.
---@field tile boolean Tile if true else Stretch.
---@field tileSize number If tiling, size of each tiled copy of bgFile.
---@field edgeSize number Size of the edgefile. i.e. border thickness and corner size.
---@field insets Insets

---@class Frame: Region
Frame = {}

-- Frame:CreateFontString(["name"[,"layer"[,"inheritsFrom"]]]) - Create and return a new FontString as a child of this Frame - Can instantiate virtuals in 1.11.

-- Frame:CreateTexture(["name"[,"layer"]][,"inheritsFrom"]) - Create and return a new Texture as a child of this Frame - Can instantiate virtuals in 1.11.

--- Create a title region for the frame if it does not have one. - New in 1.11
---@return Region
function Frame:CreateTitleRegion() end

-- Frame:DisableDrawLayer("layer") - Disable rendering of "regions" (fontstrings, textures) in the specified draw layer.

-- Frame:EnableDrawLayer("layer") - Enable rendering of "regions" (fontstrings, textures) in the specified draw layer.

-- Frame:EnableKeyboard(enableFlag) - Set whether this frame will get keyboard input.

-- Frame:EnableMouse(enableFlag) - Set whether this frame will get mouse input.

-- Frame:EnableMouseWheel(enableFlag) - Set whether this frame will get mouse wheel notifications.

--- Creates and returns a backdrop table suitable for use in SetBackdrop - New in 1.11.
---@return Backdrop
function Frame:GetBackdrop() end

--- Gets the frame's backdrop border color (r, g, b, a)- New in 1.11.
--- - These values describe any tint applied to the backdrop files, not the actual colour and alpha of each pixel in those file.
--- - These values also ignore other sources of transparency that could affect the appearance, such as Region:SetAlpha().
---@return number, number, number, number
function Frame:GetBackdropBorderColor() end

--- Gets the frame's backdrop color (r, g, b, a)- New in 1.11.
--- - These values describe any tint applied to the backdrop files, not the actual colour and alpha of each pixel in those file.
--- - These values also ignore other sources of transparency that could affect the appearance, such as Region:SetAlpha().
---@return number, number, number, number
function Frame:GetBackdropColor() end

--- Get the list of "children" (frames and things derived from frames) of this frame.
---@return nil|(Frame[])
function Frame:GetChildren() end

--- Get the scale factor of this object relative to the root window.
---@return number
function Frame:GetEffectiveScale() end

---@return integer
function Frame:GetFrameLevel() end

---@return FrameStrata
function Frame:GetFrameStrata() end

---@return FrameType
function Frame:GetFrameType() end

--- Gets the frame's hit rectangle inset distances (l, r, t, b) - new in 1.11.
---@return number, number, number, number
function Frame:GetHitRectInsets() end

--- Defaults to 0 for new frames.
---@return integer
function Frame:GetID() end

--- Gets the frame's maximum allowed resize bounds (w, h) - new in 1.11.
---@return number, number
function Frame:GetMaxResize() end

--- Gets the frame's minimum allowed resize bounds (w, h) - new in 1.11.
---@return number, number
function Frame:GetMinResize() end

--- Get the number of "children" (frames and things derived from frames) this frame has.
---@return nil
function Frame:GetNumChildren() end

--- Return the number of "regions" (fontstrings, textures) belonging to this frame.
---@return integer
function Frame:GetNumRegions() end

--- Return the "regions" (fontstrings, textures) of the frame (multiple return values) belonging to this frame.
---@return nil|(FontString|Texture)[]
function Frame:GetRegions() end

--- Get the scale factor of this object relative to its parent.
---@return number
function Frame:GetScale() end

-- Frame:GetScript("handler") - Get the function for one of this frame's handlers.
--- Return the frame's title region - New in 1.11.

---@return nil|Region
function Frame:GetTitleRegion() end

-- Frame:HasScript("handler") - Return true if the frame can be given a handler of the specified type (NOT whether it actually HAS one, use GetScript for that) - Since 1.8.
--- Gets whether the frame is prohibited from being dragged off screen - New in 1.11.

---@return boolean
function Frame:IsClampedToScreen() end

-- Frame:IsFrameType("type") - Determine if this frame is of the specified type, or a subclass of that type.

--- Get whether this frame will get keyboard input. - New in 1.11.
---@return boolean
function Frame:IsKeyboardEnabled() end

--- Get whether this frame will get mouse input. - New in 1.11.
---@return boolean
function Frame:IsMouseEnabled() end

--- Get whether this frame will get mouse wheel notifications. New in 1.11.
---@return boolean
function Frame:IsMouseWheelEnabled() end

--- Determine if the frame can be moved.
---@return boolean
function Frame:IsMovable() end

--- Determine if the frame can be resized.
---@return boolean
function Frame:IsResizable() end

--- Get whether the frame is set as toplevel - New in 1.10.2.
---@return boolean
function Frame:IsToplevel() end

--- Determine if this frame has been relocated by the user.
--- - The position of named, movable, user-positioned frames is stored in the layout cache and is restored before PLAYER_LOGIN fires.
---@return boolean
function Frame:IsUserPlaced() end

--- Lower this frame behind other frames.
---@return nil
function Frame:Lower() end

--- Raise this frame above other frames.
---@return nil
function Frame:Raise() end

--- Register this frame to receive all events (For debugging purposes only!) - New in 1.11.
---@return nil
function Frame:RegisterAllEvents() end

-- Frame:RegisterEvent("event") - Indicate that this frame should be notified when event occurs.
-- Frame:RegisterForDrag("buttonType"[,"buttonType"...]) - Inidicate that this frame should be notified of drag events for the specified buttons.
-- Frame:SetBackdrop([backdropTable]) - Set the backdrop of the frame according to the specification provided.
-- Frame:SetBackdropBorderColor(r, g, b[, a]) - Set the frame's backdrop's border's color.
-- Frame:SetBackdropColor(r, g, b[, a]) - Set the frame's backdrop color.
-- Frame:SetClampedToScreen(clamped) - Set whether the frame is prohibited from being dragged off screen - New in 1.11.

--- Determines which of overlapping frames shows on top.
---@param level integer
---@return nil
function Frame:SetFrameLevel(level) end

---@param strata FrameStrata
---@return nil
function Frame:SetFrameStrata(strata) end

---Set the inset distances for the frame's hit rectangle - New in 1.11.
---@param left number
---@param right number
---@param top number
---@param bottom number
---@return nil
function Frame:SetHitRectInsets(left, right, top, bottom) end

---@param id integer
---@return nil
function Frame:SetID(id) end

--- Set the maximum dimensions this frame can be resized to.
---@param maxWidth number
---@param maxHeight number
---@return nil
function Frame:SetMaxResize(maxWidth, maxHeight) end

--- Set the minimum dimensions this frame can be resized to.
---@param minWidth number
---@param minHeight number
---@return nil
function Frame:SetMinResize(minWidth, minHeight) end

-- Frame:SetMovable(isMovable) - Set whether the frame can be moved.
-- Frame:SetResizable(isResizable) - Set whether the frame can be resized.
-- Frame:SetScale(scale) - Set the scale factor of this frame relative to its parent.
-- Frame:SetScript("handler", function) - Set the function to use for a handler on this frame.
-- Frame:SetToplevel(isTopLevel) - Set whether the frame should raise itself when clicked - New in 1.10.2.

--- Set whether the frame has been relocated by the user (and will thus be saved in the layout cache).
--- - There is usually no need to explicitly call this function; the flag is automatically set by Frame:StartMoving(), and when the frame's position is restored from the layout cache.
--- - Positions of anonymous frames (frames without a name) will not be restored.
--- - Only frames created prior to the completion of the initial loading process (i.e. before PLAYER_LOGIN) will have their position restored.
---@param isUserPlaced boolean
---@return nil
function Frame:SetUserPlaced(isUserPlaced) end

--- Start moving this frame.
---@return nil
function Frame:StartMoving() end

-- Frame:StartSizing("point") - Start sizing this frame using the specified anchor point.

--- Stop moving and/or sizing this frame.
---@return nil
function Frame:StopMovingOrSizing() end

--- Unsubscribes frame from all events.
---@return nil
function Frame:UnregisterAllEvents() end

--- Unsubscribes frame from specified event.
---@param e Event
---@return nil
function Frame:UnregisterEvent(e) end
