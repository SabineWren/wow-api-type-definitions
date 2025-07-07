---@meta

QUESTS_DISPLAYED = 24
MAX_QUESTS = 20
MAX_OBJECTIVES = 10
QUESTLOG_QUEST_HEIGHT = 16
UPDATE_DELAY = 0.1
MAX_QUESTLOG_QUESTS = 20
MAX_QUESTWATCH_LINES = 30
MAX_WATCHABLE_QUESTS = 5
MAX_NUM_PARTY_MEMBERS = 4
MAX_QUEST_WATCH_TIMER = 300
QUEST_WATCH_NO_EXPIRE = -1
QUEST_WATCH_LIST = {  }
QuestDifficultyColor = {  }
QuestDifficultyColor["impossible"] = { r = 1.00, g = 0.10, b = 0.10 }
QuestDifficultyColor["verydifficult"] = { r = 1.00, g = 0.50, b = 0.25 }
QuestDifficultyColor["difficult"] = { r = 1.00, g = 1.00, b = 0.00 }
QuestDifficultyColor["standard"] = { r = 0.25, g = 0.75, b = 0.25 }
QuestDifficultyColor["trivial"] = { r = 0.50, g = 0.50, b = 0.50 }
QuestDifficultyColor["header"] = { r = 0.7, g = 0.7, b = 0.7 }

---@return nil
function ToggleQuestLog() end

---@return nil
function QuestLogTitleButton_OnLoad() end

---@param event any (type not inferred)
---@return nil
function QuestLogTitleButton_OnEvent(event) end

---@return nil
function QuestLog_OnLoad() end

---@param event any (type not inferred)
---@return nil
function QuestLog_OnEvent(event) end

---@return nil
function QuestLog_OnShow() end

---@return nil
function QuestLog_OnHide() end

---@param elapsed any (type not inferred)
---@return nil
function QuestLog_OnUpdate(elapsed) end

---@return nil
function QuestLog_Update() end

---@param questID any (type not inferred)
---@return nil
function QuestLog_SetSelection(questID) end

---@param doNotScroll any (type not inferred)
---@return nil
function QuestLog_UpdateQuestDetails(doNotScroll) end

---@param frame any (type not inferred)
---@param spacerFrame any (type not inferred)
---@return nil
function QuestFrame_SetAsLastShown(frame, spacerFrame) end

---@param button any (type not inferred)
---@return nil
function QuestLogTitleButton_OnClick(button) end

---@return nil
function QuestLogTitleButton_OnEnter() end

---@return nil
function QuestLog_UpdatePartyInfoTooltip() end

---@return nil
function QuestLogRewardItem_OnClick() end

---@return nil
function QuestLogCollapseAllButton_OnClick() end

---@return any index (type not inferred)
---@nodiscard
function QuestLog_GetFirstSelectableQuest() end

---@return nil
function QuestLog_SetFirstValidSelection() end

---@param level any (type not inferred)
---@param quest any (type not inferred)
---@return any color (type not inferred)
---@nodiscard
function GetDifficultyColor(level, quest) end

---@return nil
function QuestWatch_Update() end

---@param name any (type not inferred)
---@return nil nil
---@nodiscard
function GetQuestLogIndexByName(name) end

---@param questIndex any (type not inferred)
---@param watchTimer any (type not inferred)
---@return nil
function AutoQuestWatch_Insert(questIndex, watchTimer) end

---@return nil
function AutoQuestWatch_CheckDeleted() end

---@param questIndex any (type not inferred)
---@return nil
function AutoQuestWatch_Update(questIndex) end

---@param elapsed any (type not inferred)
---@return nil
function AutoQuestWatch_OnUpdate(elapsed) end