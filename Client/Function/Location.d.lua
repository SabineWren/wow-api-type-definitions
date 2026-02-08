---@meta

--- Returns the zone text displayed over the minimap , ex. "Trade District".
--- - Equals one of GetSubZoneText() or GetZoneText(), depending on whether the player is currently in a named sub-zone.
--- - The event "MINIMAP_ZONE_CHANGED" is triggered, when the text changes.
---@return string
---@nodiscard
function GetMinimapZoneText() end

--- Returns either instance name or zone name
---@return string
---@nodiscard
function GetRealZoneText() end

--- Returns the subzone text, ex. "The Canals"
--- - Empty string if not in a subzone.
---@return string
---@nodiscard
function GetSubZoneText() end

--- Returns PVP info for the current zone.
--- - TODO What does faction default to if zone isn't friendly or hostile?
---@return ZonePvpType pvpType
---@return nil|1 isFfa 1 if in a free-for-all arena.
---@return string faction Name of the faction controlling the zone if pvpType is "friendly" or "hostile".
---@nodiscard
function GetZonePVPInfo() end

--- Returns the zone text, ex. "Stormwind City".
---@return string
---@nodiscard
function GetZoneText() end
