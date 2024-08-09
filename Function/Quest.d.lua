---@meta

--- Determine if the specified unit is on the given quest.
---@param questIndex integer
---@param unit UnitId
---@return boolean
function IsUnitOnQuest(questIndex, unit) end

-- AbandonQuest - Abandon the specified quest.

-- AcceptQuest - Accept the specified quest.

-- AddQuestWatch(x)   - Add a quest to the watch list.

-- CloseQuest - ?.

-- CollapseQuestHeader - Collapses a quest header.

-- CompleteQuest - Complete the specified quest.

-- ConfirmAcceptQuest - Accept the quest. Yes. Really accept it.

-- DeclineQuest - Declines the currently offered quest.

-- ExpandQuestHeader - Expands a quest header.

-- GetAbandonQuestName - Gets the name of a quest while it is being abandoned.

-- GetActiveLevel(index) - Gets the level of an active quest (only available after QUEST_GREETING event).

-- GetActiveTitle(index) - Gets the title of an active quest (only available after QUEST_GREETING event).

-- GetAvailableLevel(index) - Gets the level of an available quest (only available after QUEST_GREETING event).

-- GetAvailableTitle(index) - Gets the title of an available quest (only available after QUEST_GREETING event).

-- GetGreetingText()

-- GetNumActiveQuests - Gets the number of currently active quests from this NPC (only available after QUEST_GREETING event).

-- GetNumAvailableQuests - Gets the number of currently available quests from this NPC (only available after QUEST_GREETING event).

-- GetNumQuestChoices - Returns the number of rewards for a completed quest.

-- GetNumQuestItems - Returns the number of items nessecary to complete a particular quest.

-- GetNumQuestLeaderBoards([questIndex])   - Returns the number of available quest objectives.

-- GetNumQuestLogChoices - Returns the number of options someone has when getting a quest item.

-- GetNumQuestLogEntries - Returns the number of entries in the quest log.

-- GetNumQuestLogRewards - Returns the count of the rewards for a particular quest.

-- GetNumQuestRewards - ?.

-- GetNumQuestWatches()   - Returns the number of quest watches active.

-- GetObjectiveText()   - Gets the objective of the current quest.

-- GetProgressText()

-- GetQuestBackgroundMaterial - Returns the material string associated with the particular quest.

-- GetQuestGreenRange()   - Return for how many levels below you quests and mobs remain "green" (i.e. yield xp)

-- GetQuestIndexForTimer - ?.

-- GetQuestIndexForWatch(watchIndx)   - Return the quest index for the specified watch

-- GetQuestItemInfo - Returns basic information about the quest items.

-- GetQuestItemLink - Returns an itemLink for a quest reward item.

-- GetQuestLogChoiceInfo - Returns a bunch of data about a quest reward choice from the quest log.

-- GetQuestLogItemLink - ?.

-- GetQuestLogLeaderBoard(ldrIndex[, questIndex])   - Gets information about the objectives for a quest.

-- GetQuestLogPushable - Returns true if the currently loaded quest in the quest window can be shared.

-- GetQuestLogQuestText - Returns the description and objectives required for the specified quest.

-- GetQuestLogRequiredMoney - ?.

-- GetQuestLogRewardInfo - Returns a pile of reward item info.

-- GetQuestLogRewardMoney - Returns a number representing the amount of copper returned by a particular quest.

-- (DO NOT IMPLEMENT -- See Spell.d.lua instead) GetQuestLogRewardSpell

-- GetQuestLogSelection - Returns a number associated with the QuestLogSelection index.

-- GetQuestLogTimeLeft - ?.

-- GetQuestLogTitle - Returns the string which is associated with the specific QuestLog Title in the game.

-- GetQuestMoneyToGet - ?

-- GetQuestReward - Gets the quest reward specified.

-- GetQuestText - Gets the description of the current quest.

-- GetQuestTimers - Returns all of the quest timers currently in progress.

-- GetRewardMoney - Returns a number representing the amount of copper returned by a particular quest.

-- GetRewardSpell - ?.

-- GetRewardText - ?.

-- GetTitleText - Retrieves the title of the quest while talking to the NPC about it.

-- IsCurrentQuestFailed - ?.

-- IsQuestCompletable - Returns true if a quest is possible to complete.

-- IsQuestWatched(questIndex)   - Determine if the specified quest is watched.

-- IsUnitOnQuest(questIndex, "unit")   - Determine if the specified unit is on the given quest.

-- QuestChooseRewardError - Throws an error when the quest choose reward method doesn't work.

-- QuestLogPushQuest - Initiates the sharing of the currently viewed quest in the quest log.

-- RemoveQuestWatch(index)   - Remove a quest watch (Is the index a quest or watch index?).

-- SelectQuestLogEntry - ?.

-- SetAbandonQuest - Called before AbandonQuest.

-- UI ToggleQuestLog - Opens/closes the quest log.
