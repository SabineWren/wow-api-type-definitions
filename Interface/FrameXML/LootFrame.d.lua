---@meta

LOOTFRAME_NUMBUTTONS = 4
NUM_GROUP_LOOT_FRAMES = 4
MASTER_LOOT_THREHOLD = 4

---@return nil
function LootFrame_OnLoad() end

---@param event any (type not inferred)
---@return nil
function LootFrame_OnEvent(event) end

---@return nil
function LootFrame_Update() end

---@return nil
function LootFrame_PageDown() end

---@return nil
function LootFrame_PageUp() end

---@return nil
function LootFrame_OnShow() end

---@return nil
function LootFrame_OnHide() end

---@param button any (type not inferred)
---@return nil
function LootFrameItem_OnClick(button) end

---@return nil
function GroupLootDropDown_OnLoad() end

---@return nil
function GroupLootDropDown_Initialize() end

---@return nil
function GroupLootDropDown_GiveLoot() end

---@param id any (type not inferred)
---@param rollTime any (type not inferred)
---@return nil
function GroupLootFrame_OpenNewFrame(id, rollTime) end

---@return nil
function GroupLootFrame_OnShow() end

---@return nil
function GroupLootFrame_OnEvent() end

---@return nil
function GroupLootFrame_OnUpdate() end