---@meta

--- Disable the specified Addon for subsequent sessions.
--- - Takes effect only after reloading the UI.
--- - Integer - The index of the Addon to disable in the user's Addon list.
--- - String - The name of the AddOn to be disabled.
---@param indexOrAddonName integer|string
---@return nil
function DisableAddOn(indexOrAddonName) end

--- Disable all Addon for subsequent sessions.
---@return nil
function DisableAllAddOns() end

--- Enable the specified Addon for subsequent sessions.
--- - Takes effect only after reloading the UI.
--- - Integer - The index of the Addon to disable in the user's Addon list.
--- - String - The name of the AddOn to be disabled.
---@param indexOrAddonName integer|string
---@return nil
function EnableAddOn(indexOrAddonName) end

--- Enable all Addon for subsequent sessions.
---@return nil
function EnableAllAddOns() end

--- Get dependency list for an Addon.
---@param indexOrAddonName integer|string
---@return nil|string dep1 Name of required dependency (or nil if none)
---@return nil|string dep2 Name of required dependency (or nil if <2)
---@return nil|string dep3 Name of require ddependency (or nil if <3)
---@nodiscard
function GetAddOnDependencies(indexOrAddonName) end

--- Get information about an Addon from its .toc file.
---@param indexOrAddonName integer|string
---@return string name The name of the Addon.
---@return string title The title of the Addon.
---@return string notes The notes about the Addon.
---@return nil|1 isEnabled Indicates if the Addon is currently enabled.
---@return nil|1 isLoadable Indicates if the Addon is eligible to be loaded.
---@return nil|string reason The reason why the Addon can't load. nil if the addon is loadable. Observed reasons: "DISABLED" and "MISSING".
---@return "INSECURE"|"SECURE" security "INSECURE" for all user provided addons and "SECURE" for Blizzard_* AddOns.
---@nodiscard
function GetAddOnInfo(indexOrAddonName) end

--- Retrieves metadata from its .toc file.
---@param addon string Name of the addon.
---@param variable string Name of the variable to retieve.
---@return string
---@nodiscard
function GetAddOnMetadata(addon, variable) end

--- Get the number of user supplied Addon.
--- - Excludes Blizzard addons.
---@return integer
---@nodiscard
function GetNumAddOns() end

--- Returns true if the specified Addon is loaded.
---@param indexOrAddonName integer|string
---@return boolean
---@nodiscard
function IsAddOnLoaded(indexOrAddonName) end

--- Test whether an Addon is load-on-demand (performance optimization).
--- - .toc field: ## LoadOnDemand: 1
--- - Avoids loading until called with LoadAddOn.
---@param indexOrAddonName integer|string
---@return boolean
---@nodiscard
function IsAddOnLoadOnDemand(indexOrAddonName) end

--- Request loading of a Load-On-Demand Addon.
--- - Returns true if success or already loaded.
---@param indexOrAddonName integer|string
---@return boolean
---@return nil|string reason Code if load failed.
---@nodiscard
function LoadAddOn(indexOrAddonName) end

--- Not documented on wiki
function ResetDisabledAddOns() end
