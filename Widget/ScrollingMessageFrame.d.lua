---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#ScrollingMessageFrame)
---@class ScrollingMessageFrame: Frame, FontInstance
ScrollingMessageFrame = {}

--- Add a message to the frame, with an optional color ID.
--- - Passing nil, "", or invalid type will not print anything.
---@param text nil|number|string
---@param r? number Red amount [0.0, 1.0]
---@param g? number Green amount [0.0, 1.0]
---@param b? number Blue amount [0.0, 1.0]
---@param id? number A number that classifies the line of text for later changing the color.
---@return nil
function ScrollingMessageFrame:AddMessage(text, r, g, b, id) end

-- ScrollingMessageFrame:AtBottom() - Test whether frame is at the bottom.
-- ScrollingMessageFrame:AtTop() - Test whether frame is at the top - New in 1.11.
-- ScrollingMessageFrame:Clear() - Clear all lines from the frame.
-- ScrollingMessageFrame:GetCurrentLine() - Returns the line number that was printed last, starting from 0.
-- ScrollingMessageFrame:GetCurrentScroll() -- Returns the amount of messages from the end message (GetNumMessages()) that the user has scrolled.
-- ScrollingMessageFrame:GetFadeDuration
-- ScrollingMessageFrame:GetFading
-- ScrollingMessageFrame:GetMaxLines() - Get the maximum number of lines the frame can display.
-- ScrollingMessageFrame:GetNumLinesDisplayed()
-- ScrollingMessageFrame:GetNumMessages()
-- ScrollingMessageFrame:GetTimeVisible
-- ScrollingMessageFrame:PageDown()
-- ScrollingMessageFrame:PageUp()
-- ScrollingMessageFrame:ScrollDown()
-- ScrollingMessageFrame:ScrollToBottom()
-- ScrollingMessageFrame:ScrollToTop()
-- ScrollingMessageFrame:ScrollUp()
-- ScrollingMessageFrame:SetFadeDuration(seconds) - Set the fade duration.
-- ScrollingMessageFrame:SetFading([isEnabled]) - Set whether fading is enabled - Renamed in 1.11.
-- ScrollingMessageFrame:SetMaxLines(lines) - Set the maximum number of displayed lines. Tested successfully with values up to a million. Resets the messages already within the frame.
-- ScrollingMessageFrame:SetScrollFromBottom
-- ScrollingMessageFrame:SetTimeVisible(seconds) - Sets how long lines remain visible.
-- ScrollingMessageFrame:UpdateColorByID(id, r, g, b)
