---@meta

CLASS_TRAINER_SKILLS_DISPLAYED = 11
CLASS_TRAINER_SKILL_HEIGHT = 16
MAX_LEARNABLE_PROFESSIONS = 2

---@return nil
function ClassTrainerFrame_OnLoad() end

---@return nil
function ClassTrainerFrame_OnEvent() end

---@return nil
function ClassTrainerFrame_Update() end

---@return nil
function ClassTrainer_SelectFirstLearnableSkill() end

---@param id any (type not inferred)
---@return nil
function ClassTrainer_SetSelection(id) end

---@param button any (type not inferred)
---@return nil
function ClassTrainerSkillButton_OnClick(button) end

---@return nil
function ClassTrainerTrainButton_OnClick() end

---@param button any (type not inferred)
---@param r any (type not inferred)
---@param g any (type not inferred)
---@param b any (type not inferred)
---@return nil
function ClassTrainer_SetSubTextColor(button, r, g, b) end

---@return nil
function ClassTrainerSkillButton_OnEnter() end

---@return nil
function ClassTrainerSkillButton_OnLeave() end

---@param type any (type not inferred)
---@return nil
function ClassTrainerSortButton_OnClick(type) end

---@param button any (type not inferred)
---@param type any (type not inferred)
---@return nil
function ClassTrainerSortButton_OnShow(button, type) end

---@return nil
function ClassTrainerCollapseAllButton_OnClick() end

---@return nil
function ClassTrainer_HideSkillDetails() end

---@return nil
function ClassTrainer_ShowSkillDetails() end

---@return nil
function ClassTrainer_SetToTradeSkillTrainer() end

---@return nil
function ClassTrainer_SetToClassTrainer() end