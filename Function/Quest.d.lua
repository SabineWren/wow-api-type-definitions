---@meta

--- Abandon the specified quest.
function AbandonQuest() end

--- Accept the specified quest.
function AcceptQuest() end

--- Add a quest to the watch list.
function AddQuestWatch(x) end

--- no description
function CloseQuest() end

--- Collapses a quest header.
function CollapseQuestHeader() end

--- Complete the specified quest.
function CompleteQuest() end

--- Accept the quest. Yes. Really accept it.
function ConfirmAcceptQuest() end

--- Declines the currently offered quest.
function DeclineQuest() end

--- Expands a quest header.
function ExpandQuestHeader() end

--- Gets the name of a quest while it is being abandoned.
function GetAbandonQuestName() end

--- Gets the level of an active quest (only available after QUEST_GREETING event).
function GetActiveLevel(index) end

--- Gets the title of an active quest (only available after QUEST_GREETING event).
function GetActiveTitle(index) end

--- Gets the level of an available quest (only available after QUEST_GREETING event).
function GetAvailableLevel(index) end

--- Gets the title of an available quest (only available after QUEST_GREETING event).
function GetAvailableTitle(index) end

--- No description
function GetGreetingText() end

--- Gets the number of currently active quests from this NPC (only available after QUEST_GREETING event).
function GetNumActiveQuests() end

--- Gets the number of currently available quests from this NPC (only available after QUEST_GREETING event).
function GetNumAvailableQuests() end

--- Returns the number of rewards for a completed quest.
function GetNumQuestChoices() end

--- Returns the number of items nessecary to complete a particular quest.
function GetNumQuestItems() end

--- Returns the number of available quest objectives.
---@param questIndex? QuestIndex
function GetNumQuestLeaderBoards(questIndex) end

--- Returns the number of options someone has when getting a quest item.
function GetNumQuestLogChoices() end

--- Returns the number of entries in the quest log.
function GetNumQuestLogEntries() end

--- Returns the count of the rewards for a particular quest.
function GetNumQuestLogRewards() end

--- no description
function GetNumQuestRewards() end

--- Returns the number of quest watches active.
function GetNumQuestWatches() end

--- Gets the objective of the current quest.
function GetObjectiveText() end

--- No description
function GetProgressText() end

--- Returns the material string associated with the particular quest.
function GetQuestBackgroundMaterial() end

--- Return for how many levels below you quests and mobs remain "green" (i.e. yield xp)   - No description
function GetQuestGreenRange() end

--- no description
function GetQuestIndexForTimer() end

--- Return the quest index for the specified watch
function GetQuestIndexForWatch(watchIndx) end

--- Returns basic information about the quest items.
function GetQuestItemInfo() end

--- Returns an itemLink for a quest reward item.
function GetQuestItemLink() end

--- Returns a bunch of data about a quest reward choice from the quest log.
function GetQuestLogChoiceInfo() end

--- no description
function GetQuestLogItemLink() end

--- Gets information about the objectives for a quest.
---@param questIndex? QuestIndex
function GetQuestLogLeaderBoard(ldrIndex, questIndex) end

--- Returns true if the currently loaded quest in the quest window can be shared.
function GetQuestLogPushable() end

--- Returns the description and objectives required for the specified quest.
function GetQuestLogQuestText() end

--- no description
function GetQuestLogRequiredMoney() end

--- Returns a pile of reward item info.
function GetQuestLogRewardInfo() end

--- Returns a number representing the amount of copper returned by a particular quest.
function GetQuestLogRewardMoney() end

--- no description
function GetQuestLogRewardSpell() end

--- Returns a number associated with the QuestLogSelection index.
function GetQuestLogSelection() end

--- no description
function GetQuestLogTimeLeft() end

--- Returns the string which is associated with the specific QuestLog Title in the game.
function GetQuestLogTitle() end

--- ?
function GetQuestMoneyToGet() end

--- Gets the quest reward specified.
function GetQuestReward() end

--- Gets the description of the current quest.
function GetQuestText() end

--- Returns all of the quest timers currently in progress.
function GetQuestTimers() end

--- Returns a number representing the amount of copper returned by a particular quest.
function GetRewardMoney() end

--- no description
function GetRewardSpell() end

--- no description
function GetRewardText() end

--- Retrieves the title of the quest while talking to the NPC about it.
function GetTitleText() end

--- no description
function IsCurrentQuestFailed() end

--- Returns true if a quest is possible to complete.
function IsQuestCompletable() end

--- Determine if the specified quest is watched.
function IsQuestWatched(questIndex) end

--- Determine if the specified unit is on the given quest.
---@param questIndex integer
---@param unit UnitId
---@return boolean
---@nodiscard
function IsUnitOnQuest(questIndex, unit) end

--- Throws an error when the quest choose reward method doesn't work.
function QuestChooseRewardError() end

--- Initiates the sharing of the currently viewed quest in the quest log.
function QuestLogPushQuest() end

--- Remove a quest watch (Is the index a quest or watch index?).
function RemoveQuestWatch(index) end

--- no description
function SelectQuestLogEntry() end

--- Called before AbandonQuest.
function SetAbandonQuest() end
