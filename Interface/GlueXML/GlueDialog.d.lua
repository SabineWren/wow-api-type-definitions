---@meta

GlueDialogTypes = {  }
GlueDialogTypes["REALM_IS_FULL"] = { text = nil, button1 = nil, button2 = nil, showAlert = 1, OnAccept = function() end, OnCancel = function() end }
GlueDialogTypes["SUGGEST_REALM"] = { text = nil, button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnCancel = function() end }
GlueDialogTypes["DISCONNECTED"] = { text = nil, button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnCancel = function() end }
GlueDialogTypes["INVALID_NAME"] = { text = nil, button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end }
GlueDialogTypes["CANCEL"] = { text = "", button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end }
GlueDialogTypes["OKAY"] = { text = "", button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnCancel = function() end }
GlueDialogTypes["OKAY_WITH_URL"] = { text = "", button1 = nil, button2 = nil, OnAccept = function() end, OnCancel = function() end }
GlueDialogTypes["CONNECTION_HELP"] = { text = "", button1 = nil, button2 = nil, OnShow = function() end, OnAccept = function() end, OnCancel = function() end }

---@param which any (type not inferred)
---@param text any (type not inferred)
---@param data any (type not inferred)
---@return nil
function GlueDialog_Show(which, text, data) end

---@return nil
function GlueDialog_OnLoad() end

---@return nil
function GlueDialog_OnShow() end

---@return nil
function GlueDialog_OnEvent() end

---@return nil
function GlueDialog_OnHide() end

---@param index any (type not inferred)
---@return nil
function GlueDialog_OnClick(index) end

---@return nil
function GlueDialog_OnKeyDown() end