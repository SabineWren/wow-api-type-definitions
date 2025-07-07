---@meta

---@param value any (type not inferred)
---@return nil
function GlueScrollFrameTemplate_OnMouseWheel(value) end

---@param frame any (type not inferred)
---@param numItems any (type not inferred)
---@param numToDisplay any (type not inferred)
---@param valueStep any (type not inferred)
---@param highlightFrame any (type not inferred)
---@param smallHighlightWidth any (type not inferred)
---@param bigHighlightWidth any (type not inferred)
---@return nil
function GlueScrollFrame_Update(frame, numItems, numToDisplay, valueStep, highlightFrame, smallHighlightWidth, bigHighlightWidth) end

---@param scrollrange any (type not inferred)
---@return nil
function GlueScrollFrame_OnScrollRangeChanged(scrollrange) end

---@param padding any (type not inferred)
---@param tab any (type not inferred)
---@param absoluteSize any (type not inferred)
---@return nil
function GlueTemplates_TabResize(padding, tab, absoluteSize) end

---@param frame any (type not inferred)
---@param id any (type not inferred)
---@return nil
function GlueTemplates_SetTab(frame, id) end

---@param frame any (type not inferred)
---@return any frame.selectedTab (type not inferred)
---@nodiscard
function GlueTemplates_GetSelectedTab(frame) end

---@param frame any (type not inferred)
---@return nil
function GlueTemplates_UpdateTabs(frame) end

---@param frame any (type not inferred)
---@param numTabs any (type not inferred)
---@return nil
function GlueTemplates_SetNumTabs(frame, numTabs) end

---@param frame any (type not inferred)
---@param index any (type not inferred)
---@return nil
function GlueTemplates_DisableTab(frame, index) end

---@param frame any (type not inferred)
---@param index any (type not inferred)
---@return nil
function GlueTemplates_EnableTab(frame, index) end

---@param tab any (type not inferred)
---@return nil
function GlueTemplates_DeselectTab(tab) end

---@param tab any (type not inferred)
---@return nil
function GlueTemplates_SelectTab(tab) end

---@param tab any (type not inferred)
---@return nil
function GlueTemplates_SetDisabledTabState(tab) end