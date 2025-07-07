---@meta

ChatFrame_OnEvent_Original = ChatFrame_OnEvent

---@param event any (type not inferred)
---@return nil
function ChatFrame_OnEvent(event) end
SendAddonMessage_Original = SendAddonMessage

---@param prefix any (type not inferred)
---@param text any (type not inferred)
---@param msgType any (type not inferred)
---@param target any (type not inferred)
---@return nil
function SendAddonMessage(prefix, text, msgType, target) end