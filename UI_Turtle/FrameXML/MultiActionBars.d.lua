---@meta

NUM_MULTIBAR_BUTTONS = 12

---@return nil
function MultiActionBarFrame_OnLoad() end

---@param bar any (type not inferred)
---@param id any (type not inferred)
---@return nil
function MultiActionButtonDown(bar, id) end

---@param bar any (type not inferred)
---@param id any (type not inferred)
---@param onSelf any (type not inferred)
---@return nil
function MultiActionButtonUp(bar, id, onSelf) end

---@return nil
function MultiActionBar_Update() end

---@return nil
function MultiActionBar_ShowAllGrids() end

---@return nil
function MultiActionBar_HideAllGrids() end

---@param barName any (type not inferred)
---@param show any (type not inferred)
---@return nil
function MultiActionBar_UpdateGrid(barName, show) end

---@return nil
function MultiActionBar_UpdateGridVisibility() end

---@param show any (type not inferred)
---@return nil
function Multibar_EmptyFunc(show) end

---@return any ALWAYS_SHOW_MULTIBARS (type not inferred)
---@nodiscard
function MultibarGrid_IsVisible() end

---@return any SHOW_MULTI_ACTIONBAR_1 (type not inferred)
---@nodiscard
function MultiBar1_IsVisible() end

---@return any SHOW_MULTI_ACTIONBAR_2 (type not inferred)
---@nodiscard
function MultiBar2_IsVisible() end

---@return any SHOW_MULTI_ACTIONBAR_3 (type not inferred)
---@nodiscard
function MultiBar3_IsVisible() end

---@return any SHOW_MULTI_ACTIONBAR_4 (type not inferred)
---@nodiscard
function MultiBar4_IsVisible() end