---@meta

---@alias Continent
--- | 1 Kalimdor or zone within
--- | 2 Eastern Kingdoms or zone within

--- Icons in a 4x4 grid from [Interface\Minimap\POIIcons.blp](https://static.wikia.nocookie.net/wowpedia/images/e/e1/Poiicons.png/revision/latest?cb=20221108072824)
---@alias LandmarkIcon
--- | 0 - Gray cart - A neutral mine (Battlegrounds)
--- | 1 - Blue cart - An Alliance held mine (Battlegrounds)
--- | 2 - Red cart - A Horde held mine (Battlegrounds)
--- | 3 - Half red tombstone - A contested Horde graveyard (Battlegrounds)
--- | 4 - Town - the small house icon
--- | 5 - City - The grey tower icon
--- | 6 - Flag - This is the temporary marker shown when you ask a town guard for directions
--- | 7 - Tombstone - Player corpse marker
--- | 8 - Half red tower - An endangered Horde tower (Battlegrounds)
--- | 9 - Blue tower - An Alliance tower (Battlegrounds)
--- | 10 - Red tower - A Horde tower (Battlegrounds)
--- | 11 - Half blue tower - An endangered Alliance tower (Battlegrounds)
--- | 12 - Blue tombstone - An Alliance graveyard (Battlegrounds)
--- | 13 - Half blue tombstone - A contested Alliance graveyard (Battlegrounds)
--- | 14 - Red tombstone - A Horde graveyard (Battlegrounds)
--- | 15 - Invisible - There's number of these on zoomed in maps that dont get displayed.

--- Returns the position of the corpse on the current world map.
--- - Values are a fraction of map coordinates.
--- - Returns (0, 0) when unknown
---@return number x [0, 1]
---@return number y [0, 1]
---@nodiscard
function GetCorpseMapPosition() end

--- Returns enum or error code for continent the world map is currently showing.
--- - -1 Battleground
--- - 0 Entire world
--- - Continent enum otherwise
---@return -1|0|Continent
---@nodiscard
function GetCurrentMapContinent() end

--- Returns index of the currently displayed world map zone (within continent).
--- - 0 means showing the entire continent.
---@return integer
---@nodiscard
function GetCurrentMapZone() end

--- Returns the continent names, with vararg indexes matching the corresponding continent enums
---@return string ... c1, c2, ..., cN
---@nodiscard
function GetMapContinents() end

--- Returns the name and size of the current world map.
---@return string mapFileName nil for the whole world, BUT the official API catches this with a comment of Temporary Hack and uses the value "World" instead!
---@return integer textureHeight 0 if no texture
---@return integer textureWidth 0 if no texture (guess)
---@nodiscard
function GetMapInfo() end

--- Returns information about a landmark on the current world map.
---@param landmarkIndex integer See [GetNumMapLandmarks()](lua://GetNumMapLandmarks)
---@return string name Name of the landmark
---@return string description A description of the landmark. This can be dynamic, such as which faction controls it.
---@return LandmarkIcon textureIndex Index of which landmark icon to display.
---@return number x [0, 1]
---@return number y [0, 1]
---@nodiscard
function GetMapLandmarkInfo(landmarkIndex) end

--- Returns information about an overlay on the current world map.
---@param overlayIndex integer See [GetNumMapOverlays()](lua://GetNumMapOverlays)
---@return string texturePath Path of the overlay texture
---@return integer texWidth Width of the resulting texture in pixels.
---@return integer texHeight Height of the resulting texture in pixels.
---@return integer ofsX X direction pixel offset of the overlay texture from the map texture.
---@return integer ofsY Y direction pixel offset of the overlay texture from the map texture.
---@return 0 mapX Always 0 and not used in UI.
---@return 0 mapY Always 0 and not used in UI.
---@nodiscard
function GetMapOverlayInfo(overlayIndex) end

--- Returns the zone names of a continent.
---@param continent Continent
---@return string ... zone1, zone2, ..., zoneN
---@nodiscard
function GetMapZones(continent) end

--- Returns the number of landmarks on the current world map.
-- - Landmarks are those icons showing cities and points of interest
---@return integer
---@nodiscard
function GetNumMapLandmarks() end

--- Returns the number of overlays on the current world map.
--- - Overlays are the areas that fill in as they're discovered.
---@return integer
---@nodiscard
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

--- Passes a click to the client. If the clicked region is a link, then client may change zone.
---@param x number [0, 1]
---@param y number [0, 1]
---@return nil
function ProcessMapClick(x, y) end

--- Request new data for GetBattlefieldPosition().
--- - Appears to be called on every OnUpdate from the WorldMapFrame frame.
---@return nil
function RequestBattlefieldPositions() end

--- Sets the current world map to the zone the player is presently in.
--- - After an interface reload, this function only sets the zoom to the continent the player is on and not to the zone until the zone changes at least once.
---@return nil
function SetMapToCurrentZone() end

--- Sets the current world map to a specific continent and optionally zone.
---@param continentIndex 0|Continent 0 Entire world
---@param zoneIndex? integer Omit for entire continent
---@return nil
function SetMapZoom(continentIndex, zoneIndex) end

--- Sizes a frame to take up the entire screen regardless of screen resolution.
---@param frame Frame
---@return nil
function SetupFullscreenScale(frame) end

--- Provides map rollover information for highlighting.
---@param x number [0, 1]
---@param y number [0, 1]
---@return string name The name of the area pointed at.
---@return nil|string fileName Filename of the highlight texture to use, or nil if none.
---@return number texPctX (guess) Proportion of the highlight texture's full width to use (0 to 1)
---@return number texPctY (guess) Proportion of the highlight texture's full height to use (0 to 1)
---@return number texX Width of the highlight texture as a proportion of the map's width (0 to 1)
---@return number texY Height of the highlight texture as a proportion of the map's height (0 to 1)
---@return number scrollX X location of the start of the highlight texture as a proportion of the map's width (0 to 1)
---@return number scrollY Y location of the start of the highlight texture as a proportion of the map's height (0 to 1)
---@nodiscard
function UpdateMapHighlight(x, y) end

--- TODO Not documented on wiki<br>
--- create a arrow cursor for the player position and orientation.
---@param frame any Maybe a global frame name?
function CreateWorldMapArrowFrame(frame) end

--- TODO Not documented on wiki<br>
--- update the orientation of the arrow cursor based on the current player orientation.
function UpdateWorldMapArrowFrames() end

--- TODO Not documented on wiki<br>
--- show or hide the arrow representing the player.
---@param bool boolean
function ShowWorldMapArrowFrame(bool) end

--- TODO Not documented on wiki<br>
--- set the position of the arrow representing the player
---@param x number [0, 1]
---@param y number [0, 1]
function PositionWorldMapArrowFrame(x, y) end
