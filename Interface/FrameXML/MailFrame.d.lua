---@meta

INBOXITEMS_TO_DISPLAY = 7
STATIONERY_ICON_ROW_HEIGHT = 36
STATIONERYITEMS_TO_DISPLAY = 5
PACKAGEITEMS_TO_DISPLAY = 4
STATIONERY_PATH = "Interface\\Stationery\\"
MAX_COD_AMOUNT = 10000

---@return nil
function MailFrame_Onload() end

---@return nil
function MailFrame_OnEvent() end

---@param tab any (type not inferred)
---@return nil
function MailFrameTab_OnClick(tab) end

---@return nil
function InboxFrame_Update() end

---@param index any (type not inferred)
---@return nil
function InboxFrame_OnClick(index) end

---@return nil
function InboxFrameItem_OnEnter() end

---@return nil
function InboxNextPage() end

---@return nil
function InboxPrevPage() end

---@return nil
function OpenMailFrame_OnHide() end

---@return nil
function OpenMail_Update() end

---@return nil
function OpenMail_Reply() end

---@return nil
function OpenMail_Delete() end

---@return nil
function OpenMailPackage_OnEnter() end

---@return nil
function SendMailMailButton_OnClick() end

---@return nil
function SendMailFrame_SendMail() end

---@return nil
function SendMailFrame_Update() end

---@return nil
function SendMailFrame_Reset() end

---@return nil
function SendMailFrame_CanSend() end

---@param index any (type not inferred)
---@return nil
function SendMailRadioButton_OnClick(index) end

---@return nil
function SendMailFrame_SendeeAutocomplete() end

---@return nil
function StationeryPopupFrame_Update() end

---@param index any (type not inferred)
---@return nil
function StationeryPopupButton_OnClick(index) end

---@return nil
function SendMailPackageButton_OnClick() end