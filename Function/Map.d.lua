---@meta

--- Returns the position of the corpse on the current world map.
function GetCorpseMapPosition() end

--- Returns the number of the continent the world map is currently showing.
function GetCurrentMapContinent() end

--- Returns the number of the zone the world map is currently showing.
function GetCurrentMapZone() end

--- Returns the continent names.
function GetMapContinents() end

--- Returns the name and size of the current world map.
function GetMapInfo() end

--- Returns information about a landmark on the current world map.
function GetMapLandmarkInfo(landmarkIndex) end

--- Returns information about an overlay on the current world map.
function GetMapOverlayInfo(overlayIndex) end

--- Returns the zone names of a continent.
function GetMapZones(continentIndex) end

--- Returns the number of landmarks on the current world map.
function GetNumMapLandmarks() end

--- Returns the number of overlays on the current world map.
function GetNumMapOverlays() end

--- Returns the position of a unit on the current world map. Can return 0,0 if unknown/invalid:
--- 1. The player is inside an instance. On some servers, such as Turtle WoW post-1.17, it may still work.
--- 2. The map hasn't been updated yet; either open the map or use SetMapToCurrentZone() after entering a new zone.
--- 3. Unsupported UnitId param.
---@param unit UnitId
---@return number posX
---@return number posY
---@nodiscard
function GetPlayerMapPosition(unit) end

--- No description
function GetWorldLocMapPosition(continent, x, y) end

--- Passes a click to the client, which then calculates if the zone has to be changed.
function ProcessMapClick(x, y) end

--- Request new data for GetBattlefieldPosition().
function RequestBattlefieldPositions() end

--- Sets the current world map to the zone the player is presently in.
function SetMapToCurrentZone() end

--- Sets the current world map to a specific continent and optionally zone.
---@param continentIndex any
---@param zoneIndex? any
function SetMapZoom(continentIndex, zoneIndex) end

--- Configures scale of full-screen views, such as the world map, to best fill screen.
function SetupFullscreenScale() end

--- Provides map rollover information for highlighting.
function UpdateMapHighlight(x, y) end

--- create a arrow cursor for the player position and orientation.
--- TODO Not documented on wiki
---@param frame Frame
function CreateWorldMapArrowFrame(frame) end

--- update the orientation of the arrow cursor based on the current player orientation.
function UpdateWorldMapArrowFrames() end

--- show or hide the arrow representing the player.
function ShowWorldMapArrowFrame(bool) end

--- set the position of the arrow representing the player
function PositionWorldMapArrowFrame(x, y) end
