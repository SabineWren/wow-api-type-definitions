---@meta

REALM_BUTTON_HEIGHT = 16
MAX_REALMS_DISPLAYED = 18
REALM_LIST_REFRESH_TIME = 5
MAX_REALM_CATEGORY_TABS = 8

---@return nil
function RealmList_OnLoad() end

---@return nil
function RealmList_OnEvent() end

---@return nil
function RealmListUpdate() end


---@return nil
function RealmList_OnKeyDown() end

---@return nil
function RealmList_OnOk() end

---@return nil
function RealmList_OnCancel() end

---@param id any (type not inferred)
---@return nil
function RealmSelectButton_OnClick(id) end

---@param id any (type not inferred)
---@return nil
function RealmSelectButton_OnDoubleClick(id) end

---@return nil
function RealmListScrollFrame_OnVerticalScroll() end

---@return nil
function RealmList_OnShow() end

---@return nil
function RealmList_OnHide() end

---@param elapsed any (type not inferred)
---@return nil
function RealmList_OnUpdate(elapsed) end

---@param tab any (type not inferred)
---@return nil
function RealmListTab_OnClick(tab) end