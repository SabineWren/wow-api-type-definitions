---@meta

PETACTIONBAR_SLIDETIME = 0.09
PETACTIONBAR_YPOS = 98
PETACTIONBAR_XPOS = 36
NUM_PET_ACTION_SLOTS = 10
PET_DEFENSIVE_TEXTURE = "Interface\\Icons\\Ability_Defend"
PET_AGGRESSIVE_TEXTURE = "Interface\\Icons\\Ability_Racial_BloodRage"
PET_PASSIVE_TEXTURE = "Interface\\Icons\\Ability_Seal"
PET_ATTACK_TEXTURE = "Interface\\Icons\\Ability_GhoulFrenzy"
PET_FOLLOW_TEXTURE = "Interface\\Icons\\Ability_Tracking"
PET_WAIT_TEXTURE = "Interface\\Icons\\Spell_Nature_TimeStop"
PET_DISMISS_TEXTURE = "Interface\\Icons\\Spell_Shadow_Teleport"

---@return nil
function PetActionBar_OnLoad() end

---@return nil
function PetActionBar_OnEvent() end

---@param elapsed any (type not inferred)
---@return nil
function PetActionBarFrame_OnUpdate(elapsed) end

---@return nil
function PetActionBar_Update() end

---@return nil
function PetActionBar_UpdateCooldowns() end

---@return nil
function ShowPetActionBar() end

---@return nil
function HidePetActionBar() end

---@return nil
function PetActionBar_ShowGrid() end

---@return nil
function PetActionBar_HideGrid() end

---@param id any (type not inferred)
---@return nil
function PetActionButtonDown(id) end

---@param id any (type not inferred)
---@return nil
function PetActionButtonUp(id) end

---@return nil
function PetActionButton_OnLoad() end

---@return nil
function PetActionButton_OnEvent() end

---@param button any (type not inferred)
---@return nil
function PetActionButton_OnClick(button) end

---@return nil
function PetActionButton_OnDragStart() end

---@return nil
function PetActionButton_OnReceiveDrag() end

---@return nil
function PetActionButton_OnEnter() end

---@return nil
function PetActionButton_OnLeave() end

---@return nil
function PetActionButton_SetHotkeys() end

---@return nil
function PetActionButton_StartFlash() end

---@return nil
function PetActionButton_StopFlash() end

---@return nil
function LockPetActionBar() end

---@return nil
function UnlockPetActionBar() end