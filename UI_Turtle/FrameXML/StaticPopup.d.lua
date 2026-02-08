---@meta

STATICPOPUP_NUMDIALOGS = 4
StaticPopupDialogs = {  }
StaticPopupDialogs["TAKE_GM_SURVEY"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_RESET_INSTANCES"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_TOGGLE_XP_ON"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_TOGGLE_XP_OFF"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_GUILD_DISBAND"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_BUY_BANK_SLOT"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnShow = function() end, hasMoneyFrame = 1, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["MACRO_ACTION_FORBIDDEN"] = { text = nil, button1 = nil, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["ADDON_ACTION_FORBIDDEN"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(data) end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_LOOT_DISTRIBUTION"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(data) end, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_BATTLEFIELD_ENTRY"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(data) end, timeout = 0, whileDead = 1, hideOnEscape = 1, multiple = 1 }
StaticPopupDialogs["CONFIRM_GUILD_LEAVE"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_GUILD_PROMOTE"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(name) end, timeout = 0, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["RENAME_GUILD"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 24, OnAccept = function() end, EditBoxOnEnterPressed = function() end, OnShow = function() end, OnHide = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["HELP_TICKET_QUEUE_DISABLED"] = { text = nil, button1 = nil, showAlert = 1, timeout = 0 }
StaticPopupDialogs["CONFIRM_LEAVE_QUEUE"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["CLIENT_RESTART_ALERT"] = { text = nil, button1 = nil, showAlert = 1, timeout = 0 }
StaticPopupDialogs["MEMORY_EXHAUSTED"] = { text = nil, button1 = nil, OnAccept = function() end, timeout = 0, whileDead = 1 }
StaticPopupDialogs["COD_ALERT"] = { text = nil, button1 = nil, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["COD_CONFIRMATION"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnShow = function() end, hasMoneyFrame = 1, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["DELETE_MAIL"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, showAlert = 1, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["DELETE_MONEY"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnShow = function() end, hasMoneyFrame = 1, showAlert = 1, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["SEND_MONEY"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end, OnShow = function() end, hasMoneyFrame = 1, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["JOIN_CHANNEL"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 31, whileDead = 1, OnAccept = function() end, timeout = 0, EditBoxOnEnterPressed = function() end, hideOnEscape = 1 }
StaticPopupDialogs["NAME_CHAT"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 31, whileDead = 1, OnAccept = function(renameID) end, timeout = 0, EditBoxOnEnterPressed = function(renameID) end, EditBoxOnEscapePressed = function() end, hideOnEscape = 1 }
StaticPopupDialogs["HELP_TICKET_ABANDON_CONFIRM"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(prevFrame) end, OnCancel = function(prevFrame) end, timeout = 0, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["HELP_TICKET"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end, timeout = 0, whileDead = 1 }
StaticPopupDialogs["PETRENAMECONFIRM"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["DEATH"] = { text = nil, button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnCancel = function(data, reason) end, DisplayButton2 = function() end, timeout = 0, whileDead = 1, interruptCinematic = 1, notClosableByLogout = 1, cancels = "RECOVER_CORPSE" }
StaticPopupDialogs["RESURRECT"] = { StartDelay = GetCorpseRecoveryDelay, delayText = nil, text = nil, button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnCancel = function() end, timeout = 60, whileDead = 1, cancels = "DEATH", interruptCinematic = 1, notClosableByLogout = 1, hideOnEscape = 1 }
StaticPopupDialogs["RESURRECT_NO_SICKNESS"] = { StartDelay = GetCorpseRecoveryDelay, delayText = nil, text = nil, button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnCancel = function() end, timeout = 60, whileDead = 1, cancels = "DEATH", interruptCinematic = 1, notClosableByLogout = 1, hideOnEscape = 1 }
StaticPopupDialogs["RESURRECT_NO_TIMER"] = { text = nil, button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnCancel = function() end, timeout = 60, whileDead = 1, cancels = "DEATH", interruptCinematic = 1, notClosableByLogout = 1, hideOnEscape = 1 }
StaticPopupDialogs["SKINNED"] = { text = nil, button1 = nil, timeout = 0, whileDead = 1, interruptCinematic = 1, notClosableByLogout = 1 }
StaticPopupDialogs["SKINNED_REPOP"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, interruptCinematic = 1, notClosableByLogout = 1, hideOnEscape = 1 }
StaticPopupDialogs["TRADE"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end, timeout = 60, hideOnEscape = 1 }
StaticPopupDialogs["PARTY_INVITE"] = { text = nil, button1 = nil, button2 = nil, sound = "igPlayerInvite", OnShow = function() end, OnAccept = function() end, OnCancel = function() end, OnHide = function() end, timeout = 60, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["GUILD_INVITE"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end, timeout = 60, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["CAMP"] = { text = nil, button1 = nil, OnAccept = function() end, OnHide = function() end, timeout = 20, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["QUIT"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnHide = function() end, timeout = 20, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["LOOT_BIND"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(slot) end, timeout = 0, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["EQUIP_BIND"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(slot) end, OnCancel = function(slot) end, OnHide = function(slot) end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["AUTOEQUIP_BIND"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(slot) end, OnCancel = function(slot) end, OnHide = function(slot) end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["USE_BIND"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["DELETE_ITEM"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end, OnUpdate = function() end, timeout = 0, whileDead = 1, exclusive = 1, showAlert = 1, hideOnEscape = 1 }
StaticPopupDialogs["DELETE_GOOD_ITEM"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end, OnUpdate = function() end, timeout = 0, whileDead = 1, exclusive = 1, showAlert = 1, hideOnEscape = 1, hasEditBox = 1, maxLetters = 32, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnTextChanged = function() end }
StaticPopupDialogs["QUEST_ACCEPT"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["ABANDON_PET"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["ABANDON_QUEST"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["ABANDON_QUEST_WITH_ITEMS"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["ADD_FRIEND"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 12, OnAccept = function() end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["ADD_IGNORE"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 12, OnAccept = function() end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["ADD_GUILDMEMBER"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 12, OnAccept = function() end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["ADD_RAIDMEMBER"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 12, OnAccept = function() end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["REMOVE_GUILDMEMBER"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnShow = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["ADD_GUILDRANK"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 15, OnAccept = function() end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["SET_GUILDMOTD"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 128, hasWideEditBox = 1, OnAccept = function() end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["SET_GUILDPLAYERNOTE"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 31, hasWideEditBox = 1, OnAccept = function() end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["SET_GUILDOFFICERNOTE"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 31, hasWideEditBox = 1, OnAccept = function() end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function() end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, whileDead = 1, hideOnEscape = 1 }
StaticPopupDialogs["RENAME_PET"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, maxLetters = 12, OnAccept = function() end, EditBoxOnEnterPressed = function() end, OnShow = function() end, OnHide = function() end, timeout = 0, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["DUEL_REQUESTED"] = { text = nil, button1 = nil, button2 = nil, sound = "igPlayerInvite", OnAccept = function() end, OnCancel = function() end, timeout = 60, hideOnEscape = 1 }
StaticPopupDialogs["DUEL_OUTOFBOUNDS"] = { text = nil, timeout = 10 }
StaticPopupDialogs["UNLEARN_SKILL"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(index) end, timeout = 60, exclusive = 1, whileDead = 1, showAlert = 1, hideOnEscape = 1 }
StaticPopupDialogs["XP_LOSS"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(data) end, OnUpdate = function(elapsed, dialog) end, timeout = 0, exclusive = 1, whileDead = 1, showAlert = 1, hideOnEscape = 1 }
StaticPopupDialogs["XP_LOSS_NO_SICKNESS"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(data) end, OnUpdate = function(elapsed, dialog) end, timeout = 0, exclusive = 1, whileDead = 1, showAlert = 1, hideOnEscape = 1 }
StaticPopupDialogs["RECOVER_CORPSE"] = { StartDelay = GetCorpseRecoveryDelay, delayText = nil, text = nil, button1 = nil, OnAccept = function() end, timeout = 0, whileDead = 1, interruptCinematic = 1, notClosableByLogout = 1 }
StaticPopupDialogs["RECOVER_CORPSE_INSTANCE"] = { text = nil, timeout = 0, whileDead = 1, interruptCinematic = 1, notClosableByLogout = 1 }
StaticPopupDialogs["AREA_SPIRIT_HEAL"] = { text = nil, button1 = nil, OnShow = function() end, OnAccept = function() end, timeout = 0, whileDead = 1, interruptCinematic = 1, notClosableByLogout = 1, hideOnEscape = 1 }
StaticPopupDialogs["BIND_ENCHANT"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, exclusive = 1, showAlert = 1, hideOnEscape = 1 }
StaticPopupDialogs["REPLACE_ENCHANT"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, exclusive = 1, showAlert = 1, hideOnEscape = 1 }
StaticPopupDialogs["TRADE_REPLACE_ENCHANT"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, timeout = 0, exclusive = 1, showAlert = 1, hideOnEscape = 1 }
StaticPopupDialogs["INSTANCE_BOOT"] = { text = nil, OnShow = function() end, timeout = 0, whileDead = 1, interruptCinematic = 1, notClosableByLogout = 1 }
StaticPopupDialogs["CONFIRM_TALENT_WIPE"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnUpdate = function(elapsed, dialog) end, hasMoneyFrame = 1, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_PET_UNLEARN"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnUpdate = function(elapsed, dialog) end, hasMoneyFrame = 1, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_BINDER"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnUpdate = function(elapsed, dialog) end, timeout = 0, hideOnEscape = 1 }
StaticPopupDialogs["CONFIRM_SUMMON"] = { text = nil, button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnUpdate = function(elapsed, dialog) end, timeout = 0, interruptCinematic = 1, notClosableByLogout = 1, hideOnEscape = 1 }
StaticPopupDialogs["BILLING_NAG"] = { text = nil, button1 = nil, timeout = 0, showAlert = 1 }
StaticPopupDialogs["IGR_BILLING_NAG"] = { text = nil, button1 = nil, timeout = 0, showAlert = 1 }
StaticPopupDialogs["CONFIRM_LOOT_ROLL"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function(id, rollType) end, timeout = 0, whileDead = 1, exclusive = 1, hideOnEscape = 1 }
StaticPopupDialogs["GOSSIP_ENTER_CODE"] = { text = nil, button1 = nil, button2 = nil, hasEditBox = 1, OnAccept = function(data) end, OnShow = function() end, OnHide = function() end, EditBoxOnEnterPressed = function(data) end, EditBoxOnEscapePressed = function() end, timeout = 0, exclusive = 1, hideOnEscape = 1 }

---@param which any (type not inferred)
---@param data any (type not inferred)
---@return nil nil
---@nodiscard
function StaticPopup_FindVisible(which, data) end

---@param dialog any (type not inferred)
---@param which any (type not inferred)
---@return nil
function StaticPopup_Resize(dialog, which) end

--Manual
---@param which string
---@param text_arg1? string
---@param text_arg2? string
---@param data? any
---@return nil|Frame dialog TODO check what type of frame.
function StaticPopup_Show(which, text_arg1, text_arg2, data) end

---@param which any (type not inferred)
---@param data any (type not inferred)
---@return nil
function StaticPopup_Hide(which, data) end

---@param dialog any (type not inferred)
---@param elapsed any (type not inferred)
---@return nil
function StaticPopup_OnUpdate(dialog, elapsed) end

---@return nil
function StaticPopup_EditBoxOnEnterPressed() end

---@return nil
function StaticPopup_EditBoxOnEscapePressed() end

---@return nil
function StaticPopup_EditBoxOnTextChanged() end

---@return nil
function StaticPopup_OnShow() end

---@return nil
function StaticPopup_OnHide() end

---@param dialog any (type not inferred)
---@param index any (type not inferred)
---@return nil
function StaticPopup_OnClick(dialog, index) end

---@param which any (type not inferred)
---@return nil nil
---@nodiscard
function StaticPopup_Visible(which) end

---@return any closed (type not inferred)
---@nodiscard
function StaticPopup_EscapePressed() end
