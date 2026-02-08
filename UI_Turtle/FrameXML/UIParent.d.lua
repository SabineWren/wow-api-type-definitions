---@meta

TOOLTIP_UPDATE_TIME = 0.2
ROTATIONS_PER_SECOND = .5
FADEFRAMES = {  }
FLASHFRAMES = {  }
PULSEBUTTONS = {  }
BATTLEFIELD_TAB_OFFSET_Y = 0
UIPanelWindows = {  }
UIPanelWindows["GameMenuFrame"] = { area = "center", pushable = 0, whileDead = 1 }
UIPanelWindows["OptionsFrame"] = { area = "center", pushable = 0, whileDead = 1 }
UIPanelWindows["SoundOptionsFrame"] = { area = "center", pushable = 0, whileDead = 1 }
UIPanelWindows["UIOptionsFrame"] = { area = "center", pushable = 0, whileDead = 1 }
UIPanelWindows["CharacterFrame"] = { area = "left", pushable = 2, whileDead = 1 }
UIPanelWindows["ItemTextFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["SpellBookFrame"] = { area = "left", pushable = 0, whileDead = 1 }
UIPanelWindows["LootFrame"] = { area = "left", pushable = 7 }
UIPanelWindows["TaxiFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["QuestFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["QuestLogFrame"] = { area = "left", pushable = 0, whileDead = 1 }
UIPanelWindows["MerchantFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["TradeFrame"] = { area = "left", pushable = 1 }
UIPanelWindows["BankFrame"] = { area = "left", pushable = 6 }
UIPanelWindows["FriendsFrame"] = { area = "left", pushable = 0, whileDead = 1 }
UIPanelWindows["WorldMapFrame"] = { area = "full", pushable = 0, whileDead = 1 }
UIPanelWindows["CinematicFrame"] = { area = "full", pushable = 0 }
UIPanelWindows["TabardFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["GuildRegistrarFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["PetitionFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["HelpFrame"] = { area = "center", pushable = 0, whileDead = 1 }
UIPanelWindows["GossipFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["MailFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["BattlefieldFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["PetStableFrame"] = { area = "left", pushable = 0 }
UIPanelWindows["WorldStateScoreFrame"] = { area = "center", pushable = 0, whileDead = 1 }
UIPanelWindows["DressUpFrame"] = { area = "left", pushable = 2 }
UIPanelWindows["MinigameFrame"] = { area = "left", pushable = 0 }
UIChildWindows = { "OpenMailFrame", "GuildControlPopupFrame", "GuildMemberDetailFrame", "GuildInfoFrame" }
--Manual (link)
---https://wowpedia.fandom.com/wiki/Make_frames_closable_with_the_Escape_key?oldid=213706
UISpecialFrames = { "ItemRefTooltip", "ColorPickerFrame" }
UIMenus = { "ChatMenu", "EmoteMenu", "LanguageMenu", "DropDownList1", "DropDownList2" }
ITEM_QUALITY_COLORS = {  }

---@return nil
function UIParent_OnLoad() end

---@return nil
function AuctionFrame_LoadUI() end

---@return nil
function BattlefieldMinimap_LoadUI() end

---@return nil
function ClassTrainerFrame_LoadUI() end

---@return nil
function CraftFrame_LoadUI() end

---@return nil
function InspectFrame_LoadUI() end

---@return nil
function KeyBindingFrame_LoadUI() end

---@return nil
function MacroFrame_LoadUI() end

---@return nil
function RaidFrame_LoadUI() end

---@return nil
function TalentFrame_LoadUI() end

---@return nil
function TradeSkillFrame_LoadUI() end

---@return nil
function GMSurveyFrame_LoadUI() end

---@return nil
function ShowMacroFrame() end

---@return nil
function ToggleTalentFrame() end

---@return nil
function ToggleBattlefieldMinimap() end

---@param unit any (type not inferred)
---@return nil
function InspectUnit(unit) end

---@param event any (type not inferred)
---@return nil
function UIParent_OnEvent(event) end

---@param name any (type not inferred)
---@return any loaded (type not inferred)
---@nodiscard
function UIParentLoadAddOn(name) end

---@param frame any (type not inferred)
---@param force any (type not inferred)
---@return nil
function ShowUIPanel(frame, force) end

---@param frame any (type not inferred)
---@return nil
function HideUIPanel(frame) end

---@param frame any (type not inferred)
---@return nil
function SetDoublewideFrame(frame) end

---@param frame any (type not inferred)
---@return nil
function SetLeftFrame(frame) end

---@param frame any (type not inferred)
---@param skipSetPoint any (type not inferred)
---@return nil
function SetCenterFrame(frame, skipSetPoint) end

---@param frame any (type not inferred)
---@return nil
function SetFullScreenFrame(frame) end

---@return nil
function MovePanelToLeft() end

---@return nil
function MovePanelToCenter() end

---@return any 1 (type not inferred)
---@nodiscard
function CanOpenPanels() end

---@return any UIParent.fullscreen (type not inferred)
---@nodiscard
function GetFullScreenFrame() end

---@return any UIParent.center (type not inferred)
---@nodiscard
function GetCenterFrame() end

---@return any UIParent.left (type not inferred)
---@nodiscard
function GetLeftFrame() end

---@return any UIParent.doublewide (type not inferred)
---@nodiscard
function GetDoublewideFrame() end

---@param ignoreCenter any (type not inferred)
---@return any found (type not inferred)
---@nodiscard
function CloseWindows(ignoreCenter) end

---@return nil
function CloseAllWindows_WithExceptions() end

---@param ignoreCenter any (type not inferred)
---@return any windowsVisible (type not inferred)
---@nodiscard
function CloseAllWindows(ignoreCenter) end

---@return any menusVisible (type not inferred)
---@nodiscard
function CloseMenus() end

---@return nil
function IsOptionFrameOpen() end

---@param seconds any (type not inferred)
---@param noSeconds any (type not inferred)
---@return any time (type not inferred)
---@nodiscard
function SecondsToTime(seconds, noSeconds) end

---@param seconds any (type not inferred)
---@return any x0 (type not inferred)
---@nodiscard
function SecondsToTimeAbbrev(seconds) end



---@param globalStringName any (type not inferred)
---@param tooltip any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@return nil
function BuildMultilineTooltip(globalStringName, tooltip, r, g, b) end

---@param frame any (type not inferred)
---@param fadeInfo any (type not inferred)
---@return nil
function UIFrameFade(frame, fadeInfo) end

---@param frame any (type not inferred)
---@param timeToFade any (type not inferred)
---@param startAlpha any (type not inferred)
---@param endAlpha any (type not inferred)
---@return nil
function UIFrameFadeIn(frame, timeToFade, startAlpha, endAlpha) end

---@param frame any (type not inferred)
---@param timeToFade any (type not inferred)
---@param startAlpha any (type not inferred)
---@param endAlpha any (type not inferred)
---@return nil
function UIFrameFadeOut(frame, timeToFade, startAlpha, endAlpha) end

---@param frame any (type not inferred)
---@return nil
function UIFrameFadeRemoveFrame(frame) end

---@param frame any (type not inferred)
---@return nil
function UIFrameFlashRemoveFrame(frame) end

---@param elapsed any (type not inferred)
---@return nil
function UIFrameFadeUpdate(elapsed) end

---@param frame any (type not inferred)
---@return nil nil
---@nodiscard
function UIFrameIsFading(frame) end

---@param frame any (type not inferred)
---@param fadeInTime any (type not inferred)
---@param fadeOutTime any (type not inferred)
---@param flashDuration any (type not inferred)
---@param showWhenDone any (type not inferred)
---@param flashInHoldTime any (type not inferred)
---@param flashOutHoldTime any (type not inferred)
---@return nil
function UIFrameFlash(frame, fadeInTime, fadeOutTime, flashDuration, showWhenDone, flashInHoldTime, flashOutHoldTime) end

---@param elapsed any (type not inferred)
---@return nil
function UIFrameFlashUpdate(elapsed) end

---@param frameName any (type not inferred)
---@param mode any (type not inferred)
---@return nil
function UIFrameFlashSwitch(frameName, mode) end

---@param frame any (type not inferred)
---@return nil nil
---@nodiscard
function UIFrameIsFlashing(frame) end

---@param frame any (type not inferred)
---@return nil
function UIFrameFlashStop(frame) end

---@param button any (type not inferred)
---@param duration any (type not inferred)
---@param pulseRate any (type not inferred)
---@return nil
function SetButtonPulse(button, duration, pulseRate) end

---@param elapsed any (type not inferred)
---@return nil
function ButtonPulse_OnUpdate(elapsed) end

---@param button any (type not inferred)
---@return nil
function ButtonPulse_StopPulse(button) end

---@param table any (type not inferred)
---@param item any (type not inferred)
---@return nil
function tDeleteItem(table, item) end

--Manual
---@param frame Frame
---@param topOffset number
---@param bottomOffset number
---@param leftOffset number
---@param rightOffset number
---@return nil|1
---@overload fun(frame: Frame): nil|1
---@nodiscard
function MouseIsOver(frame, topOffset, bottomOffset, leftOffset, rightOffset) end

---@return nil
function Model_OnLoad() end

---@param model any (type not inferred)
---@param rotationIncrement any (type not inferred)
---@return nil
function Model_RotateLeft(model, rotationIncrement) end

---@param model any (type not inferred)
---@param rotationIncrement any (type not inferred)
---@return nil
function Model_RotateRight(model, rotationIncrement) end

---@param elapsedTime any (type not inferred)
---@param model any (type not inferred)
---@param rotationsPerSecond any (type not inferred)
---@return nil
function Model_OnUpdate(elapsedTime, model, rotationsPerSecond) end

---@param clicked any (type not inferred)
---@return nil
function ToggleGameMenu(clicked) end

---@param texture any (type not inferred)
---@param desaturation any (type not inferred)
---@return nil
function SetDesaturation(texture, desaturation) end

---@param frame any (type not inferred)
---@param offscreenPadding any (type not inferred)
---@param returnOffscreen any (type not inferred)
---@return nil
function ValidateFramePosition(frame, offscreenPadding, returnOffscreen) end
UIPARENT_MANAGED_FRAME_POSITIONS = {  }
UIPARENT_MANAGED_FRAME_POSITIONS["MultiBarBottomLeft"] = { baseY = 17, reputation = 9, maxLevel = -5, anchorTo = "ActionButton1", point = "BOTTOMLEFT", rpoint = "TOPLEFT" }
UIPARENT_MANAGED_FRAME_POSITIONS["GroupLootFrame1"] = { baseY = 60, bottomEither = 42, pet = 42, reputation = 9 }
UIPARENT_MANAGED_FRAME_POSITIONS["TutorialFrameParent"] = { baseY = 55, bottomEither = 47, pet = 42, reputation = 9 }
UIPARENT_MANAGED_FRAME_POSITIONS["FramerateLabel"] = { baseY = 64, bottomEither = 42, pet = 42, reputation = 9 }
UIPARENT_MANAGED_FRAME_POSITIONS["CastingBarFrame"] = { baseY = 60, bottomEither = 40, pet = 40, reputation = 9 }
UIPARENT_MANAGED_FRAME_POSITIONS["ChatFrame1"] = { baseY = 85, bottomLeft = 17, pet = 17, reputation = 9, maxLevel = -5, anchorTo = "UIParent", point = "BOTTOMLEFT", rpoint = "BOTTOMLEFT", xOffset = 32 }
UIPARENT_MANAGED_FRAME_POSITIONS["ChatFrame2"] = { baseY = 85, bottomRight = 17, rightLeft = -88, rightRight = -43, reputation = 9, maxLevel = -5, anchorTo = "UIParent", point = "BOTTOMRIGHT", rpoint = "BOTTOMRIGHT", xOffset = -32 }
UIPARENT_MANAGED_FRAME_POSITIONS["ShapeshiftBarFrame"] = { baseY = 0, bottomLeft = 45, reputation = 9, maxLevel = -5, anchorTo = "MainMenuBar", point = "BOTTOMLEFT", rpoint = "TOPLEFT", xOffset = 30 }
UIPARENT_MANAGED_FRAME_POSITIONS["CONTAINER_OFFSET_X"] = { baseX = 0, rightLeft = 90, rightRight = 45, isVar = "xAxis" }
UIPARENT_MANAGED_FRAME_POSITIONS["CONTAINER_OFFSET_Y"] = { baseY = 70, bottomEither = 27, bottomRight = 0, reputation = 9, isVar = "yAxis", pet = 23 }
UIPARENT_MANAGED_FRAME_POSITIONS["BATTLEFIELD_TAB_OFFSET_Y"] = { baseY = 210, bottomRight = 40, reputation = 9, isVar = "yAxis" }
UIPARENT_MANAGED_FRAME_POSITIONS["PETACTIONBAR_YPOS"] = { baseY = 97, bottomLeft = 43, reputation = 9, maxLevel = -5, isVar = "yAxis" }

---@return nil
function UIParent_ManageFramePositions() end

---@param elapsed any (type not inferred)
---@return nil
function PlayerStatus_OnUpdate(elapsed) end

---@return number 0
---@nodiscard
function GetScreenHeightScale() end

---@return number 0
---@nodiscard
function GetScreenWidthScale() end

---@return nil
function CursorUpdate() end

---@return nil
function CursorOnUpdate() end

--Manual
---@param name string ex. "UP", "SHIFT-PAGEDOWN".
---@param prefix string Usually "KEY_" or "BINDING_NAME_".
---@param returnAbbr? boolean|1|0|nil Truthy-ness check.
---@return string
---@nodiscard
---```
--- local x = GetBindingText("UP", "KEY_")
--- x == "Up Arrow" -- in English locale.
---```
function GetBindingText(name, prefix, returnAbbr) end

---@param material any (type not inferred)
---@return any textColor (type not inferred)
---@return any titleColor (type not inferred)
---@nodiscard
function GetMaterialTextColors(material) end

---@param frame any (type not inferred)
---@return nil
function LowerFrameLevel(frame) end

---@param frame any (type not inferred)
---@return nil
function RaiseFrameLevel(frame) end
