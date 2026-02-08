---@meta

MAX_TALENT_TABS = 5
MAX_NUM_TALENTS = 20
MAX_NUM_TALENT_TIERS = 8
NUM_TALENT_COLUMNS = 4
TALENT_BRANCH_ARRAY = {  }
TALENT_BUTTON_SIZE = 32
MAX_NUM_BRANCH_TEXTURES = 30
MAX_NUM_ARROW_TEXTURES = 30
INITIAL_TALENT_OFFSET_X = 35
INITIAL_TALENT_OFFSET_Y = 20
TALENT_BRANCH_TEXTURECOORDS = { up = { [1] = { 0.12890625, 0.25390625, 0, 0.484375 }, [-1] = { 0.12890625, 0.25390625, 0.515625, 1.0 } }, down = { [1] = { 0, 0.125, 0, 0.484375 }, [-1] = { 0, 0.125, 0.515625, 1.0 } }, left = { [1] = { 0.2578125, 0.3828125, 0, 0.5 }, [-1] = { 0.2578125, 0.3828125, 0.5, 1.0 } }, right = { [1] = { 0.2578125, 0.3828125, 0, 0.5 }, [-1] = { 0.2578125, 0.3828125, 0.5, 1.0 } }, topright = { [1] = { 0.515625, 0.640625, 0, 0.5 }, [-1] = { 0.515625, 0.640625, 0.5, 1.0 } }, topleft = { [1] = { 0.640625, 0.515625, 0, 0.5 }, [-1] = { 0.640625, 0.515625, 0.5, 1.0 } }, bottomright = { [1] = { 0.38671875, 0.51171875, 0, 0.5 }, [-1] = { 0.38671875, 0.51171875, 0.5, 1.0 } }, bottomleft = { [1] = { 0.51171875, 0.38671875, 0, 0.5 }, [-1] = { 0.51171875, 0.38671875, 0.5, 1.0 } }, tdown = { [1] = { 0.64453125, 0.76953125, 0, 0.5 }, [-1] = { 0.64453125, 0.76953125, 0.5, 1.0 } }, tup = { [1] = { 0.7734375, 0.8984375, 0, 0.5 }, [-1] = { 0.7734375, 0.8984375, 0.5, 1.0 } } }
TALENT_ARROW_TEXTURECOORDS = { top = { [1] = { 0, 0.5, 0, 0.5 }, [-1] = { 0, 0.5, 0.5, 1.0 } }, right = { [1] = { 1.0, 0.5, 0, 0.5 }, [-1] = { 1.0, 0.5, 0.5, 1.0 } }, left = { [1] = { 0.5, 1.0, 0, 0.5 }, [-1] = { 0.5, 1.0, 0.5, 1.0 } } }

---@return nil
function TalentFrame_OnLoad() end

---@return nil
function TalentFrame_OnShow() end

---@return nil
function TalentFrame_OnHide() end

---@return nil
function TalentFrame_OnEvent() end

---@return nil
function TalentFrameTalent_OnEvent() end

---@return nil
function TalentFrame_Update() end

---@param tier any (type not inferred)
---@param column any (type not inferred)
---@param texCoords any (type not inferred)
---@param xOffset any (type not inferred)
---@param yOffset any (type not inferred)
---@return nil
function TalentFrame_SetArrowTexture(tier, column, texCoords, xOffset, yOffset) end

---@param tier any (type not inferred)
---@param column any (type not inferred)
---@param texCoords any (type not inferred)
---@param xOffset any (type not inferred)
---@param yOffset any (type not inferred)
---@return nil
function TalentFrame_SetBranchTexture(tier, column, texCoords, xOffset, yOffset) end

---@return nil
function TalentFrame_GetArrowTexture() end

---@return nil
function TalentFrame_GetBranchTexture() end

---@return nil
function TalentFrame_ResetArrowTextureCount() end

---@return nil
function TalentFrame_ResetBranchTextureCount() end

---@return any TalentFrame.arrowIndex (type not inferred)
---@nodiscard
function TalentFrame_GetArrowTextureCount() end

---@return any TalentFrame.textureIndex (type not inferred)
---@nodiscard
function TalentFrame_GetBranchTextureCount() end

---@param ... any (type not inferred)
---@return any requirementsMet (type not inferred)
---@nodiscard
function TalentFrame_SetPrereqs(...) end

---@param buttonTier any (type not inferred)
---@param buttonColumn any (type not inferred)
---@param tier any (type not inferred)
---@param column any (type not inferred)
---@param requirementsMet any (type not inferred)
---@return nil
function TalentFrame_DrawLines(buttonTier, buttonColumn, tier, column, requirementsMet) end

---@return nil
function TalentFrameTalent_OnClick() end

---@return nil
function TalentFrameTab_OnClick() end

---@return nil
function TalentFrame_UpdateTalentPoints() end

---@param button any (type not inferred)
---@param tier any (type not inferred)
---@param column any (type not inferred)
---@return nil
function SetTalentButtonLocation(button, tier, column) end

---@return nil
function TalentFrame_ResetBranches() end

---@return nil
function ToggleTalentFrame() end