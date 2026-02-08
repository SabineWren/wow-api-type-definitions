---@meta

HELPFRAME_BULLET_SPACING = -3
HELPFRAME_SECTION_SPACING = -20

---@return nil
function HelpFrameUnstick_OnClick() end
HELPFRAME_FRAMES = {  }
HELPFRAME_FRAMES[1] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES[2] = { name = "HelpFrameHarassment" }
HELPFRAME_FRAMES[3] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES[4] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES[5] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES[6] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES[7] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES[8] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES[9] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES[10] = { name = "HelpFrameGeneral" }
HELPFRAME_FRAMES["Stuck"] = { name = "HelpFrameStuck" }
HELPFRAME_FRAMES["GMHome"] = { name = "HelpFrameGM" }
HELPFRAME_FRAMES["Home"] = { name = "HelpFrameHome" }
HELPFRAME_FRAMES["OpenTicket"] = { name = "HelpFrameOpenTicket" }
GENERAL_HELPFRAME = {  }
GENERAL_HELPFRAME[1] = { title = STUCK_OPTION, titleText = HELPFRAME_STUCK_TEXT1, buttonText = STUCK_BUTTON_TEXT, buttonOnClickFunc = HelpFrameUnstick_OnClick, button2Text = STUCK_BUTTON2_TEXT }
GENERAL_HELPFRAME[3] = { title = HELPFRAME_GUILD_TITLE, titleText = HELPFRAME_GUILD_TEXT, bulletTitle1 = HELPFRAME_GUILD_BULLET_TITLE1, bullets1 = { HELPFRAME_GUILD_BULLET1, HELPFRAME_GUILD_BULLET2, HELPFRAME_GUILD_BULLET3 }, buttonText = HELPFRAME_GUILD_BUTTON_TEXT }
GENERAL_HELPFRAME[4] = { title = HELPFRAME_ITEM_TITLE, titleText = HELPFRAME_ITEM_TEXT, bulletTitle1 = HELPFRAME_ITEM_BULLET_TITLE1, bullets1 = { HELPFRAME_ITEM_BULLET1, HELPFRAME_ITEM_BULLET2, HELPFRAME_ITEM_BULLET3, HELPFRAME_ITEM_BULLET4, HELPFRAME_ITEM_BULLET5 }, bulletTitle2 = HELPFRAME_ITEM_BULLET_TITLE2, bullets2 = { HELPFRAME_ITEM_BULLET6, HELPFRAME_ITEM_BULLET7 }, buttonText = HELPFRAME_ITEM_BUTTON_TEXT }
GENERAL_HELPFRAME[5] = { title = HELPFRAME_ENVIRONMENTAL_TITLE, titleText = HELPFRAME_ENVIRONMENTAL_TEXT, bulletTitle1 = HELPFRAME_ENVIRONMENTAL_BULLET_TITLE1, bullets1 = { HELPFRAME_ENVIRONMENTAL_BULLET1, HELPFRAME_ENVIRONMENTAL_BULLET2, HELPFRAME_ENVIRONMENTAL_BULLET3, HELPFRAME_ENVIRONMENTAL_BULLET4 }, bulletTitle2 = HELPFRAME_ENVIRONMENTAL_BULLET_TITLE2, bullets2 = { HELPFRAME_ENVIRONMENTAL_BULLET5, HELPFRAME_ENVIRONMENTAL_BULLET6 }, buttonText = HELPFRAME_ENVIRONMENTAL_BUTTON_TEXT }
GENERAL_HELPFRAME[6] = { title = HELPFRAME_NONQUEST_TITLE, titleText = HELPFRAME_NONQUEST_TEXT, bulletTitle1 = HELPFRAME_NONQUEST_BULLET_TITLE1, bullets1 = { HELPFRAME_NONQUEST_BULLET1, HELPFRAME_NONQUEST_BULLET2, HELPFRAME_NONQUEST_BULLET3, HELPFRAME_NONQUEST_BULLET4 }, bulletTitle2 = HELPFRAME_NONQUEST_BULLET_TITLE2, bullets2 = { HELPFRAME_NONQUEST_BULLET5, HELPFRAME_NONQUEST_BULLET6, HELPFRAME_NONQUEST_BULLET7 }, buttonText = HELPFRAME_NONQUEST_BUTTON_TEXT }
GENERAL_HELPFRAME[7] = { title = HELPFRAME_QUEST_TITLE, titleText = HELPFRAME_QUEST_TEXT, bulletTitle1 = HELPFRAME_QUEST_BULLET_TITLE1, bullets1 = { HELPFRAME_QUEST_BULLET1, HELPFRAME_QUEST_BULLET2, HELPFRAME_QUEST_BULLET3 }, bulletTitle2 = HELPFRAME_QUEST_BULLET_TITLE2, bullets2 = { HELPFRAME_QUEST_BULLET4, HELPFRAME_QUEST_BULLET5 }, buttonText = HELPFRAME_QUEST_BUTTON_TEXT }
GENERAL_HELPFRAME[8] = { title = HELPFRAME_TECHNICAL_TITLE, titleText = HELPFRAME_TECHNICAL_TEXT, bulletTitle1 = HELPFRAME_TECHNICAL_BULLET_TITLE1, bullets1 = { HELPFRAME_TECHNICAL_BULLET1, HELPFRAME_TECHNICAL_BULLET2, HELPFRAME_TECHNICAL_BULLET3, HELPFRAME_TECHNICAL_BULLET4, HELPFRAME_TECHNICAL_BULLET5, HELPFRAME_TECHNICAL_BULLET6, HELPFRAME_TECHNICAL_BULLET7 }, endText = HELPFRAME_TECHNICAL_BULLET_TITLE2 }
GENERAL_HELPFRAME[9] = { title = HELPFRAME_ACCOUNT_TITLE, titleText = HELPFRAME_ACCOUNT_TEXT, bulletTitle1 = HELPFRAME_ACCOUNT_BULLET_TITLE1, bullets1 = { HELPFRAME_ACCOUNT_BULLET1, HELPFRAME_ACCOUNT_BULLET2, HELPFRAME_ACCOUNT_BULLET3 }, endText = HELPFRAME_ACCOUNT_ENDTEXT, buttonText = HELPFRAME_ACCOUNT_BUTTON_TEXT }
GENERAL_HELPFRAME[10] = { title = HELPFRAME_CHARACTER_TITLE, titleText = HELPFRAME_CHARACTER_TEXT, bulletTitle1 = HELPFRAME_CHARACTER_BULLET_TITLE1, bullets1 = { HELPFRAME_CHARACTER_BULLET1, HELPFRAME_CHARACTER_BULLET2, HELPFRAME_CHARACTER_BULLET3, HELPFRAME_CHARACTER_BULLET4, HELPFRAME_CHARACTER_BULLET5 }, buttonText = HELPFRAME_CHARACTER_BUTTON_TEXT }
MAX_GENERAL_BULLETS = 10
NUM_GM_CATEGORIES_TO_DISPLAY = 10
GMTICKET_CHECK_INTERVAL = 600
elapsedTime = 0
PETITION_QUEUE_ACTIVE = 1

---@return nil
function HelpFrame_OnLoad() end

---@return nil
function HelpFrame_OnShow() end

---@return nil
function HelpFrame_OnEvent() end

---@param key any (type not inferred)
---@param ticketType any (type not inferred)
---@return nil
function HelpFrame_ShowFrame(key, ticketType) end

---@param key any (type not inferred)
---@return nil
function HelpFrame_SetupGeneralFrame(key) end

---@return nil
function ToggleHelpFrame() end

---@return nil
function HelpFrameOpenTicketDropDown_OnLoad() end

---@return nil
function HelpFrameOpenTicketDropDown_Initialize() end

---@return nil
function HelpFrameOpenTicketDropDown_OnClick() end

---@return nil
function HelpFrameOpenTicketDropDown_OnShow() end

---@param event any (type not inferred)
---@return nil
function HelpFrameOpenTicket_OnEvent(event) end

---@return nil
function HelpFrameOpenTicketSubmit_OnClick() end

---@return nil
function TicketStatusFrame_OnEvent() end

---@return nil
function HelpFrameButton_OnClick() end

---@return nil
function HelpFrameGM_Update() end


---@return nil
function HelpFrameGeneralButton_OnClick() end

---@param elapsed any (type not inferred)
---@return nil
function TicketStatus_OnUpdate(elapsed) end