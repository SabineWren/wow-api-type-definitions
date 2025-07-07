---@meta

BANK_CONTAINER = -1
NUM_BAG_SLOTS = 4
NUM_BANKGENERIC_SLOTS = 24
NUM_BANKBAGSLOTS = 6

---@return nil
function BankFrameBaseButton_OnLoad() end

---@return nil
function BankFrameItemButton_OnLoad() end

---@return nil
function BankFrameBagButton_OnLoad() end

---@return any x0 (type not inferred)
---@nodiscard
function ButtonInventorySlot() end

---@return nil
function BankFrameItemButton_OnUpdate() end

---@return nil
function BankFrame_OnLoad() end

---@return nil
function UpdateBagSlotStatus() end

---@return nil
function CloseBankBagFrames() end

---@param event any (type not inferred)
---@return nil
function BankFrame_OnEvent(event) end

---@param button any (type not inferred)
---@return nil
function BankFrameItemButtonGeneric_OnClick(button) end

---@param id any (type not inferred)
---@return nil
function UpdateBagButtonHighlight(id) end

---@param button any (type not inferred)
---@return nil
function BankFrameItemButtonBag_OnClick(button) end

---@return nil
function BankFrameItemButtonBag_OnShiftClick() end

---@param event any (type not inferred)
---@return nil
function BankFrameItemButton_OnEvent(event) end

---@return nil
function BankFrameItemButton_UpdateLock() end