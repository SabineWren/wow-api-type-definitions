---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#EditBox)
---@class EditBox: Frame, FontInstance
EditBox = {}

--- Add text to the edit history.
--- - Use up/down cursor keys to navigate history
---@param text string
---@return nil
function EditBox:AddHistoryLine(text) end

--- EditBox will no longer receive keyboard input
---@return nil
function EditBox:ClearFocus() end

--- Return whether only alt+arrow keys work for navigating the edit box, not arrow keys alone.
---@return nil|1
---@nodiscard
function EditBox:GetAltArrowKeyMode() end

--- Gets the blink speed of the EditBox in seconds
---@return number
---@nodiscard
function EditBox:GetBlinkSpeed() end

--- Get the number of history lines for this edit box
---@return integer
---@nodiscard
function EditBox:GetHistoryLines() end

--- - @See [EditBox:ToggleInputLanguage](lua://EditBox:ToggleInputLanguage)
---@return CharacterEncoding encoding
---@nodiscard
function EditBox:GetInputLanguage() end

--- Gets the maximum number bytes allowed in the EditBox
---@return integer
---@nodiscard
function EditBox:GetMaxBytes() end

--- Gets the maximum number of letters allowed in the EditBox
---@return integer
---@nodiscard
function EditBox:GetMaxLetters() end

--- Gets the number of letters in the box.
---@return integer
---@nodiscard
function EditBox:GetNumLetters() end

--- - ex. 1234abc -> 1234
--- - ex. 12abc34 -> 12
--- - ex. abc1234 -> 0
---@return number 0 if parsing failed.
---@nodiscard
function EditBox:GetNumber() end

--- Get the current text contained in the edit box.
--- - Duplicates special characters: "|" and "\" are escaped as "||" and "\\"
--- - Returns the latest value within OnTextSet and OnTextChanged handlers.
---@return string
---@nodiscard
function EditBox:GetText() end

--- Gets the text display insets for the EditBox.
--- - i.e. units of padding to each edge of the EditBox.
---@return number left
---@return number right
---@return number top
---@return number bottom
---@nodiscard
function EditBox:GetTextInsets() end

--- Set the highlight to all or some of the edit box text.
--- - The position before the first character is 0.
--- - Passing no args will highlight all text.
---@param startPos? integer
---@param endPos? integer
---@return nil
function EditBox:HighlightText(startPos, endPos) end

--- Insert text into the edit box at cursor position.
---@param text string
---@return nil
function EditBox:Insert(text) end

--- Determine if the EditBox has autofocus enabled.
---@return boolean
---@nodiscard
function EditBox:IsAutoFocus() end

--- Determine if the EditBox accepts multiple lines.
--- - @see [EditBox:SetMultiLine](lua://EditBox:SetMultiLine)
---@return boolean
---@nodiscard
function EditBox:IsMultiLine() end

--- Determine if the EditBox only accepts numeric input.
---@return boolean
---@nodiscard
function EditBox:IsNumeric() end

--- Determine if the EditBox performs password masking.
---@return boolean
---@nodiscard
function EditBox:IsPassword() end

--- Make only alt+arrow keys work for navigating the edit box, not arrow keys alone.
---@param isEnabled boolean
---@return nil
function EditBox:SetAltArrowKeyMode(isEnabled) end

--- Set whether or not the editbox will attempt to get input focus when it gets shown (default: yes).
--- - Default to true
---@param isAutoFocus boolean
---@return nil
function EditBox:SetAutoFocus(isAutoFocus) end

--- - TODO best guess, as param not documented.
---@param speed number
---@return nil
function EditBox:SetBlinkSpeed(speed) end

--- Move input focus (the cursor) to this editbox
---@return nil
function EditBox:SetFocus() end

--- Set the number of history lines to remember.
--- - TODO best guess, as param not documented.
---@param lines number
---@return nil
function EditBox:SetHistoryLines(lines) end

--- Set the maximum byte size for entered text.
---@param maxBytes number
---@return nil
function EditBox:SetMaxBytes(maxBytes) end

--- Set the maximum number of letters for entered text.
---@param maxLetters number Up to 255
---@return nil
function EditBox:SetMaxLetters(maxLetters) end

--- Set the EditBox's multi-line state
---@param isMultiLine boolean
---@return nil
function EditBox:SetMultiLine(isMultiLine) end

---@param value number
---@return nil
function EditBox:SetNumber(value) end

--- Set if the EditBox only accepts numeric input
---@param isNumeric boolean
---@return nil
function EditBox:SetNumeric(isNumeric) end

--- Set the EditBox's password masking state.
--- - Toggle whether all character in the EditBox are shown as *.
--- - EditBox:GetText() returns normal characters, not stars.
---@param isPassword boolean
---@return nil
function EditBox:SetPassword(isPassword) end

--- Set the text contained in the edit box.
---@param text string
---@return nil
function EditBox:SetText(text) end

--- Sets EditBox padding.
---@param l number
---@param r number
---@param t number
---@param b number
---@return nil
function EditBox:SetTextInsets(l, r, t, b) end

---@param encoding CharacterEncoding
---@return nil
function EditBox:ToggleInputLanguage(encoding) end
