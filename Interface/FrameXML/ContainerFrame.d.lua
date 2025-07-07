---@meta

NUM_CONTAINER_FRAMES = 12
NUM_BAG_FRAMES = 4
MAX_CONTAINER_ITEMS = 36
NUM_CONTAINER_COLUMNS = 4
ROWS_IN_BG_TEXTURE = 6
MAX_BG_TEXTURES = 2
BG_TEXTURE_HEIGHT = 512
CONTAINER_WIDTH = 192
CONTAINER_SPACING = 0
VISIBLE_CONTAINER_SPACING = 3
CONTAINER_OFFSET_Y = 70
CONTAINER_OFFSET_X = 0
CONTAINER_SCALE = 0.90

---@return nil
function ContainerFrame_OnLoad() end

---@return nil
function ContainerFrame_OnEvent() end

---@param id any (type not inferred)
---@return nil
function ToggleBag(id) end

---@return nil
function ToggleBackpack() end

---@return nil
function ContainerFrame_OnHide() end

---@return nil
function ContainerFrame_OnShow() end

---@param id any (type not inferred)
---@return nil
function OpenBag(id) end

---@param id any (type not inferred)
---@return nil
function CloseBag(id) end

---@param id any (type not inferred)
---@return nil nil
---@nodiscard
function IsBagOpen(id) end

---@return nil
function OpenBackpack() end

---@return nil
function CloseBackpack() end

---@return nil
function ContainerFrame_GetOpenFrame() end

---@param frame any (type not inferred)
---@return nil
function ContainerFrame_Update(frame) end

---@param container any (type not inferred)
---@param button any (type not inferred)
---@return nil
function ContainerFrame_UpdateCooldown(container, button) end

---@param frame any (type not inferred)
---@param size any (type not inferred)
---@param id any (type not inferred)
---@return nil
function ContainerFrame_GenerateFrame(frame, size, id) end

---@return nil
function updateContainerFrameAnchors() end

---@return nil
function ContainerFrameItemButton_OnLoad() end

---@param button any (type not inferred)
---@param ignoreModifiers any (type not inferred)
---@return nil
function ContainerFrameItemButton_OnClick(button, ignoreModifiers) end

---@param button any (type not inferred)
---@return nil
function ContainerFrameItemButton_OnEnter(button) end

---@param elapsed any (type not inferred)
---@return nil
function ContainerFrameItemButton_OnUpdate(elapsed) end

---@param forceOpen any (type not inferred)
---@return nil
function OpenAllBags(forceOpen) end

---@return nil
function CloseAllBags() end

---@param button any (type not inferred)
---@return nil
function KeyRingItemButton_OnClick(button) end

---@return nil
function PutKeyInKeyRing() end

---@return nil
function ToggleKeyRing() end

---@return any size (type not inferred)
---@nodiscard
function GetKeyRingSize() end