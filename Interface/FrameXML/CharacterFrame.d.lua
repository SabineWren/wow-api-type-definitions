---@meta

CHARACTERFRAME_SUBFRAMES = { "PaperDollFrame", "PetPaperDollFrame", "SkillFrame", "ReputationFrame", "HonorFrame" }

---@param tab any (type not inferred)
---@return nil
function ToggleCharacter(tab) end

---@param frameName any (type not inferred)
---@return nil
function CharacterFrame_ShowSubFrame(frameName) end

---@return nil
function CharacterFrameTab_OnClick() end

---@return nil
function CharacterFrame_OnLoad() end

---@param event any (type not inferred)
---@return nil
function CharacterFrame_OnEvent(event) end

---@return nil
function CharacterFrame_OnShow() end

---@return nil
function CharacterFrame_OnHide() end

---@return nil
function TWTitles_OnEvent() end

---@return nil
function TitlesDropDown_OnLoad() end

---@return nil
function TitlesDropDown_Initialize() end

---@param a any (type not inferred)
---@return nil
function TitleChange(a) end

---@param str any (type not inferred)
---@param delimiter any (type not inferred)
---@return any result (type not inferred)
---@nodiscard
function ___explode(str, delimiter) end