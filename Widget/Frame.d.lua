---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#Frame)
---@class Frame: Region
Frame = {}

--- Create and return a new Texture as a child of this Frame.
---@param name nil|string
---@param layer nil|FrameLayer
---@param inheritsFrom? nil|string
---@return Texture
function Frame:CreateTexture(name, layer, inheritsFrom) end

--- Create a title region for the frame if it does not have one.
---@return Region
function Frame:CreateTitleRegion() end

--- Disable rendering of Regions in the specified draw layer.
--- - This does not affect the return values for functions like ScriptRegion:IsVisible and ScriptRegion:IsShown.
---@param layer FrameLayer
---@return nil
function Frame:DisableDrawLayer(layer) end

--- Enable rendering of Regions in the specified draw layer.
---@param layer FrameLayer
---@return nil
function Frame:EnableDrawLayer(layer) end

--- [Open Documentation](https://wowpedia.fandom.com/wiki/API_Frame_EnableKeyboard)
--- <br>Set whether this frame will get keyboard input.
--- - The frame must be [shown](lua://ScriptRegion:Show) to receive keyboard events.
--- - The FrameStrata has to be DIALOG or higher for this to work.
--- - The frame must be shown to receive keyboard events. The frame receiving keyboard input is the only frame receiving keyboard input, which means if you show a frame that receives keyboard events, the character cannot move with the keyboard or use key bindings until that frame is hidden again.
---@param isEnable boolean
---@return nil
function Frame:EnableKeyboard(isEnable) end

--- Set whether this frame will get mouse input.
--- - See FrameLayer for details about cursor hover
---@param enableFlag boolean
---@return nil
function Frame:EnableMouse(enableFlag) end

---Set whether this frame will get mouse wheel notifications.
---@param enableFlag boolean
---@return nil
function Frame:EnableMouseWheel(enableFlag) end


--- Creates and returns a backdrop table suitable for use in SetBackdrop
---@return Backdrop
function Frame:GetBackdrop() end

--- Gets the frame's backdrop border color (r, g, b, a)
--- - These values describe any tint applied to the backdrop files, not the actual color and alpha of each pixel in those file.
--- - These values also ignore other sources of transparency that could affect the appearance, such as Region:SetAlpha().
---@return number, number, number, number
function Frame:GetBackdropBorderColor() end

--- Gets the frame's backdrop color (r, g, b, a)
--- - These values describe any tint applied to the backdrop files, not the actual color and alpha of each pixel in those file.
--- - These values also ignore other sources of transparency that could affect the appearance, such as Region:SetAlpha().
---@return number, number, number, number
function Frame:GetBackdropColor() end

--- Returns a list of child frames of this frame.
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

--- Gets the frame's hit rectangle inset distances (l, r, t, b)
---@return number, number, number, number
function Frame:GetHitRectInsets() end

--- Defaults to 0 for new frames.
---@return integer
function Frame:GetID() end

--- Gets the frame's maximum allowed resize bounds (w, h)
---@return number, number
function Frame:GetMaxResize() end

--- Gets the frame's minimum allowed resize bounds (w, h)
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

--- Get the function for one of this frame's handlers.
---@param scriptType ScriptTypeFrame
---@return nil|function
function Frame:GetScript(scriptType) end

--- Return the frame's title region
---@return nil|Region
function Frame:GetTitleRegion() end

--- Predicate to check if frame supports the handler type.
--- - If you want to determine if the frame has a script, use :GetScript().
---@param scriptType ScriptTypeFrame
---@return boolean
function Frame:HasScript(scriptType) end

--- Gets whether the frame is prohibited from being dragged off screen
---@return boolean
function Frame:IsClampedToScreen() end

--- Determine if this frame is of the specified type, or a subclass of that type.
---@param frameType FrameType
---@return boolean
function Frame:IsFrameType(frameType) end

--- Get whether this frame will get keyboard input.
---@return boolean
function Frame:IsKeyboardEnabled() end

--- Get whether this frame will get mouse input.
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

--- Get whether the frame is set as toplevel.
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

--- Register this frame to receive all events (For debugging purposes only!)
---@return nil
function Frame:RegisterAllEvents() end

--- Indicate that this frame should be notified when event occurs.
---@param event Event
---@return nil
function Frame:RegisterEvent(event) end

--- Indicate this frame should be notified of drag events for the specified buttons.
--- - Subsequent calls to :RegisterForDrag() will override rather than augment the current registration.
--- - To register for both left and right mouse buttons simultaneously, use :RegisterForDrag("LeftButton","RightButton").
---@param ... MouseButton
function Frame:RegisterForDrag(...) end

---@param backdropTable nil|Backdrop Passing nil removes the current backdrop.
---@return nil
function Frame:SetBackdrop(backdropTable) end

--- Scales backdrop border color.
--- - These values only modify the existing color and alpha of the backdrop files; it's not possible to be lighter or more opaque than the original.
--- - Subsequent calls to the same function will override previous ones; i.e. they apply to the original texture directly rather than interacting with the previously-tinted one.
---@param r number Red multiplier, from 0 to 1
---@param g number Green multiplier, from 0 to 1
---@param b number Blue multiplier, from 0 to 1
---@param a? number Opacity multiplier, from 0 to 1
---@return nil
function Frame:SetBackdropBorderColor(r,g, b, a) end

--- Scales backdrop color.
--- - These values only modify the existing color and alpha of the backdrop files; it's not possible to be lighter or more opaque than the original.
--- - Subsequent calls to the same function will override previous ones; i.e. they apply to the original texture directly rather than interacting with the previously-tinted one.
---@param r number Red multiplier, from 0 to 1
---@param g number Green multiplier, from 0 to 1
---@param b number Blue multiplier, from 0 to 1
---@param a? number Opacity multiplier, from 0 to 1
---@return nil
function Frame:SetBackdropColor(r,g, b, a) end

--- Set whether or not frame can move off screen
--- - Any calls to Region:SetPoint()
--- - User dragging after Frame:StartMoving()
--- - User resizing after Frame:StartSizing()
---@param isClamped boolean True clamps frame edges. False allows moving off screen.
---@return nil
function Frame:SetClampedToScreen(isClamped) end

--- Determines which of overlapping frames shows on top.
---@param level integer
---@return nil
function Frame:SetFrameLevel(level) end

---@param strata FrameStrata
---@return nil
function Frame:SetFrameStrata(strata) end

---Set the inset distances for the frame's hit rectangle
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

--- Set whether the frame can be moved.
--- - For simple automatic frame dragging behavior, see Frame:CreateTitleRegion().
---@param isMovable boolean True allows calling Frame:StartMoving()
---@return nil
function Frame:SetMovable(isMovable) end

--- Set whether the frame can be resized by the user.
--- - Resizing begins with [Frame:StartSizing](lua://Frame:StartSizing) and finishes with [Frame:StopMovingOrSizing](lua://Frame:StopMovingOrSizing).
---@param isResizable boolean
---@return nil
function Frame:SetResizable(isResizable) end

--- [Open Documenation](https://wowpedia.fandom.com/wiki/API_Region_SetScale)
--- Set the scale factor of this frame relative to its parent.
---@param scale number greater than 0
---@return nil
function Frame:SetScale(scale) end

--- Set the function to use for a handler on this frame.
---@param scriptType ScriptTypeFrame
---@param handler nil|function Handler, or nil to remove current handler.
---@return nil
function Frame:SetScript(scriptType, handler) end

--- Set whether the frame should raise itself when clicked.
--- - Typically, this function should be applied to any window-like frames that are displayed in the UI.
--- - When enabled, toplevel frames will raise their own frame level dynamically when clicked with the mouse.
---@param isTopLevel boolean
---@return nil
function Frame:SetToplevel(isTopLevel) end

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

--- Start sizing this frame using the specified anchor point.
--- - The default value is "BottomRight"
---@param anchorPoint AnchorPoint
---@return nil
function Frame:StartSizing(anchorPoint) end

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