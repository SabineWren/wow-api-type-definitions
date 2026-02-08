---@meta

--- Returns the number of lines in the skill window, including headers.
--- - This number can be used to loop through all skill lines and retrieve the info using [GetSkillLineInfo](lua://GetSkillLineInfo).
---@return number
---@nodiscard
function GetNumSkillLines() end

--- Returns skill (or skill header) information.
---@param skillIndex number The row of the skill display to request information from.
---@return string skillName Skill (or header) name.
---@return nil|1 isHeader Is skill header?
---@return nil|1 isExpanded Is skill expanded?
---@return number skillRank Current skill rank.
---@return number numTempPoints Skill temporary points.
---@return number skillModifier Skill modifier.
---@return number skillMaxRank Max skill rank.
---@return nil|1 isAbandonable Is skill can be unlearned?
---@return nil|1 stepCost Unknown.
---@return number rankCost Unknown.
---@return number minLevel Minimum required level to learn skill.
---@return number skillCostType Unknown.
---@return string skillDescription Skill description.
---@nodiscard
function GetSkillLineInfo(skillIndex) end
