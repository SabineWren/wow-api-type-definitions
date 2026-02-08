---@meta

MAX_NUM_QUESTS = 32
MAX_NUM_ITEMS = 10
MAX_REQUIRED_ITEMS = 6
QUEST_DESCRIPTION_GRADIENT_LENGTH = 30
QUEST_DESCRIPTION_GRADIENT_CPS = 40
QUESTINFO_FADE_IN = 1

---@return nil
function QuestFrame_OnLoad() end

---@param event any (type not inferred)
---@return nil
function QuestFrame_OnEvent(event) end

---@return nil
function QuestFrame_SetPortrait() end

---@return nil
function QuestFrameRewardPanel_OnShow() end

---@return nil
function QuestRewardCancelButton_OnClick() end

---@return nil
function QuestRewardCompleteButton_OnClick() end

---@return nil
function QuestProgressCompleteButton_OnClick() end

---@return nil
function QuestGoodbyeButton_OnClick() end

---@return nil
function QuestItem_OnClick() end

---@return nil
function QuestRewardItem_OnClick() end

---@return nil
function QuestFrameProgressPanel_OnShow() end

---@return nil
function QuestFrameProgressItems_Update() end

---@return nil
function QuestFrameGreetingPanel_OnShow() end

---@return nil
function QuestFrame_OnShow() end

---@return nil
function QuestFrame_OnHide() end

---@return nil
function QuestTitleButton_OnClick() end

---@return nil
function QuestMoneyFrame_OnLoad() end

---@param questState any (type not inferred)
---@return nil
function QuestFrameItems_Update(questState) end

---@return nil
function QuestFrameDetailPanel_OnShow() end

---@param elapsed any (type not inferred)
---@return nil
function QuestFrameDetailPanel_OnUpdate(elapsed) end

---@return nil
function QuestDetailAcceptButton_OnClick() end

---@return nil
function QuestDetailDeclineButton_OnClick() end

---@param frame any (type not inferred)
---@param material any (type not inferred)
---@return nil
function QuestFrame_SetMaterial(frame, material) end

---@return any material (type not inferred)
---@nodiscard
function QuestFrame_GetMaterial() end

---@param fontString any (type not inferred)
---@param material any (type not inferred)
---@return nil
function QuestFrame_SetTitleTextColor(fontString, material) end

---@param fontString any (type not inferred)
---@param material any (type not inferred)
---@return nil
function QuestFrame_SetTextColor(fontString, material) end