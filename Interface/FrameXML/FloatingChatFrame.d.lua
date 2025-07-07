---@meta

SELECTED_DOCK_FRAME = nil ---@type nil
DOCKED_CHAT_FRAMES = {  }
DOCK_COPY = {  }
MOVING_CHATFRAME = nil ---@type nil
CHAT_TAB_SHOW_DELAY = 0.2
CHAT_FRAME_FADE_TIME = 0.15
DEFAULT_CHATFRAME_ALPHA = 0.25
DEFAULT_CHATFRAME_COLOR = { r = 0, g = 0, b = 0 }
CHAT_FRAME_TEXTURES = { "Background", "ResizeTopLeftTexture", "ResizeTopRightTexture", "ResizeBottomLeftTexture", "ResizeBottomRightTexture", "ResizeTopTexture", "ResizeBottomTexture", "ResizeLeftTexture", "ResizeRightTexture" }

---@return nil
function FloatingChatFrame_OnLoad() end

---@param event any (type not inferred)
---@return nil
function FloatingChatFrame_OnEvent(event) end

---@param id any (type not inferred)
---@param onUpdateEvent any (type not inferred)
---@return nil
function FloatingChatFrame_Update(id, onUpdateEvent) end

---@return nil
function FCFOptionsDropDown_OnLoad() end

---@return nil
function FCFOptionsDropDown_Initialize() end


---@return nil
function FCFServerChannelsDropDown_OnClick() end


---@return nil
function FCFChannelDropDown_OnClick() end

---@param menuChatTypeGroups any (type not inferred)
---@return nil
function FCFDropDown_LoadChatTypes(menuChatTypeGroups) end

---@param chatGroup any (type not inferred)
---@return nil
function FCF_LoadChatSubTypes(chatGroup) end

---@return nil
function FCFMessageTypeDropDown_OnClick() end

---@param anchorPoint any (type not inferred)
---@return nil
function FCF_Resize(anchorPoint) end

---@return nil
function FCF_StopResize() end

---@param name any (type not inferred)
---@return nil
function FCF_OpenNewWindow(name) end

---@return any count (type not inferred)
---@nodiscard
function FCF_GetNumActiveChatFrames() end

---@return nil
function FCF_RenameChatWindow_Popup() end

---@return nil
function FCF_NewChatWindow() end

---@return nil
function FCF_JoinNewChannel() end

---@param frame any (type not inferred)
---@param name any (type not inferred)
---@param doNotSave any (type not inferred)
---@return nil
function FCF_SetWindowName(frame, name, doNotSave) end

---@param frame any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@param doNotSave any (type not inferred)
---@return nil
function FCF_SetWindowColor(frame, r, g, b, doNotSave) end

---@param frame any (type not inferred)
---@param alpha any (type not inferred)
---@param doNotSave any (type not inferred)
---@return nil
function FCF_SetWindowAlpha(frame, alpha, doNotSave) end

---@return any x0 (type not inferred)
---@nodiscard
function FCF_GetCurrentChatFrameID() end

---@return any currentChatFrame (type not inferred)
---@nodiscard
function FCF_GetCurrentChatFrame() end

---@return nil
function FCF_SetChatTypeColor() end

---@return nil
function FCF_SetChatWindowBackGroundColor() end

---@return nil
function FCF_SetChatWindowOpacity() end

---@param chatFrame any (type not inferred)
---@param fontSize any (type not inferred)
---@return nil
function FCF_SetChatWindowFontSize(chatFrame, fontSize) end

---@param previousValues any (type not inferred)
---@return nil
function FCF_CancelFontColorSettings(previousValues) end

---@param previousValues any (type not inferred)
---@return nil
function FCF_CancelWindowColorSettings(previousValues) end

---@param string any (type not inferred)
---@return nil
function FCF_StripChatMsg(string) end

---@return nil
function FCF_ToggleLock() end

---@param chatFrame any (type not inferred)
---@param isLocked any (type not inferred)
---@return nil
function FCF_SetLocked(chatFrame, isLocked) end

---@param elapsed any (type not inferred)
---@return nil
function FCF_OnUpdate(elapsed) end

---@param chatTab any (type not inferred)
---@param chatFrame any (type not inferred)
---@return nil
function FCF_ChatTabFadeFinished(chatTab, chatFrame) end

---@param chatFrame any (type not inferred)
---@return any 1 (type not inferred)
---@nodiscard
function FCF_IsValidChatFrame(chatFrame) end

---@param chatFrame any (type not inferred)
---@return any changed (type not inferred)
---@nodiscard
function FCF_UpdateButtonSide(chatFrame) end

---@param chatFrame any (type not inferred)
---@param buttonSide any (type not inferred)
---@return nil
function FCF_SetButtonSide(chatFrame, buttonSide) end

---@param chatFrame any (type not inferred)
---@return any chatFrame.buttonSide (type not inferred)
---@nodiscard
function FCF_GetButtonSide(chatFrame) end

---@return nil
function FCF_DockUpdate() end

---@param chatFrame1 any (type not inferred)
---@param chatFrame2 any (type not inferred)
---@return number 0
---@nodiscard
function FCF_TabCompare(chatFrame1, chatFrame2) end

---@param frame any (type not inferred)
---@param index any (type not inferred)
---@return nil
function FCF_DockFrame(frame, index) end

---@param frame any (type not inferred)
---@return nil
function FCF_UnDockFrame(frame) end

---@param frame any (type not inferred)
---@return nil
function FCF_SelectDockFrame(frame) end

---@param button any (type not inferred)
---@return nil
function FCF_Tab_OnClick(button) end

---@param chatFrame any (type not inferred)
---@param x any (type not inferred)
---@return nil
function FCF_SetTabPosition(chatFrame, x) end

---@return nil nil
---@nodiscard
function FCF_GetActiveDockRegion() end

---@return nil
function FCF_SaveDock() end

---@param frame any (type not inferred)
---@return nil
function FCF_Close(frame) end

---@param chatFrame any (type not inferred)
---@return nil
function FCF_ValidateChatFramePosition(chatFrame) end

---@return nil
function FCF_FlashTab() end

---@return nil
function FCF_UpdateDockPosition() end

---@return nil
function FCF_UpdateCombatLogPosition() end

---@return nil
function FCF_Set_SimpleChat() end

---@return nil
function FCF_Set_NormalChat() end

---@param isLocked any (type not inferred)
---@return nil
function FCF_Set_ChatLocked(isLocked) end

---@return nil
function FCF_Get_ChatLocked() end

---@return nil
function ToggleCombatLog() end

---@param noDelay any (type not inferred)
---@return nil
function SetChatMouseOverDelay(noDelay) end