---@meta

--- Create a new macro.
--- - ex. local index = CreateMacro("MyMacro", 12, "/script CastSpellById(1);", 1, 1)
---@param name string The name of the macro to display in the UI. 16 character limit.
---@param icon integer 1-based iconTextureId (index of icon textures as displayed in "Change Name/Icon" UI). Check the current number if icon textures available by calling GetNumMacroIcons().
---@param body string The macro commands to execute. 255 character limit.
---@param one 1 Purpose unknown and always 1.
---@param isPerCharacter 0|1 0 Saved macro for all characters on account. 1 will save it per character.
---@return MacroIndex index The index of the newly-created macro, as displayed in the "Create Macros" UI.
---@nodiscard
function CreateMacro(name, icon, body, one, isPerCharacter) end

---@param indexOrName MacroIndex|string
---@return nil
function DeleteMacro(indexOrName) end

--- TODO does this return index in 1.12.1 client?
---@param index MacroIndex 1 to GetMacroIndexByName().
---@param name string The name of the macro to display in the UI. 16 character limit.
---@param icon integer 1-based iconTextureId (index of icon textures as displayed in "Change Name/Icon" UI). Check the current number if icon textures available by calling GetNumMacroIcons().
---@param body string The macro commands to execute. 255 character limit.
---@param one 1 Purpose unknown and always 1.
---@param isPerCharacter 0|1 0 Saved macro for all characters on account. 1 will save it per character.
---@return MacroIndex newIndex The new index of the macro, as displayed in the "Create Macros" UI. Same as argument "index" unless the macro name is changed, as they are sorted alphabetically.
---@nodiscard
function EditMacro(index, name, icon, body, one, isPerCharacter) end

--- Returns texture of the icons provided by Blizzard.
--- - You need to call GetNumMacroIcons() at least once before calling GetMacroIconInfo(), or the function will only return empty strings.
--- - [GetMacroInfo](lua://GetMacroInfo) works fine without setup.
---@param index MacroIndex 1 to GetMacroIndexByName().
---@return string iconTexturePath Excludes file extension, ex. Interface\Icons\INV_Misc_QuestionMark
---@nodiscard
function GetMacroIconInfo(index) end

---@param name string The name of the macro in the UI. 16 character limit.
---@return MacroIndex index If duplicates names, returns highest index found.
---@nodiscard
function GetMacroIndexByName(name) end

--- Returns "name", iconTextureID, "body", local.
---@param index MacroIndex
---@return string name
---@return string iconTexturePath Excludes file extension, ex. Interface\Icons\INV_Misc_QuestionMark
---@return string body Contents of the macro.
---@return nil|1 maybeOne Unknown purpose.
---@nodiscard
function GetMacroInfo(index) end

--- Returns the number of usable icons provided by Blizzard.
---@return integer
---@nodiscard
function GetNumMacroIcons() end

--- Returns the number of macros the user has.
---@return integer
---@nodiscard
function GetNumMacros() end

--- Pickup a macro button icon.
---@param index MacroIndex
---@return nil
function PickupMacro(index) end
