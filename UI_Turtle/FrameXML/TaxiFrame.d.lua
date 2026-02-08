---@meta

TAXI_MAP_WIDTH = 316
TAXI_MAP_HEIGHT = 352
NUM_TAXI_BUTTONS = 0
NUM_TAXI_ROUTES = 0
TaxiButtonTypes = {  }
TaxiButtonTypes["CURRENT"] = { file = "Interface\\TaxiFrame\\UI-Taxi-Icon-Green" }
TaxiButtonTypes["REACHABLE"] = { file = "Interface\\TaxiFrame\\UI-Taxi-Icon-White" }
TaxiButtonTypes["DISTANT"] = { file = "Interface\\TaxiFrame\\UI-Taxi-Icon-Yellow" }

---@return nil
function TaxiFrame_OnLoad() end

---@param event any (type not inferred)
---@return nil
function TaxiFrame_OnEvent(event) end

---@param button any (type not inferred)
---@return nil
function TaxiNodeOnButtonEnter(button) end

---@return nil
function DrawOneHopLines() end
TAXIROUTE_LINEFACTOR = 0 ---@type number
TAXIROUTE_LINEFACTOR_2 = 0 ---@type number

---@param T any (type not inferred)
---@param C any (type not inferred)
---@param sx any (type not inferred)
---@param sy any (type not inferred)
---@param ex any (type not inferred)
---@param ey any (type not inferred)
---@param w any (type not inferred)
---@param relPoint any (type not inferred)
---@return nil
function DrawRouteLine(T, C, sx, sy, ex, ey, w, relPoint) end