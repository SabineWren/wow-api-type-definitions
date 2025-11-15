---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#Frame)
---@class Frame: Region
Frame = {}

--- Create and return a new FontString as a child of this Frame
--- - A good default is :CreateFrontString(nil, "ARTWORK", "GameFontNormal")
--- - Or for tooltips... :CreateFrontString(nil, "OVERLAY", "GameTooltipText")
--- - Unlike Textures, FontStrings do not support sublayers, and will always be drawn above textures sharing the same layer.
---@param name nil|string The global variable name that will be assigned, or nil for an anonymous fontstring.
---@param layer DrawLayer
--- --- TODO: can this work with Font references instead of virtual font strings?
---@param inheritsFrom nil|string The name of a virtual font string. If nil, the font string does not inherit any properties.
---@return FontString
---@nodiscard
function Frame:CreateFontString(name, layer, inheritsFrom) end

--- Create and return a new Texture as a child of this Frame.
---@param name nil|string
---@param layer nil|DrawLayer
---@param inheritsFrom? nil|string
---@return Texture
---@nodiscard
function Frame:CreateTexture(name, layer, inheritsFrom) end

--- Create a title region for the frame if it does not have one.
---@return Region
---@nodiscard
function Frame:CreateTitleRegion() end

--- Disable rendering of Regions in the specified draw layer.
--- - This does not affect the return values for functions like ScriptRegion:IsVisible and ScriptRegion:IsShown.
---@param layer DrawLayer
---@return nil
function Frame:DisableDrawLayer(layer) end

--- Enable rendering of Regions in the specified draw layer.
---@param layer DrawLayer
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
--- - See [DrawLayer](lua://DrawLayer) for details about cursor hover
---@param enableFlag boolean
---@return nil
function Frame:EnableMouse(enableFlag) end

---Set whether this frame will get mouse wheel notifications.
---@param enableFlag boolean
---@return nil
function Frame:EnableMouseWheel(enableFlag) end


--- Creates and returns a backdrop table suitable for use in SetBackdrop
---@return Backdrop
---@nodiscard
function Frame:GetBackdrop() end

--- Gets the frame's backdrop border color (r, g, b, a)
--- - These values describe any tint applied to the backdrop files, not the actual color and alpha of each pixel in those file.
--- - These values also ignore other sources of transparency that could affect the appearance, such as Region:SetAlpha().
---@return number, number, number, number
---@nodiscard
function Frame:GetBackdropBorderColor() end

--- Gets the frame's backdrop color (r, g, b, a)
--- - These values describe any tint applied to the backdrop files, not the actual color and alpha of each pixel in those file.
--- - These values also ignore other sources of transparency that could affect the appearance, such as Region:SetAlpha().
---@return number, number, number, number
---@nodiscard
function Frame:GetBackdropColor() end

--- Returns a list of child frames of this frame.
---@return Frame ...
---@nodiscard
function Frame:GetChildren() end

---@return nil
---@nodiscard
function Frame:GetChildren() end

--- Get the scale factor of this object relative to the root window.
---@return number
---@nodiscard
function Frame:GetEffectiveScale() end

---@return integer
---@nodiscard
function Frame:GetFrameLevel() end

---@return FrameStrata
---@nodiscard
function Frame:GetFrameStrata() end

---@return FrameType
---@nodiscard
function Frame:GetFrameType() end

--- Gets the frame's hit rectangle inset distances (l, r, t, b)
---@return number, number, number, number
---@nodiscard
function Frame:GetHitRectInsets() end

--- Defaults to 0 for new frames.
---@return integer
---@nodiscard
function Frame:GetID() end

--- Gets the frame's maximum allowed resize bounds (w, h)
---@return number, number
---@nodiscard
function Frame:GetMaxResize() end

--- Gets the frame's minimum allowed resize bounds (w, h)
---@return number, number
---@nodiscard
function Frame:GetMinResize() end

--- Get the number of "children" (frames and things derived from frames) this frame has.
---@return integer
function Frame:GetNumChildren() end

--- Return the number of "regions" (fontstrings, textures) belonging to this frame.
---@return integer
---@nodiscard
function Frame:GetNumRegions() end

--- Return the "regions" (fontstrings, textures) of the frame (multiple return values) belonging to this frame.
---@return (FontString|Texture) ...
---@nodiscard
function Frame:GetRegions() end

---@return nil
---@nodiscard
function Frame:GetRegions() end

--- Get the scale factor of this object relative to its parent.
---@return number
---@nodiscard
function Frame:GetScale() end

--- Get the function for one of this frame's handlers.
---@param scriptType OnScriptMegaUnion
---@return nil|function
---@nodiscard
function Frame:GetScript(scriptType) end

--- Return the frame's title region
---@return nil|Region
---@nodiscard
function Frame:GetTitleRegion() end

--- Predicate to check if frame supports the handler type.
--- - If you want to determine if the frame has a script, use :GetScript().
---@param scriptType OnScriptMegaUnion
---@return boolean
---@nodiscard
function Frame:HasScript(scriptType) end

--- Gets whether the frame is prohibited from being dragged off screen
---@return boolean
---@nodiscard
function Frame:IsClampedToScreen() end

--- Determine if this frame is of the specified type, or a subclass of that type.
---@param frameType FrameType
---@return boolean
---@nodiscard
function Frame:IsFrameType(frameType) end

--- Get whether this frame will get keyboard input.
---@return boolean
---@nodiscard
function Frame:IsKeyboardEnabled() end

--- Get whether this frame will get mouse input.
---@return boolean
---@nodiscard
function Frame:IsMouseEnabled() end

--- Get whether this frame will get mouse wheel notifications. New in 1.11.
---@return boolean
---@nodiscard
function Frame:IsMouseWheelEnabled() end

--- Determine if the frame can be moved.
---@return boolean
---@nodiscard
function Frame:IsMovable() end

--- Determine if the frame can be resized.
---@return boolean
---@nodiscard
function Frame:IsResizable() end

--- Get whether the frame is set as toplevel.
---@return boolean
---@nodiscard
function Frame:IsToplevel() end

--- Determine if this frame has been relocated by the user.
--- - The position of named, movable, user-positioned frames is stored in the layout cache and is restored before PLAYER_LOGIN fires.
---@return boolean
---@nodiscard
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
---@return nil
function Frame:RegisterForDrag(...) end

---@param backdropTable nil|Backdrop Passing nil removes the current backdrop.
---@return nil
function Frame:SetBackdrop(backdropTable) end

--- Scales backdrop border color.
--- - These values only modify the existing color and alpha of the backdrop files; it's not possible to be lighter or more opaque than the original.
--- - Subsequent calls to the same function will override previous ones; i.e. they apply to the original texture directly rather than interacting with the previously-tinted one.
---@param r number Red multiplier [0.0, 1.0]
---@param g number Green multiplier [0.0, 1.0]
---@param b number Blue multiplier [0.0, 1.0]
---@param a? number Opacity multiplier [0.0, 1.0]
---@return nil
function Frame:SetBackdropBorderColor(r,g, b, a) end

--- Scales backdrop color.
--- - These values only modify the existing color and alpha of the backdrop files; it's not possible to be lighter or more opaque than the original.
--- - Subsequent calls to the same function will override previous ones; i.e. they apply to the original texture directly rather than interacting with the previously-tinted one.
---@param r number Red multiplier [0.0, 1.0]
---@param g number Green multiplier [0.0, 1.0]
---@param b number Blue multiplier [0.0, 1.0]
---@param a? number Opacity multiplier [0.0, 1.0]
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
---@param anchorPoint FramePoint
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
