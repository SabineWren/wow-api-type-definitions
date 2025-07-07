---@meta

SoundOptionsFrameCheckButtons = {  }
SoundOptionsFrameCheckButtons["ENABLE_ERROR_SPEECH"] = { index = 4, cvar = "EnableErrorSpeech", initialValue = nil, tooltipText = OPTION_TOOLTIP_ENABLE_ERROR_SPEECH }
SoundOptionsFrameCheckButtons["ENABLE_MUSIC"] = { index = 5, cvar = "EnableMusic", initialValue = nil, tooltipText = OPTION_TOOLTIP_ENABLE_MUSIC }
SoundOptionsFrameCheckButtons["ENABLE_AMBIENCE"] = { index = 2, cvar = "EnableAmbience", initialValue = nil, tooltipText = OPTION_TOOLTIP_ENABLE_AMBIENCE }
SoundOptionsFrameCheckButtons["ENABLE_ALL_SOUND"] = { index = 1, cvar = "MasterSoundEffects", initialValue = nil, tooltipText = OPTION_TOOLTIP_ENABLE_ALL_SOUND }
SoundOptionsFrameCheckButtons["ENABLE_SOUND_AT_CHARACTER"] = { index = 6, cvar = "SoundListenerAtCharacter", initialValue = nil, tooltipText = OPTION_TOOLTIP_ENABLE_SOUND_AT_CHARACTER }
SoundOptionsFrameCheckButtons["ENABLE_EMOTE_SOUNDS"] = { index = 7, cvar = "EmoteSounds", initialValue = nil, tooltipText = OPTION_TOOLTIP_ENABLE_EMOTE_SOUNDS }
SoundOptionsFrameCheckButtons["ENABLE_MUSIC_LOOPING"] = { index = 8, cvar = "SoundZoneMusicNoDelay", initialValue = nil, tooltipText = OPTION_TOOLTIP_ENABLE_MUSIC_LOOPING }
SoundOptionsFrameSliders = { { index = 2, text = SOUND_VOLUME, cvar = "SoundVolume", minValue = 0, maxValue = 1, valueStep = 0.1, initialValue = nil, tooltipText = OPTION_TOOLTIP_SOUND_VOLUME }, { index = 3, text = MUSIC_VOLUME, cvar = "MusicVolume", minValue = 0, maxValue = 1, valueStep = 0.1, initialValue = nil, tooltipText = OPTION_TOOLTIP_MUSIC_VOLUME }, { index = 4, text = AMBIENCE_VOLUME, cvar = "AmbienceVolume", minValue = 0, maxValue = 1, valueStep = 0.1, initialValue = nil, tooltipText = OPTION_TOOLTIP_AMBIENCE_VOLUME }, { index = 1, text = MASTER_VOLUME, cvar = "MasterVolume", minValue = 0, maxValue = 1, valueStep = 0.1, initialValue = nil, tooltipText = OPTION_TOOLTIP_MASTER_VOLUME } }

---@return nil
function SoundOptionsFrame_Init() end

---@return nil
function SoundOptionsFrame_OnEvent() end

---@return nil
function SoundOptionsFrame_Load() end

---@return nil
function SoundOptionsFrame_Cancel() end

---@return nil
function SoundOptionsCheckButton_OnClick() end

---@return nil
function SoundOptionsSlider_OnValueChanged() end

---@return nil
function SoundOptionsFrame_ToggleMusic() end

---@param isClicked any (type not inferred)
---@return nil
function SoundOptionsFrame_ToggleSound(isClicked) end

---@return nil
function SoundOptionsFrame_MasterVolumeUp() end

---@return nil
function SoundOptionsFrame_MasterVolumeDown() end

---@return nil
function SoundOptionsFrame_SetDefaults() end

---@return nil
function SoundOptionsFrame_UpdateDependencies() end