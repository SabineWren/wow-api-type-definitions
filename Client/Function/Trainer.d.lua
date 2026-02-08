---@meta

--- Expands a trainer skill header in the trainer window.
--- - Expands all headers if index is 0.
--- - Trainer window must be open.
---@param index integer
---@return nil
function ExpandTrainerSkillLine(index) end

--- Returns the number of trainer services for the currently open trainer window.
---@return nil|integer
---@nodiscard
function GetNumTrainerServices() end

--- Determines if the last opened trainer skill list was for a trade skill.
---@return nil|1
---@nodiscard
function IsTradeskillTrainer() end

--- Sets the status of a skill filter in the trainer window.
---@param type "available"|"unavailable"|"used"
---@param enabled 0|1
---@return nil
function SetTrainerServiceTypeFilter(type, enabled) end
