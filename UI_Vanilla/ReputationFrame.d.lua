---@meta

NUM_FACTIONS_DISPLAYED = 15
REPUTATIONFRAME_FACTIONHEIGHT = 26
FACTION_BAR_COLORS = { [1] = { r = 0.8, g = 0.3, b = 0.22 }, [2] = { r = 0.8, g = 0.3, b = 0.22 }, [3] = { r = 0.75, g = 0.27, b = 0 }, [4] = { r = 0.9, g = 0.7, b = 0 }, [5] = { r = 0, g = 0.6, b = 0.1 }, [6] = { r = 0, g = 0.6, b = 0.1 }, [7] = { r = 0, g = 0.6, b = 0.1 }, [8] = { r = 0, g = 0.6, b = 0.1 } }
MAX_PLAYER_LEVEL = 60

---@return nil
function ReputationFrame_OnLoad() end

---@return nil
function ReputationFrame_OnShow() end

---@param event any (type not inferred)
---@return nil
function ReputationFrame_OnEvent(event) end

---@return nil
function ReputationFrame_Update() end

---@return nil
function ReputationBar_OnClick() end

---@param newLevel any (type not inferred)
---@return nil
function ReputationWatchBar_Update(newLevel) end

---@param lock any (type not inferred)
---@return nil
function ShowWatchedReputationBarText(lock) end

---@param unlock any (type not inferred)
---@return nil
function HideWatchedReputationBarText(unlock) end