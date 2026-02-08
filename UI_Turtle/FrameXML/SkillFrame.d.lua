---@meta

SKILLS_TO_DISPLAY = 12
SKILLFRAME_SKILL_HEIGHT = 15

---@return nil
function SkillFrame_OnShow() end

---@return nil
function SkillFrame_OnLoad() end

---@param event any (type not inferred)
---@return nil
function SkillFrame_OnEvent(event) end

---@param statusBarID any (type not inferred)
---@param skillIndex any (type not inferred)
---@param numSkills any (type not inferred)
---@param adjustedSkillPoints any (type not inferred)
---@return nil
function SkillFrame_SetStatusBar(statusBarID, skillIndex, numSkills, adjustedSkillPoints) end

---@param skillIndex any (type not inferred)
---@param adjustedSkillPoints any (type not inferred)
---@return nil
function SkillDetailFrame_SetStatusBar(skillIndex, adjustedSkillPoints) end

---@return nil
function SkillFrame_UpdateSkills() end

---@return nil
function SkillBar_OnClick() end