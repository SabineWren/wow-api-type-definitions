---@meta

CHARACTER_FACING_INCREMENT = 2
MAX_RACES = 10
MAX_CLASSES_PER_RACE = 8
NUM_CHAR_CUSTOMIZATIONS = 5
MIN_CHAR_NAME_LENGTH = 2
CHARACTER_CREATE_ROTATION_START_X = nil ---@type nil
CHARACTER_CREATE_INITIAL_FACING = nil ---@type nil
FACTION_BACKDROP_COLOR_TABLE = { ["Alliance"] = { 0.5, 0.5, 0.5, 0.09, 0.09, 0.19 }, ["Horde"] = { 0.5, 0.2, 0.2, 0.19, 0.05, 0.05 } }
FRAMES_TO_BACKDROP_COLOR = { "CharacterCreateCharacterRace", "CharacterCreateCharacterClass", "CharacterCreateCharacterFaction" }
RACE_ICON_TCOORDS = { ["HUMAN_MALE"] = { 0, 0.125, 0, 0.25 }, ["DWARF_MALE"] = { 0.125, 0.25, 0, 0.25 }, ["GNOME_MALE"] = { 0.25, 0.375, 0, 0.25 }, ["NIGHTELF_MALE"] = { 0.375, 0.5, 0, 0.25 }, ["TAUREN_MALE"] = { 0, 0.125, 0.25, 0.5 }, ["SCOURGE_MALE"] = { 0.125, 0.25, 0.25, 0.5 }, ["TROLL_MALE"] = { 0.25, 0.375, 0.25, 0.5 }, ["ORC_MALE"] = { 0.375, 0.5, 0.25, 0.5 }, ["HUMAN_FEMALE"] = { 0, 0.125, 0.5, 0.75 }, ["DWARF_FEMALE"] = { 0.125, 0.25, 0.5, 0.75 }, ["GNOME_FEMALE"] = { 0.25, 0.375, 0.5, 0.75 }, ["NIGHTELF_FEMALE"] = { 0.375, 0.5, 0.5, 0.75 }, ["TAUREN_FEMALE"] = { 0, 0.125, 0.75, 1.0 }, ["SCOURGE_FEMALE"] = { 0.125, 0.25, 0.75, 1.0 }, ["TROLL_FEMALE"] = { 0.25, 0.375, 0.75, 1.0 }, ["ORC_FEMALE"] = { 0.375, 0.5, 0.75, 1.0 }, ["BLOODELF_MALE"] = { 0.5, 0.625, 0.25, 0.5 }, ["BLOODELF_FEMALE"] = { 0.5, 0.625, 0.75, 1.0 }, ["GOBLIN_MALE"] = { 0.5, 0.625, 0, 0.25 }, ["GOBLIN_FEMALE"] = { 0.5, 0.625, 0.5, 0.75 } }
CLASS_ICON_TCOORDS = { ["WARRIOR"] = { 0, 0.25, 0, 0.25 }, ["MAGE"] = { 0.25, 0.49609375, 0, 0.25 }, ["ROGUE"] = { 0.49609375, 0.7421875, 0, 0.25 }, ["DRUID"] = { 0.7421875, 0.98828125, 0, 0.25 }, ["HUNTER"] = { 0, 0.25, 0.25, 0.5 }, ["SHAMAN"] = { 0.25, 0.49609375, 0.25, 0.5 }, ["PRIEST"] = { 0.49609375, 0.7421875, 0.25, 0.5 }, ["WARLOCK"] = { 0.7421875, 0.98828125, 0.25, 0.5 }, ["PALADIN"] = { 0, 0.25, 0.5, 0.75 } }

---@return nil
function CharacterCreate_OnLoad() end

---@return nil
function CharacterCreate_OnShow() end

---@param button any (type not inferred)
---@return nil
function CharacterCreateFrame_OnMouseDown(button) end

---@param button any (type not inferred)
---@return nil
function CharacterCreateFrame_OnMouseUp(button) end

---@return nil
function CharacterCreateFrame_OnUpdate() end



---@param id any (type not inferred)
---@return nil
function SetCharacterRace(id) end

---@param id any (type not inferred)
---@return nil
function SetCharacterClass(id) end

---@return nil
function CharacterCreate_OnChar() end

---@return nil
function CharacterCreate_OnKeyDown() end

---@return nil
function CharacterCreate_UpdateModel() end

---@return nil
function CharacterCreate_Okay() end

---@return nil
function CharacterCreate_Back() end

---@param id any (type not inferred)
---@return nil
function CharacterClass_OnClick(id) end

---@param id any (type not inferred)
---@return nil
function CharacterRace_OnClick(id) end

---@param sex any (type not inferred)
---@return nil
function SetCharacterGender(sex) end

---@param id any (type not inferred)
---@return nil
function CharacterCustomization_Left(id) end

---@param id any (type not inferred)
---@return nil
function CharacterCustomization_Right(id) end

---@return nil
function CharacterCreate_Randomize() end

---@return nil
function CharacterCreateRotateRight_OnUpdate() end

---@return nil
function CharacterCreateRotateLeft_OnUpdate() end

---@return nil
function CharacterCreate_UpdateFacialHairCustomization() end

---@return nil
function CharacterCreate_UpdateHairCustomization() end