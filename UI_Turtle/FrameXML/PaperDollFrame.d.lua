---@meta

NUM_RESISTANCE_TYPES = 5
NUM_STATS = 5
NUM_SHOPPING_TOOLTIPS = 2
ATTACK_POWER_MAGIC_NUMBER = 14

---@return nil
function PaperDollFrame_OnLoad() end

---@param button any (type not inferred)
---@return nil
function CharacterModelFrame_OnMouseUp(button) end

---@param event any (type not inferred)
---@param unit any (type not inferred)
---@return nil
function PaperDollFrame_OnEvent(event, unit) end

---@return nil
function PaperDollItemSlotButton_OnLoad() end

---@return nil
function PaperDollFrame_SetLevel() end

---@return nil
function PaperDollFrame_SetGuild() end

---@return nil
function PaperDollFrame_SetStats() end

---@return nil
function PaperDollFrame_SetResistances() end

---@param unit any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function PaperDollFrame_SetArmor(unit, prefix) end

---@param unit any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function PaperDollFrame_SetDefense(unit, prefix) end

---@param unit any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function PaperDollFrame_SetDamage(unit, prefix) end

---@param unit any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function PaperDollFrame_SetAttackPower(unit, prefix) end

---@param unit any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function PaperDollFrame_SetAttackBothHands(unit, prefix) end

---@param unit any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function PaperDollFrame_SetRangedAttack(unit, prefix) end

---@param unit any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function PaperDollFrame_SetRangedDamage(unit, prefix) end

---@param unit any (type not inferred)
---@param prefix any (type not inferred)
---@return nil
function PaperDollFrame_SetRangedAttackPower(unit, prefix) end

---@return nil
function PaperDollFrame_OnShow() end

---@return nil
function PaperDollFrame_OnHide() end

---@param event any (type not inferred)
---@return nil
function PaperDollItemSlotButton_OnEvent(event) end

---@param button any (type not inferred)
---@param ignoreModifiers any (type not inferred)
---@return nil
function PaperDollItemSlotButton_OnClick(button, ignoreModifiers) end

---@param cooldownOnly any (type not inferred)
---@return nil
function PaperDollItemSlotButton_Update(cooldownOnly) end

---@return nil
function PaperDollItemSlotButton_UpdateLock() end

---@return nil
function PaperDollItemSlotButton_OnEnter() end

---@param elapsed any (type not inferred)
---@return nil
function PaperDollItemSlotButton_OnUpdate(elapsed) end

---@param unit any (type not inferred)
---@param stat any (type not inferred)
---@return nil
function PaperDollStatTooltip(unit, stat) end

---@param name any (type not inferred)
---@param base any (type not inferred)
---@param posBuff any (type not inferred)
---@param negBuff any (type not inferred)
---@param frame any (type not inferred)
---@param textString any (type not inferred)
---@return nil
function PaperDollFormatStat(name, base, posBuff, negBuff, frame, textString) end

---@return nil
function CharacterDamageFrame_OnEnter() end

---@return nil
function CharacterRangedDamageFrame_OnEnter() end