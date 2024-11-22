---@meta

--- - 1=Inspect (11.11 yards)
--- - 2=Trade (11.11 yards)
--- - 3=Duel (9.9 yards) (or 10?)
--- - 4=Follow (28 yards)
---@param unit UnitId
---@param distIndex 1|2|3|4
---@return nil|1 canInteract
---@nodiscard
function CheckInteractDistance(unit, distIndex) end

--- Reset inspect data once finished with it (Called on inspect window hide)
---@return nil
function ClearInspectPlayer() end

--- Return honor info for the inspected unit (if available).
--- - TODO documentation from 2008, so might be wrong.
---@return number todayHK
---@return number todayHonor
---@return number yesterdayHK
---@return number yesterdayHonor
---@return number lifetimeHK
---@return number lifetimeRank Highest PvP rank ever attained
---@nodiscard
function GetInspectHonorData() end

--- - TODO Can this be called before NotifyInspect, and can it return nil?
---@return number rankProgress from 0 to 1
---@nodiscard
function GetInspectPVPRankProgress() end

--- Determine if the inspected unit's honor data is available.
---@return boolean
---@nodiscard
function HasInspectHonorData() end

--- TODO documentation from 2008, so might be wrong.
--- UPDATE - INSPECT_TALENT_READY doesn't exist until 2.3.0, but this function does exist in 1.12.
--- - Must be in range to inspect.
--- Triggers events:
--- - UNIT_INVENTORY_CHANGED(unit) when inventory information is available.
--- - ~~INSPECT_TALENT_READY when talents are available for inspection.~~
---@param unit UnitId
---@return nil
function NotifyInspect(unit) end

--- Request honor data for inspected unit.
--- Triggers events:
--- - "INSPECT_HONOR_UPDATE", when the inspect honor information has been sent from the server.
---@return nil
function RequestInspectHonorData() end
