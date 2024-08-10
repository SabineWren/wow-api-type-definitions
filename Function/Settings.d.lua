---@meta

--- Get the world appearance Texture Detail.
function GetBaseMip() end

--- Get the current (active) setting for a variable in config.wtf
---@param varname string
---@return nil|string
---@nodiscard
function GetCVar(varname) end

--- Get the default setting for a variable in config.wtf
---@param varname string
---@return nil|string
---@nodiscard
function GetCVarDefault(varname) end

--- Get the current in-use multi-sample (antialias) format.
function GetCurrentMultisampleFormat() end

--- Get the index of the current screen resolution.
function GetCurrentResolution() end

--- No Description
function GetDoodadAnim() end

--- Get the world appearance Terrain Distance.
function GetFarclip() end

--- No Description
function GetGamma() end

--- Get the available multi-sample (antialias) formats..
function GetMultisampleFormats() end

--- No Description
function GetRefreshRates(x) end

--- No Description
function GetScreenResolutions() end

--- Get the world appearance Terrain Texture.
function GetTerrainMip() end

--- No Description
function GetTexLodBias() end

--- No Description
function GetVideoCaps() end

--- No Description
function GetWaterDetail() end

--- Get the world appearance Environment Detail.
function GetWorldDetail() end

--- Turn off display of nameplates above friendly units.
function HideFriendNameplates() end

--- Turn off display of nameplates.
function HideNameplates() end

--- Registers a variable for use with the GetCVar and SetCVar functions.
--- You can register custom CVars.
--- They are set game-wide and will persist after relogging/reloading but not after closing the game.
---@param varname string
---@param initialValue? string
function RegisterCVar(varname, initialValue) end

--- No Description
function ResetPerformanceValues() end

--- No Description
function ResetTutorials() end

--- Set the world appearance Texture Detail (0,1).
function SetBaseMip(value) end

--- Set the value of a variable in config.wtf
---@param varname string
---@param value number|string
---@param scriptCVar? string First argument for the CVAR_UPDATE event. If none passed then the event isn't fired.
function SetCVar(varname, value, scriptCVar) end

--- No Description
function SetDoodadAnim() end

--- Sets the decimal separator to a comma instead of a dot
function SetEuropeanNumbers(flag) end

--- Set the world appearance Terrain Distance (177-777).
function SetFarclip(value) end

--- No Description
function SetGamma(value) end

--- No Description
function SetLayoutMode() end

--- Set the multi-sample (antialias) format to use.
function SetMultisampleFormat(index) end

--- No Description
function SetScreenResolution(x) end

--- Set the world appearance Terrain Texture (0,1).
function SetTerrainMip(value) end

--- No Description
function SetTexLodBias() end

--- No Description
function SetWaterDetail() end

--- Set the world appearance Environment Detail (0,1,2).
function SetWorldDetail(value) end

--- Set whether player's cloak is displayed.
function ShowCloak(flag) end

--- Turn on display of nameplates above friendly units.
function ShowFriendNameplates() end

--- Set whether player's helm is displayed.
function ShowHelm(flag) end

--- Turn on display of nameplates.
function ShowNameplates() end

--- Return 1 if player's cloak is displayed, nil otherwise.
function ShowingCloak() end

--- Return 1 if player's helm is displayed, nil otherwise.
function ShowingHelm() end

--- No Description
function ToggleCollision() end

--- No Description
function ToggleCollisionDisplay() end

--- No Description
function TogglePerformanceDisplay() end

--- No Description
function TogglePerformanceValues() end

--- No Description
function TogglePlayerBounds() end

--- No Description
function TogglePortals() end

--- No Description
function ToggleTris() end

--- No Description
function TutorialsEnabled() end
