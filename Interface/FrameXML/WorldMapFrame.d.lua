---@meta

NUM_WORLDMAP_DETAIL_TILES = 12
NUM_WORLDMAP_POIS = 0
NUM_WORLDMAP_POI_COLUMNS = 8
WORLDMAP_POI_TEXTURE_WIDTH = 128
NUM_WORLDMAP_OVERLAYS = 0
NUM_WORLDMAP_FLAGS = 2
WORLDMAP_WINDOWED = 0
WORLDMAP_WINDOWED_SCALE = 0.7

---@return nil
function WorldMapFrame_OnLoad() end

---@return nil
function WorldMapFrame_OnEvent() end

---@return nil
function WorldMapFrame_Update() end

---@return nil
function WorldMapFrame_Minimize() end

---@return nil
function WorldMapFrame_Maximize() end

---@return nil
function WorldMapFrame_SetMapName() end

---@return nil
function WorldMapPOI_OnEnter() end

---@return nil
function WorldMapPOI_OnLeave() end

---@return nil
function WorldMapPOI_OnClick() end

---@param index any (type not inferred)
---@return nil
function WorldMap_CreatePOI(index) end

---@param index any (type not inferred)
---@return any xCoord1 (type not inferred)
---@return any xCoord2 (type not inferred)
---@return any yCoord1 (type not inferred)
---@return any yCoord2 (type not inferred)
---@nodiscard
function WorldMap_GetPOITextureCoords(index) end

---@return nil
function WorldMapContinentsDropDown_OnLoad() end

---@return nil
function WorldMapContinentsDropDown_Initialize() end


---@return nil
function WorldMapZoneDropDown_OnLoad() end

---@return nil
function WorldMapZoneDropDown_Initialize() end


---@return nil
function WorldMapContinentButton_OnClick() end

---@return nil
function WorldMapZoneButton_OnClick() end

---@return nil
function WorldMapZoomOutButton_OnClick() end

---@return nil
function WorldMap_UpdateZoneDropDownText() end

---@return nil
function WorldMap_UpdateContinentDropDownText() end

---@param mouseButton any (type not inferred)
---@param button any (type not inferred)
---@return nil
function WorldMapButton_OnClick(mouseButton, button) end

---@param elapsed any (type not inferred)
---@return nil
function WorldMapButton_OnUpdate(elapsed) end

---@return nil
function WorldMapUnit_OnEnter() end

---@return nil
function WorldMapFrame_PingPlayerPosition() end

---@return nil
function ToggleWorldMap() end