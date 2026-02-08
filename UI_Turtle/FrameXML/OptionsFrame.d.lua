---@meta

OPTIONS_FARCLIP_MIN = 177
OPTIONS_FARCLIP_MAX = 777
OptionsFrameCheckButtons = {  }
OptionsFrameCheckButtons["DESKTOP_GAMMA"] = { index = 1, cvar = "desktopGamma", tooltipText = OPTION_TOOLTIP_USE_DESKTOP_GAMMA }
OptionsFrameCheckButtons["TERRAIN_HIGHLIGHTS"] = { index = 2, cvar = "specular", dependency = "ENABLE_ALL_SHADERS", tooltipText = OPTION_TOOLTIP_TERRAIN_HIGHLIGHTS, tooltipRequirement = OPTION_LOGOUT_REQUIREMENT }
OptionsFrameCheckButtons["FULL_SCREEN_GLOW"] = { index = 3, cvar = "ffxGlow", dependency = "ENABLE_ALL_SHADERS", tooltipText = OPTION_TOOLTIP_FULL_SCREEN_GLOW }
OptionsFrameCheckButtons["TRILINEAR_FILTERING"] = { index = 4, cvar = "trilinear", tooltipText = OPTION_TOOLTIP_TRILINEAR, restartClient = 1, tooltipRequirement = OPTION_RESTART_REQUIREMENT }
OptionsFrameCheckButtons["VERTICAL_SYNC"] = { index = 5, cvar = "gxVSync", tooltipText = OPTION_TOOLTIP_VERTICAL_SYNC, gxRestart = 1 }
OptionsFrameCheckButtons["CINEMATIC_SUBTITLES"] = { index = 6, cvar = "movieSubtitle", tooltipText = OPTION_TOOLTIP_CINEMATIC_SUBTITLES }
OptionsFrameCheckButtons["WORLD_LOD"] = { index = 7, cvar = "lod", tooltipText = OPTION_TOOLTIP_WORLD_LOD }
OptionsFrameCheckButtons["VERTEX_ANIMATION_SHADERS"] = { index = 8, cvar = "M2UseShaders", tooltipText = OPTION_TOOLTIP_VERTEX_ANIMATION_SHADERS, tooltipRequirement = OPTION_LOGOUT_REQUIREMENT }
OptionsFrameCheckButtons["USE_UISCALE"] = { index = 9, cvar = "useUiScale", tooltipText = OPTION_TOOLTIP_USE_UISCALE }
OptionsFrameCheckButtons["WINDOWED_MODE"] = { index = 10, cvar = "gxWindow", tooltipText = OPTION_TOOLTIP_WINDOWED_MODE, gxRestart = 1 }
OptionsFrameCheckButtons["ENABLE_ALL_SHADERS"] = { index = 11, cvar = "pixelShaders", tooltipText = OPTION_TOOLTIP_ENABLE_ALL_SHADERS }
OptionsFrameCheckButtons["DEATH_EFFECT"] = { index = 12, cvar = "ffxDeath", dependency = "ENABLE_ALL_SHADERS", tooltipText = OPTION_TOOLTIP_DEATH_EFFECT }
OptionsFrameCheckButtons["TRIPLE_BUFFER"] = { index = 13, cvar = "gxTripleBuffer", dependency = "VERTICAL_SYNC", tooltipText = OPTION_TOOLTIP_BUFFERING, gxRestart = 1 }
OptionsFrameCheckButtons["HARDWARE_CURSOR"] = { index = 14, cvar = "gxCursor", tooltipText = OPTION_TOOLTIP_HARDWARE_CURSOR, gxRestart = 1 }
OptionsFrameCheckButtons["PHONG_SHADING"] = { index = 15, cvar = "M2UsePixelShaders", dependency = "VERTEX_ANIMATION_SHADERS", tooltipText = OPTION_TOOLTIP_PHONG_SHADING }
OptionsFrameCheckButtons["FIX_LAG"] = { index = 16, cvar = "gxFixLag", dependency = "HARDWARE_CURSOR", tooltipText = OPTION_TOOLTIP_FIX_LAG, gxRestart = 1 }
OptionsFrameCheckButtons["WINDOWED_MAXIMIZED"] = { index = 17, cvar = "gxMaximize", dependency = "WINDOWED_MODE", tooltipText = OPTION_TOOLTIP_WINDOWED_MAXIMIZED, gxRestart = 1 }
OptionsFrameCheckButtons["USE_WEATHER_SHADER"] = { index = 18, cvar = "useWeatherShaders", tooltipText = OPTION_TOOLTIP_USE_WEATHER_SHADER }
OptionsFrameSliders = { { text = UI_SCALE, func = "uiscale", minValue = 0.64, maxValue = 1.0, valueStep = 0.01, tooltipText = OPTION_TOOLTIP_UI_SCALE }, { text = FARCLIP, func = "farclip", minValue = OPTIONS_FARCLIP_MIN, maxValue = OPTIONS_FARCLIP_MAX, valueStep = 0, tooltipText = OPTION_TOOLTIP_FARCLIP }, { text = ENVIRONMENT_DETAIL, func = "WorldDetail", minValue = 0, maxValue = 2, valueStep = 1, tooltipText = OPTION_TOOLTIP_ENVIRONMENT_DETAIL }, { text = TERRAIN_MIP, func = "TerrainMip", minValue = 0, maxValue = 1, valueStep = 1, tooltipText = OPTION_TOOLTIP_TERRAIN_TEXTURE, restartClient = 1, tooltipRequirement = OPTION_RESTART_REQUIREMENT }, { text = TEXTURE_DETAIL, func = "BaseMip", minValue = 0, maxValue = 1, valueStep = 1, tooltipText = OPTION_TOOLTIP_TEXTURE_DETAIL }, { text = GAMMA, func = "Gamma", cvar1 = "gamma", minValue = -0.5, maxValue = 0.5, valueStep = 0.1, tooltipText = OPTION_TOOLTIP_GAMMA }, { text = ANISOTROPIC, func = "anisotropic", minValue = 1, maxValue = 4, valueStep = 1, tooltipText = OPTION_TOOLTIP_ANISOTROPIC, restartClient = 1, tooltipRequirement = OPTION_RESTART_REQUIREMENT }, { text = SPELL_DETAIL, func = "spellEffectLevel", minValue = 0, maxValue = 2, valueStep = 1, tooltipText = OPTION_TOOLTIP_SPELL_DETAIL }, { text = WEATHER_DETAIL, func = "weatherDensity", minValue = 0, maxValue = 3, valueStep = 1, tooltipText = OPTION_TOOLTIP_WEATHER_DETAIL } }
ANISOTROPIC_VALUES = { "1", "2", "4", "8", "16" }
OPTIONS_FRAME_WIDTH = 495

---@return nil
function OptionsFrame_Init() end

---@return nil
function OptionsFrame_OnEvent() end

---@return nil
function OptionsFrame_Load() end

---@return nil
function OptionsFrame_Save() end

---@return nil
function OptionsFrame_Cancel() end

---@return nil
function OptionsFrameResolutionDropDown_OnLoad() end

---@return nil
function OptionsFrameResolutionDropDown_Initialize() end


---@return nil
function OptionsFrameResolutionButton_OnClick() end

---@return nil
function OptionsFrameRefreshDropDown_OnLoad() end

---@return nil
function OptionsFrameRefreshDropDown_Initialize() end


---@return nil
function OptionsFrameRefreshDropDown_OnClick() end

---@return nil
function OptionsFrameMultiSampleDropDown_OnLoad() end

---@return nil
function OptionsFrameMultiSampleDropDown_Initialize() end


---@return nil
function OptionsFrameMultiSampleDropDown_OnClick() end

---@return nil
function OptionsFrame_UpdateCheckboxes() end

---@return nil
function OptionsFrame_UpdateGammaControls() end

---@return nil
function OptionsFrame_UpdateUIScaleControls() end

---@return nil
function OptionsFrame_SetDefaults() end

---@param checkBox any (type not inferred)
---@return nil
function OptionsFrame_DisableCheckBox(checkBox) end

---@param checkBox any (type not inferred)
---@param setChecked any (type not inferred)
---@param checked any (type not inferred)
---@param isWhite any (type not inferred)
---@return nil
function OptionsFrame_EnableCheckBox(checkBox, setChecked, checked, isWhite) end

---@param slider any (type not inferred)
---@return nil
function OptionsFrame_DisableSlider(slider) end

---@param slider any (type not inferred)
---@return nil
function OptionsFrame_EnableSlider(slider) end

---@param dropDown any (type not inferred)
---@return nil
function OptionsFrame_DisableDropDown(dropDown) end

---@param dropDown any (type not inferred)
---@return nil
function OptionsFrame_EnableDropDown(dropDown) end

---@return nil
function PlayClickSound() end