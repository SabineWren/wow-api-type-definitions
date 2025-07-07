---@meta

UIOptionsFrameCheckButtons = {  }
UIOptionsFrameCheckButtons["INVERT_MOUSE"] = { index = 1, cvar = "mouseInvertPitch" }
UIOptionsFrameCheckButtons["CLICK_TO_MOVE"] = { index = 6, cvar = "autointeract" }
UIOptionsFrameCheckButtons["GAMEFIELD_DESELECT_TEXT"] = { index = 45, cvar = "deselectOnClick" }
UIOptionsFrameCheckButtons["ASSIST_ATTACK"] = { index = 3, cvar = "assistAttack" }
UIOptionsFrameCheckButtons["CLEAR_AFK"] = { index = 16, cvar = "autoClearAFK" }
UIOptionsFrameCheckButtons["BLOCK_TRADES"] = { index = 14, cvar = "BlockTrades" }
UIOptionsFrameCheckButtons["AUTO_SELF_CAST_TEXT"] = { index = 61, cvar = "autoSelfCast" }
UIOptionsFrameCheckButtons["LOOT_AT_WINDOW_CURSOR_TEXT"] = { index = 70, uvar = "LOOT_WINDOW_AT_CURSOR", default = "0" }
UIOptionsFrameCheckButtons["USE_UBERTOOLTIPS"] = { index = 12, cvar = "UberTooltips" }
UIOptionsFrameCheckButtons["STATUS_BAR_TEXT"] = { index = 2, cvar = "statusBarText" }
UIOptionsFrameCheckButtons["PROFANITY_FILTER"] = { index = 5, cvar = "profanityFilter" }
UIOptionsFrameCheckButtons["SHOW_CLOAK"] = { index = 31, func = ShowingCloak, setFunc = ShowCloak }
UIOptionsFrameCheckButtons["SHOW_HELM"] = { index = 20, func = ShowingHelm, setFunc = ShowHelm }
UIOptionsFrameCheckButtons["SHOW_QUEST_FADING_TEXT"] = { index = 42, uvar = "QUEST_FADING_DISABLE", default = "0" }
UIOptionsFrameCheckButtons["SHOW_BUFF_DURATION_TEXT"] = { index = 39, uvar = "SHOW_BUFF_DURATIONS", default = "0" }
UIOptionsFrameCheckButtons["SHOW_PLAYER_NAMES"] = { index = 21, cvar = "UnitNamePlayer" }
UIOptionsFrameCheckButtons["SHOW_GUILD_NAMES"] = { index = 22, cvar = "UnitNamePlayerGuild" }
UIOptionsFrameCheckButtons["SHOW_PLAYER_TITLES"] = { index = 23, cvar = "UnitNamePlayerPVPTitle" }
UIOptionsFrameCheckButtons["SHOW_NPC_NAMES"] = { index = 30, cvar = "UnitNameNPC" }
UIOptionsFrameCheckButtons["SHOW_OWN_NAME"] = { index = 67, cvar = "UnitNameOwn" }
UIOptionsFrameCheckButtons["SHOW_PARTY_BACKGROUND_TEXT"] = { index = 43, uvar = "SHOW_PARTY_BACKGROUND" }
UIOptionsFrameCheckButtons["HIDE_OUTDOOR_WORLD_STATE_TEXT"] = { index = 62, uvar = "HIDE_OUTDOOR_WORLD_STATE", default = "0" }
UIOptionsFrameCheckButtons["AUTO_QUEST_WATCH_TEXT"] = { index = 66, uvar = "AUTO_QUEST_WATCH", default = "1" }
UIOptionsFrameCheckButtons["FOLLOW_TERRAIN"] = { index = 24, cvar = "cameraTerrainTilt" }
UIOptionsFrameCheckButtons["HEAD_BOB"] = { index = 26, cvar = "cameraBobbing" }
UIOptionsFrameCheckButtons["WATER_COLLISION"] = { index = 27, cvar = "cameraWaterCollision" }
UIOptionsFrameCheckButtons["SMART_PIVOT"] = { index = 15, cvar = "cameraPivot" }
UIOptionsFrameCheckButtons["SHOW_TUTORIALS"] = { index = 28 }
UIOptionsFrameCheckButtons["SHOW_NEWBIE_TIPS_TEXT"] = { index = 29, uvar = "SHOW_NEWBIE_TIPS" }
UIOptionsFrameCheckButtons["SHOW_TIPOFTHEDAY_TEXT"] = { index = 44, cvar = "showGameTips" }
UIOptionsFrameCheckButtons["SIMPLE_CHAT_TEXT"] = { index = 7, uvar = "SIMPLE_CHAT", default = "1" }
UIOptionsFrameCheckButtons["CHAT_LOCKED_TEXT"] = { index = 8, uvar = "CHAT_LOCKED", default = "1" }
UIOptionsFrameCheckButtons["GUILDMEMBER_ALERT"] = { index = 13, cvar = "guildMemberNotify" }
UIOptionsFrameCheckButtons["REMOVE_CHAT_DELAY_TEXT"] = { index = 18, uvar = "REMOVE_CHAT_DELAY", default = "0" }
UIOptionsFrameCheckButtons["CHAT_BUBBLES_TEXT"] = { index = 37, cvar = "ChatBubbles" }
UIOptionsFrameCheckButtons["PARTY_CHAT_BUBBLES_TEXT"] = { index = 38, cvar = "ChatBubblesParty" }
UIOptionsFrameCheckButtons["SHOW_LOOT_SPAM"] = { index = 46, cvar = "showLootSpam" }
UIOptionsFrameCheckButtons["AUTO_JOIN_GUILD_CHANNEL"] = { index = 51 }
UIOptionsFrameCheckButtons["DISABLE_SPAM_FILTER"] = { index = 68, cvar = "spamFilter" }
UIOptionsFrameCheckButtons["LOCK_ACTIONBAR_TEXT"] = { index = 32, uvar = "LOCK_ACTIONBAR", default = "0" }
UIOptionsFrameCheckButtons["SHOW_MULTIBAR1_TEXT"] = { index = 33, func = MultiBar1_IsVisible, setFunc = Multibar_EmptyFunc }
UIOptionsFrameCheckButtons["SHOW_MULTIBAR2_TEXT"] = { index = 34, func = MultiBar2_IsVisible, setFunc = Multibar_EmptyFunc }
UIOptionsFrameCheckButtons["SHOW_MULTIBAR3_TEXT"] = { index = 35, func = MultiBar3_IsVisible, setFunc = Multibar_EmptyFunc }
UIOptionsFrameCheckButtons["SHOW_MULTIBAR4_TEXT"] = { index = 36, func = MultiBar4_IsVisible, setFunc = Multibar_EmptyFunc }
UIOptionsFrameCheckButtons["ALWAYS_SHOW_MULTIBARS_TEXT"] = { index = 40, func = MultibarGrid_IsVisible, setFunc = Multibar_EmptyFunc }
UIOptionsFrameCheckButtons["HIDE_PARTY_INTERFACE_TEXT"] = { index = 47, uvar = "HIDE_PARTY_INTERFACE", default = "0" }
UIOptionsFrameCheckButtons["SHOW_DISPELLABLE_DEBUFFS_TEXT"] = { index = 48, uvar = "SHOW_DISPELLABLE_DEBUFFS", default = "1" }
UIOptionsFrameCheckButtons["SHOW_CASTABLE_BUFFS_TEXT"] = { index = 49, uvar = "SHOW_CASTABLE_BUFFS", default = "1" }
UIOptionsFrameCheckButtons["SHOW_TARGET_OF_TARGET_TEXT"] = { index = 50, uvar = "SHOW_TARGET_OF_TARGET", default = "0" }
UIOptionsFrameCheckButtons["SHOW_PARTY_PETS_TEXT"] = { index = 41, uvar = "SHOW_PARTY_PETS", default = "1" }
UIOptionsFrameCheckButtons["SHOW_COMBAT_TEXT_TEXT"] = { index = 52, uvar = "SHOW_COMBAT_TEXT", default = "0" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_LOW_HEALTH_MANA_TEXT"] = { index = 53, uvar = "COMBAT_TEXT_SHOW_LOW_HEALTH_MANA", default = "1" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_AURAS_TEXT"] = { index = 54, uvar = "COMBAT_TEXT_SHOW_AURAS", default = "1" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_AURA_FADE_TEXT"] = { index = 55, uvar = "COMBAT_TEXT_SHOW_AURA_FADE", default = "0" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_COMBAT_STATE_TEXT"] = { index = 56, uvar = "COMBAT_TEXT_SHOW_COMBAT_STATE", default = "1" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_DODGE_PARRY_MISS_TEXT"] = { index = 57, uvar = "COMBAT_TEXT_SHOW_DODGE_PARRY_MISS", default = "0" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_RESISTANCES_TEXT"] = { index = 58, uvar = "COMBAT_TEXT_SHOW_RESISTANCES", default = "0" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_REPUTATION_TEXT"] = { index = 60, uvar = "COMBAT_TEXT_SHOW_REPUTATION", default = "0" }
UIOptionsFrameCheckButtons["SHOW_DAMAGE_TEXT"] = { index = 19, cvar = "CombatDamage" }
UIOptionsFrameCheckButtons["LOG_PERIODIC_EFFECTS"] = { index = 11, cvar = "CombatLogPeriodicSpells" }
UIOptionsFrameCheckButtons["SHOW_PET_MELEE_DAMAGE"] = { index = 9, cvar = "PetMeleeDamage" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_REACTIVES_TEXT"] = { index = 63, uvar = "COMBAT_TEXT_SHOW_REACTIVES", default = "0" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_FRIENDLY_NAMES_TEXT"] = { index = 64, uvar = "COMBAT_TEXT_SHOW_FRIENDLY_NAMES", default = "0" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_COMBO_POINTS_TEXT"] = { index = 65, uvar = "COMBAT_TEXT_SHOW_COMBO_POINTS", default = "0" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_MANA_TEXT"] = { index = 59, uvar = "COMBAT_TEXT_SHOW_MANA", default = "0" }
UIOptionsFrameCheckButtons["COMBAT_TEXT_SHOW_HONOR_GAINED_TEXT"] = { index = 69, uvar = "COMBAT_TEXT_SHOW_HONOR_GAINED", default = "1" }
UIOptionsFrameSliders = { { text = "MOUSE_SENSITIVITY", cvar = "mousespeed", minValue = 0.5, maxValue = 1.5, valueStep = 0.05 }, { text = "AUTO_FOLLOW_SPEED", cvar = "cameraYawSmoothSpeed", minValue = 90, maxValue = 270, valueStep = 10 }, { text = "MOUSE_LOOK_SPEED", cvar = "cameraYawMoveSpeed", minValue = 90, maxValue = 270, valueStep = 10 }, { text = "MAX_FOLLOW_DIST", cvar = "cameraDistanceMaxFactor", minValue = 1, maxValue = 2, valueStep = 0.1 } }

---@return nil
function UIOptionsFrame_Init() end

---@return nil
function UIOptionsFrame_OnEvent() end

---@return nil
function UIOptionsFrame_Load() end

---@return nil
function UIOptionsFrame_Save() end

---@return nil
function UIOptionsFrameClickCameraDropDown_OnLoad() end

---@return nil
function UIOptionsFrameClickCameraDropDown_OnClick() end

---@return nil
function UIOptionsFrameClickCameraDropDown_Initialize() end

---@return nil
function UIOptionsFrameTargetofTargetDropDown_OnLoad() end

---@return nil
function UIOptionsFrameTargetofTargetDropDown_OnClick() end

---@return nil
function UIOptionsFrameTargetofTargetDropDown_Initialize() end

---@return nil
function UIOptionsFrameCameraDropDown_OnLoad() end

---@return nil
function UIOptionsFrameCameraDropDown_OnClick() end

---@return nil
function UIOptionsFrameCameraDropDown_Initialize() end

---@return nil
function UIOptionsFrameCombatTextDropDown_OnLoad() end

---@return nil
function UIOptionsFrameCombatTextDropDown_OnClick() end

---@return nil
function UIOptionsFrameCombatTextDropDown_Initialize() end

---@param showDamage any (type not inferred)
---@return nil
function UIOptionsFrame_SetDamageCheckBoxes(showDamage) end

---@return nil
function UIOptionsFrameMultiBar_Reset() end

---@return nil
function UIOptionsFrame_SetDefaults() end

---@return nil
function UIOptionsFrame_UpdateDependencies() end

---@return nil
function UpdateNameplates() end