---@meta
--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#Button)
---@class Button: Frame
Button = {}

--- Execute the click action of the button.
--- TODO Check if args work, as wiki doesn't say when they were added. It's possible neither work.
---@param button? MouseButton Can pass any string, but handlers will expect mouse input.
---@param isDown? boolean
---@return nil
function Button:Click(button, isDown) end

--- Disable the Button so that it cannot be clicked.
---@return nil
function Button:Disable() end

--- Enable to the Button so that it may be clicked.
---@return nil
function Button:Enable() end

--- Return the current state of the Button.
---@return "PUSHED"|"NORMAL"
---@nodiscard
function Button:GetButtonState() end

--- Return the font object for the Button when disabled
---@return Font
---@nodiscard
function Button:GetDisabledFontObject() end

--- Get the color of this button's text when disabled (r, g, b, a)
---@return number r [0, 1]
---@return number g [0, 1]
---@return number b [0, 1]
---@return number a [0, 1]
---@nodiscard
function Button:GetDisabledTextColor() end

--- Get the texture for this button when disabled.
---@return nil|Texture
---@nodiscard
function Button:GetDisabledTexture() end

--- Returns the font, size, and flags currently used for display on the Button.
---@return Font font
---@return number size
---@return string fontFlags See [FontInstance:SetFont](lua://FontInstance:SetFont).
---@nodiscard
function Button:GetFont() end

--- Get this button's label FontString
---@return FontString
---@nodiscard
function Button:GetFontString() end

--- Return the font object for the Button when highlighted.
---@return Font
---@nodiscard
function Button:GetHighlightFontObject() end

--- Get the color of this button's text when highlighted.
---@return number r [0, 1]
---@return number g [0, 1]
---@return number b [0, 1]
---@return number a [0, 1]
---@nodiscard
function Button:GetHighlightTextColor() end

--- Get the texture for this button when highlighted,
---@return nil|Texture
---@nodiscard
function Button:GetHighlightTexture() end

--- Get the normal texture for this button.
---@return nil|Texture
---@nodiscard
function Button:GetNormalTexture() end

--- Get the text offset when this button is pushed (x, y).
---@return number x
---@return number y
---@nodiscard
function Button:GetPushedTextOffset() end

--- Get the texture for this button when pushed
---@return nil|Texture
---@nodiscard
function Button:GetPushedTexture() end

--- Get the text label for the Button.
---@return string
---@nodiscard
function Button:GetText() end

--- Get the normal color of this button's text (r, g, b, a)
---@return number r [0, 1]
---@return number g [0, 1]
---@return number b [0, 1]
---@return number a [0, 1]
---@nodiscard
function Button:GetTextColor() end

--- Return the font object for the Button's normal text
---@return Font
---@nodiscard
function Button:GetTextFontObject() end

--- Get the height of the Button's text.
---@return number
---@nodiscard
function Button:GetTextHeight() end

--- Get the width of the Button's text.
---@return number
---@nodiscard
function Button:GetTextWidth() end

--- Determine whether the Button is enabled.
--- - Disabled buttons can't be clicked.
---@return boolean
---@nodiscard
function Button:IsEnabled() end

--- Set the Button to always be drawn highlighted.
---@return nil
function Button:LockHighlight() end

--- Specify which mouse button up/down actions cause this button to receive an OnClick notification.
---@param ... MouseClick
---@return nil
function Button:RegisterForClicks(...) end

--- Set and optionally lock button state.
---@param state "PUSHED"|"NORMAL"
---@param isLock? boolean
---@return nil
function Button:SetButtonState(state, isLock) end

--- Set the font object for disabled styling.
---@param font Font
---@return nil
function Button:SetDisabledFontObject(font) end

--- Set the disabled text color for the Button.
---@param r number Red multiplier [0.0, 1.0]
---@param g number Green multiplier [0.0, 1.0]
---@param b number Blue multiplier [0.0, 1.0]
---@param a? number Opacity multiplier [0.0, 1.0]
---@return nil
function Button:SetDisabledTextColor(r, g, b, a) end

--- Set the disabled texture for the Button.
--- - Texture can be path or a loaded texture.
---@param texture nil|string|Texture nil removes current texture.
---@return nil
function Button:SetDisabledTexture(texture) end

--- Set the font to use for display.
--- - Can pass in a font path instead, but Font yields better type safety.
--- - Pass nil to explicitly unset the font.
---@param font nil|Font
---@param size nil|number
---@param flags string Any comma-delimited combination of OUTLINE, THICK and MONOCHROME; otherwise must be at least an empty string (except for FontString objects).
function Button:SetFont(font, size, flags) end

--- Set the button's label FontString
---@param fontString FontString
---@return nil
function Button:SetFontString(fontString) end

--- Set the font object for settings when highlighted.
---@param font Font
---@return nil
function Button:SetHighlightFontObject(font) end

--- Set the highlight text color for the Button.
---@param r number Red multiplier [0.0, 1.0]
---@param g number Green multiplier [0.0, 1.0]
---@param b number Blue multiplier [0.0, 1.0]
---@param a? number Opacity multiplier [0.0, 1.0]
---@return nil
function Button:SetHighlightTextColor(r, g, b, a) end

--- Set the highlight texture for the Button.
--- - Texture can be path or a loaded texture.
---@param texture nil|string|Texture nil removes current texture.
---@return nil
function Button:SetHighlightTexture(texture) end

--- Set the normal texture for the Button.
---@param texture nil|string|Texture nil removes current texture.
---@return nil
function Button:SetNormalTexture(texture) end

--- Set the text offset for this button when pushed.
---@param x number
---@param y number
---@return nil
function Button:SetPushedTextOffset(x, y) end

--- Set the pushed texture for the Button
---@param texture nil|string|Texture nil removes current texture.
---@return nil
function Button:SetPushedTexture(texture) end

--- Set the text label for the Button.
--- - Pass nil to clear the text.
---@param text nil|string
function Button:SetText(text) end

--- Set the text color for the Button.
---@param r number [0, 1]
---@param g number [0, 1]
---@param b number [0, 1]
---@return nil
function Button:SetTextColor(r, g, b) end

--- Set the font object from which to get settings for this Button's normal state.
---@param font Font
---@return nil
function Button:SetTextFontObject(font) end

--- Reverts LockHighlight() so button isn't always drawn highlighted.
---@return nil
function Button:UnlockHighlight() end
