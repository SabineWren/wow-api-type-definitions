---@meta

MAX_SPELLS = 1024
MAX_SKILLLINE_TABS = 8
SPELLS_PER_PAGE = 12
BOOKTYPE_SPELL = "spell"
BOOKTYPE_PET = "pet"
SPELLBOOK_PAGENUMBERS = {  }

---@param bookType any (type not inferred)
---@return nil
function ToggleSpellBook(bookType) end

---@return nil
function SpellBookFrame_OnLoad() end

---@return nil
function SpellBookFrame_OnEvent() end

---@return nil
function SpellBookFrame_OnShow() end

---@param showing any (type not inferred)
---@return nil
function SpellBookFrame_Update(showing) end

---@param tabButton any (type not inferred)
---@param bookType any (type not inferred)
---@param token any (type not inferred)
---@return nil
function SpellBookFrame_SetTabType(tabButton, bookType, token) end

---@return nil
function SpellBookFrame_OnHide() end

---@return nil
function SpellButton_OnLoad() end

---@param event any (type not inferred)
---@return nil
function SpellButton_OnEvent(event) end

---@return nil
function SpellButton_OnEnter() end

---@param elapsed any (type not inferred)
---@return nil
function SpellButton_OnUpdate(elapsed) end

---@param drag any (type not inferred)
---@return nil
function SpellButton_OnClick(drag) end

---@return nil
function SpellButton_UpdateSelection() end

---@return nil
function SpellButton_UpdateButton() end

---@return nil
function PrevPageButton_OnClick() end

---@return nil
function NextPageButton_OnClick() end

---@param id any (type not inferred)
---@return nil
function SpellBookSkillLineTab_OnClick(id) end

---@param id any (type not inferred)
---@return nil
function SpellBook_GetSpellID(id) end

---@return nil
function SpellBook_UpdatePageArrows() end

---@return any currentPage (type not inferred)
---@return any maxPages (type not inferred)
---@nodiscard
function SpellBook_GetCurrentPage() end