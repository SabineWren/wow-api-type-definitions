---@meta

TALENTS_DISPLAYED = 11
TALENT_TRAINER_SKILL_HEIGHT = 16

---@return nil
function TalentTrainerFrame_OnLoad() end

---@return nil
function TalentTrainerFrame_OnEvent() end

---@return nil
function TalentTrainerFrame_Update() end

---@return nil
function TalentTrainer_SelectFirstLearnableSkill() end

---@param id any (type not inferred)
---@return nil
function TalentTrainer_SetSelection(id) end

---@param button any (type not inferred)
---@return nil
function TalentTrainerSkillButton_OnClick(button) end

---@return nil
function TalentTrainerTrainButton_OnClick() end

---@param button any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@return nil
function TalentTrainer_SetSubTextColor(button, r, g, b) end

---@return nil
function TalentTrainerSkillButton_OnEnter() end

---@return nil
function TalentTrainerSkillButton_OnLeave() end

---@param type any (type not inferred)
---@return nil
function TalentTrainerSortButton_OnClick(type) end

---@param button any (type not inferred)
---@param type any (type not inferred)
---@return nil
function TalentTrainerSortButton_OnShow(button, type) end

---@return nil
function TalentTrainerCollapseAllButton_OnClick() end

---@return nil
function TalentTrainer_HideSkillDetails() end

---@return nil
function TalentTrainer_ShowSkillDetails() end

---@return nil
function IsTalentTrainerTabSelected() end