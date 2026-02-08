---@meta

---@param frame any (type not inferred)
---@return nil
function PanelTemplates_Tab_OnClick(frame) end

---@param frame any (type not inferred)
---@param id any (type not inferred)
---@return nil
function PanelTemplates_SetTab(frame, id) end

---@param frame any (type not inferred)
---@return any frame.selectedTab (type not inferred)
---@nodiscard
function PanelTemplates_GetSelectedTab(frame) end

---@param frame any (type not inferred)
---@return nil
function PanelTemplates_UpdateTabs(frame) end

---@param padding any (type not inferred)
---@param tab any (type not inferred)
---@param absoluteSize any (type not inferred)
---@param maxWidth any (type not inferred)
---@return nil
function PanelTemplates_TabResize(padding, tab, absoluteSize, maxWidth) end

---@param frame any (type not inferred)
---@param numTabs any (type not inferred)
---@return nil
function PanelTemplates_SetNumTabs(frame, numTabs) end

---@param frame any (type not inferred)
---@param index any (type not inferred)
---@return nil
function PanelTemplates_DisableTab(frame, index) end

---@param frame any (type not inferred)
---@param index any (type not inferred)
---@return nil
function PanelTemplates_EnableTab(frame, index) end

---@param tab any (type not inferred)
---@return nil
function PanelTemplates_DeselectTab(tab) end

---@param tab any (type not inferred)
---@return nil
function PanelTemplates_SelectTab(tab) end

---@param tab any (type not inferred)
---@return nil
function PanelTemplates_SetDisabledTabState(tab) end

---@param value any (type not inferred)
---@return nil
function ScrollFrameTemplate_OnMouseWheel(value) end

---@param frame any (type not inferred)
---@param numItems any (type not inferred)
---@param numToDisplay any (type not inferred)
---@param valueStep any (type not inferred)
---@param button any (type not inferred)
---@param smallWidth any (type not inferred)
---@param bigWidth any (type not inferred)
---@param highlightFrame any (type not inferred)
---@param smallHighlightWidth any (type not inferred)
---@param bigHighlightWidth any (type not inferred)
---@return any showScrollBar (type not inferred)
---@nodiscard
function FauxScrollFrame_Update(frame, numItems, numToDisplay, valueStep, button, smallWidth, bigWidth, highlightFrame, smallHighlightWidth, bigHighlightWidth) end

---@param itemHeight any (type not inferred)
---@param updateFunction any (type not inferred)
---@return nil
function FauxScrollFrame_OnVerticalScroll(itemHeight, updateFunction) end

---@param frame any (type not inferred)
---@return any frame.offset (type not inferred)
---@nodiscard
function FauxScrollFrame_GetOffset(frame) end

---@param frame any (type not inferred)
---@param offset any (type not inferred)
---@return nil
function FauxScrollFrame_SetOffset(frame, offset) end

---@return nil
function ScrollFrame_OnLoad() end

---@param scrollrange any (type not inferred)
---@return nil
function ScrollFrame_OnScrollRangeChanged(scrollrange) end

---@param scrollFrame any (type not inferred)
---@return nil
function ScrollingEdit_OnTextChanged(scrollFrame) end

---@param x any (type not inferred)
---@param y any (type not inferred)
---@param w any (type not inferred)
---@param h any (type not inferred)
---@return nil
function ScrollingEdit_OnCursorChanged(x, y, w, h) end

---@param scrollFrame any (type not inferred)
---@return nil
function ScrollingEdit_OnUpdate(scrollFrame) end