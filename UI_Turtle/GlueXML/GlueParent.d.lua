---@meta

CurrentGlueMusic = "Sound\\Music\\GlueScreenMusic\\wow_main_theme.mp3"
GlueScreenInfo = {  }
GlueScreenInfo["login"] = "AccountLogin"
GlueScreenInfo["charselect"] = "CharacterSelect"
GlueScreenInfo["realmwizard"] = "RealmWizard"
GlueScreenInfo["charcreate"] = "CharacterCreate"
GlueScreenInfo["patchdownload"] = "PatchDownload"
GlueScreenInfo["movie"] = "MovieFrame"
GlueScreenInfo["credits"] = "CreditsFrame"
CharModelFogInfo = {  }
CharModelFogInfo["HUMAN"] = { r = 0.8, g = 0.65, b = 0.73, far = 222 }
CharModelFogInfo["ORC"] = { r = 0.5, g = 0.5, b = 0.5, far = 270 }
CharModelFogInfo["DWARF"] = { r = 0.85, g = 0.88, b = 1.0, far = 500 }
CharModelFogInfo["NIGHTELF"] = { r = 0.25, g = 0.22, b = 0.55, far = 611 }
CharModelFogInfo["TAUREN"] = { r = 1.0, g = 0.61, b = 0.42, far = 153 }
CharModelFogInfo["SCOURGE"] = { r = 0, g = 0.22, b = 0.22, far = 26 }
FADEFRAMES = {  }
CURRENT_GLUE_SCREEN = nil ---@type nil
PENDING_GLUE_SCREEN = nil ---@type nil
LOGIN_FADE_IN = 1.5
LOGIN_FADE_OUT = 0.5
CHARACTER_SELECT_FADE_IN = 0.75
RACE_SELECT_INFO_FADE_IN = .5
RACE_SELECT_INFO_FADE_OUT = .5

---@param name any (type not inferred)
---@return nil
function SetGlueScreen(name) end

---@param name any (type not inferred)
---@return nil
function SetCurrentGlueScreenName(name) end

---@return any CURRENT_GLUE_SCREEN (type not inferred)
---@nodiscard
function GetCurrentGlueScreenName() end

---@param name any (type not inferred)
---@return nil
function SetPendingGlueScreenName(name) end

---@return any PENDING_GLUE_SCREEN (type not inferred)
---@nodiscard
function GetPendingGlueScreenName() end

---@return nil
function GlueParent_OnLoad() end

---@param event any (type not inferred)
---@return nil
function GlueParent_OnEvent(event) end

---@param currentFrame any (type not inferred)
---@param pendingFrame any (type not inferred)
---@return nil
function GlueScreenExit(currentFrame, pendingFrame) end

---@return nil
function GoToPendingGlueScreen() end

---@param frame any (type not inferred)
---@param timeToFade any (type not inferred)
---@param mode any (type not inferred)
---@param finishedFunction any (type not inferred)
---@return nil
function GlueFrameFade(frame, timeToFade, mode, finishedFunction) end

---@param frame any (type not inferred)
---@param timeToFade any (type not inferred)
---@param finishedFunction any (type not inferred)
---@return nil
function GlueFrameFadeIn(frame, timeToFade, finishedFunction) end

---@param frame any (type not inferred)
---@param timeToFade any (type not inferred)
---@param finishedFunction any (type not inferred)
---@return nil
function GlueFrameFadeOut(frame, timeToFade, finishedFunction) end

---@param elapsed any (type not inferred)
---@return nil
function GlueFrameFadeUpdate(elapsed) end

---@param frame any (type not inferred)
---@param list any (type not inferred)
---@return nil
function GlueFrameRemoveFrame(frame, list) end

---@param frame any (type not inferred)
---@return nil
function GlueFrameFadeRemoveFrame(frame) end

---@param model any (type not inferred)
---@param race any (type not inferred)
---@return nil
function SetBackgroundModel(model, race) end

---@param seconds any (type not inferred)
---@param noSeconds any (type not inferred)
---@return any time (type not inferred)
---@nodiscard
function SecondsToTime(seconds, noSeconds) end

---@param mins any (type not inferred)
---@param hideDays any (type not inferred)
---@return any time (type not inferred)
---@nodiscard
function MinutesToTime(mins, hideDays) end
GenderTagInfo = { "_NONE", nil, "_FEMALE", "_MPLURAL", "_FPLURAL", "_MIXED" }
MAX_GENDER_INDICES = 6
MAX_PLURAL_INDICES = 4

---@param token any (type not inferred)
---@param gender any (type not inferred)
---@param ordinal any (type not inferred)
---@return any string (type not inferred)
---@nodiscard
function GetText(token, gender, ordinal) end

---@param ordinal any (type not inferred)
---@return nil
function GetPluralIndex(ordinal) end

---@param ordinal any (type not inferred)
---@return string ""
---@nodiscard
function GetPluralTag(ordinal) end

---@param gender any (type not inferred)
---@return any GenderTagInfo[gender] (type not inferred)
---@nodiscard
function GetGenderTag(gender) end

---@param checked any (type not inferred)
---@param checkButton any (type not inferred)
---@return nil
function TriStateCheckbox_SetState(checked, checkButton) end