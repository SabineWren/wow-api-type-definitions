---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#EditBox)
---@class EditBox: Frame, FontInstance
EditBox = {}

--[[
function EditBox:AddHistoryLine("text") end--- Add text to the edit history.

function EditBox:ClearFocus() end

function EditBox:GetAltArrowKeyMode() end--- Return whether only alt+arrow keys work for navigating the edit box, not arrow keys alone.

function EditBox:GetBlinkSpeed() end--- Gets the blink speed of the EditBox in seconds

function EditBox:GetHistoryLines() end--- Get the number of history lines for this edit box

function EditBox:GetInputLanguage() end--- Get the input language (locale based not in-game)

function EditBox:GetMaxBytes() end--- Gets the maximum number bytes allowed in the EditBox

function EditBox:GetMaxLetters() end--- Gets the maximum number of letters allowed in the EditBox

function EditBox:GetNumLetters() end--- Gets the number of letters in the box.

function EditBox:GetNumber() end

function EditBox:GetText() end--- Get the current text contained in the edit box.

function EditBox:GetTextInsets() end--- Gets the text display insets for the EditBox

function EditBox:HighlightText([startPos, endPos]) end--- Set the highlight to all or some of the edit box text.

function EditBox:Insert("text") end--- Insert text into the edit box.

function EditBox:IsAutoFocus() end--- Determine if the EditBox has autofocus enabled

function EditBox:IsMultiLine() end--- Determine if the EditBox accepts multiple lines

function EditBox:IsNumeric() end--- Determine if the EditBox only accepts numeric input

function EditBox:IsPassword() end--- Determine if the EditBox performs password masking

function EditBox:SetAltArrowKeyMode(enable) end--- Make only alt+arrow keys work for navigating the edit box, not arrow keys alone.

function EditBox:SetAutoFocus(state) end--- Set whether or not the editbox will attempt to get input focus when it gets shown (default: yes)

function EditBox:SetBlinkSpeed

function EditBox:SetFocus() end--- Move input focus (the cursor) to this editbox

function EditBox:SetHistoryLines() end--- Set the number of history lines to remember.

function EditBox:SetMaxBytes(maxBytes) end--- Set the maximum byte size for entered text.

function EditBox:SetMaxLetters(maxLetters) end--- Set the maximum number of letters for entered text.

function EditBox:SetMultiLine(state) end--- Set the EditBox's multi-line state

function EditBox:SetNumber(number)

function EditBox:SetNumeric(state) end--- Set if the EditBox only accepts numeric input

function EditBox:SetPassword(state) end--- Set the EditBox's password masking state

function EditBox:SetText("text") end--- Set the text contained in the edit box.

function EditBox:SetTextInsets(l, r, t, b) end

function EditBox:ToggleInputLanguage() end

]]
