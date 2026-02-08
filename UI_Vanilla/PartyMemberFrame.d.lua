---@meta

MAX_PARTY_MEMBERS = 4
MAX_PARTY_DEBUFFS = 4
MAX_PARTY_TOOLTIP_BUFFS = 16
MAX_PARTY_TOOLTIP_DEBUFFS = 8

---@return nil
function HidePartyFrame() end

---@return nil
function ShowPartyFrame() end

---@return nil
function PartyMemberFrame_OnLoad() end

---@return nil
function PartyMemberFrame_UpdateMember() end

---@param id any (type not inferred)
---@return nil
function PartyMemberFrame_UpdatePet(id) end

---@param elapsed any (type not inferred)
---@return nil
function PartyMemberFrame_UpdateMemberHealth(elapsed) end

---@return nil
function PartyMemberFrame_UpdateLeader() end

---@return nil
function PartyMemberFrame_UpdatePvPStatus() end

---@param event any (type not inferred)
---@return nil
function PartyMemberFrame_OnEvent(event) end

---@param elapsed any (type not inferred)
---@return nil
function PartyMemberFrame_OnUpdate(elapsed) end

---@param partyFrame any (type not inferred)
---@return nil
function PartyMemberFrame_OnClick(partyFrame) end

---@return nil
function PartyMemberPetFrame_OnClick() end

---@param id any (type not inferred)
---@return nil
function PartyMemberFrame_RefreshPetBuffs(id) end

---@param isPet any (type not inferred)
---@return nil
function PartyMemberBuffTooltip_Update(isPet) end

---@return nil
function PartyMemberHealthCheck() end

---@return nil
function PartyFrameDropDown_OnLoad() end

---@return nil
function PartyFrameDropDown_Initialize() end

---@return nil
function UpdatePartyMemberBackground() end

---@return nil
function PartyMemberBackground_ToggleOpacity() end

---@return nil
function PartyMemberBackground_SetOpacity() end

---@return nil
function PartyMemberBackground_SaveOpacity() end