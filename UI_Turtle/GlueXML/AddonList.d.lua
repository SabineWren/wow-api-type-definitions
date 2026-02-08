---@meta

ADDON_BUTTON_HEIGHT = 16
MAX_ADDONS_DISPLAYED = 19

---@return nil
function UpdateAddonButton() end

---@return nil
function AddonList_OnLoad() end

---@return nil
function AddonList_Update() end


---@param owner any (type not inferred)
---@return nil
function AddonTooltip_Update(owner) end

---@return nil
function AddonList_OnKeyDown() end

---@param index any (type not inferred)
---@param enabled any (type not inferred)
---@return nil
function AddonList_Enable(index, enabled) end

---@return nil
function AddonList_OnOk() end

---@return nil
function AddonList_OnCancel() end

---@return nil
function AddonListScrollFrame_OnVerticalScroll() end

---@return nil
function AddonList_OnShow() end

---@return any hasOutOfDate (type not inferred)
---@nodiscard
function AddonList_HasOutOfDate() end

---@param texture any (type not inferred)
---@param index any (type not inferred)
---@return nil
function AddonList_SetSecurityIcon(texture, index) end

---@return nil
function AddonList_DisableOutOfDate() end

---@return any hasNewVersion (type not inferred)
---@nodiscard
function AddonList_HasNewVersion() end
AddonDialogTypes = {  }
AddonDialogTypes["ADDONS_OUT_OF_DATE"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end }
AddonDialogTypes["CONFIRM_LOAD_ADDONS"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end }
AddonDialogTypes["CONFIRM_DISABLE_ADDONS"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end }
AddonDialogTypes["CONFIRM_LAUNCH_ADDON_URL"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end }

---@param which any (type not inferred)
---@param arg1 any (type not inferred)
---@return nil
function AddonDialog_Show(which, arg1) end

---@param index any (type not inferred)
---@return nil
function AddonDialog_OnClick(index) end

---@return nil
function AddonDialog_OnKeyDown() end

---@return nil
function AddonListCharacterDropDown_OnClick() end

---@return nil
function AddonListCharacterDropDown_Initialize() end