---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#CheckButton)
---@class CheckButton: Button
CheckButton = {}

---@return nil|1 isChecked
---@nodiscard
--- - When a CheckButton is clicked, the state will already be toggled by the time the OnClick handler runs.
function CheckButton:GetChecked() end

--- Get the texture used for a checked box
---@return nil|Texture
---@nodiscard
function CheckButton:GetCheckedTexture() end

--- Get the texture used for a disabled checked box
---@return nil|Texture
---@nodiscard
function CheckButton:GetDisabledCheckedTexture() end

--- - Does not fire OnClick; use Click() if desired.
---@param isChecked nil|1|boolean
function CheckButton:SetChecked(isChecked) end

--- Set the texture to use for a checked box.
--- - Texture can be path or a loaded texture.
---@param texture string|Texture
---@return nil
function CheckButton:SetCheckedTexture(texture) end

--- Set the texture to use for a disabled but checked box.
--- - Texture can be path or a loaded texture.
---@param texture string|Texture
---@return nil
function CheckButton:SetDisabledCheckedTexture(texture) end
