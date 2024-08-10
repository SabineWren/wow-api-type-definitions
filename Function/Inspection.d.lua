---@meta

--- Reset inspect data once finished with it (Called on inspect window hide)   - No description
function ClearInspectPlayer() end

--- Return honor info for the inspected unit (if available).
function GetInspectHonorData() end

--- Return rank progress for the inspected unit (if available). Ranges from 0 to 1.
function GetInspectPVPRankProgress() end

--- Determine if the inspected unit's honor data is available.
function HasInspectHonorData() end

--- No description
---@param unit UnitId
function NotifyInspect(unit) end

--- Request honor data for inspected unit.
function RequestInspectHonorData() end
