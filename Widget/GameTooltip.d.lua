---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#GameTooltip)
--- The tooltip automatically resizes itself when its Show() method is called.
---@class GameTooltip: Frame
GameTooltip = {}

--- Add both textLeft and textRight to a tooltip.
---@param textL string
---@param textR string
---@param lr number Left Red [0, 1]
---@param lg number Left Green [0, 1]
---@param lb number Left Blue [0, 1]
---@param rr number Right Red [0, 1]
---@param rg number Right Green [0, 1]
---@param rb number Right Blue [0, 1]
---@return nil
function GameTooltip:AddDoubleLine(textL, textR, lr, lg, lb, rr, rg, rb) end

--- Dynamically expands the size of a tooltip
--- - TODO this isn't well-documented on wikis.
function GameTooltip:AddFontStrings(leftstring, rightstring) end

--- - If the tooltip already has its maximum number of lines, this function silently fails.
--- - The tooltip resizes in its OnShow handler, so calling this function on an already-visible tooltip will cause the new line to appear outside of the tooltip's backdrop.
--- - If the r, g, b values are not specified, the line appears in the game's normal font color (gold).
--- - By default, the first line is a larger font (GameTooltipHeaderText) than subsequent lines (GameTooltipText).
---@param text string Text to add as a new line.
---@param r? number Red [0, 1]
---@param g? number Green [0, 1]
---@param b? number Blue [0, 1]
---@param isWrap? nil|1 Set to 1 to wrap text.
---@return nil
function GameTooltip:AddLine(text, r, g, b, isWrap) end

--- Append text to the end of the first line of the tooltip.
---@param text string
---@return nil
function GameTooltip:AppendText(text) end

--- Hides text, but doesn't remove it; can still retrieve using FontString:GetText() on the GameTooltip's FontString children.
---@return nil
function GameTooltip:ClearLines() end

--- - After calling, GameTooltip will remain at full opacity for one second, then fade out over another second.
--- - Calling GameTooltip:Show() while the tooltip is fading out will abort the fade, and the tooltip will return to full opacity.
---@return nil
function GameTooltip:FadeOut() end

--- Returns the current anchoring type.
--- - TODO does this mean UIObject:ObjectType of the anchor frame?
function GameTooltip:GetAnchorType() end

--- Owner means temporary anchor for tooltip.
---@param frame Frame
---@return boolean
---@nodiscard
function GameTooltip:IsOwned(frame) end

--- Get the number of lines in the tooltip.
---@return integer
---@nodiscard
function GameTooltip:NumLines() end

--- Set the tooltip for the specified action button.
--- - For accessing the pet bar or aura bar you need to use SetPetAction or SetShapeshift.
---@param slot integer
---@return nil
function GameTooltip:SetAction(slot) end

--- TODO Behaviour not documented.
---@param type any
---@param index integer
---@param offset? any
---@return nil
function GameTooltip:SetAuctionCompareItem(type, index, offset) end

--- Set the tooltip for the specified auction item.
---@param type any
---@param index integer
---@return nil
function GameTooltip:SetAuctionItem(type, index) end

--- Sets the GameTooltip to the item that is in the sell frame of the auction window.
---@return nil
function GameTooltip:SetAuctionSellItem() end

---@param bag BagId
---@param slot integer
---@return nil
function GameTooltip:SetBagItem(bag, slot) end

---@return nil
function GameTooltip:SetBuybackItem() end

---@return nil
function GameTooltip:SetCraftItem() end

---@return nil
function GameTooltip:SetCraftSpell() end

--- Set the tooltip for the specified hyperlink (usually item link).
---@return nil
function GameTooltip:SetHyperlink(link) end

--- Set the tooltip for the specified mail inbox item.
---@param index integer
---@return nil
function GameTooltip:SetInboxItem(index) end

---@param unit UnitId
---@param slot InventorySlotId
---@param isTerse? boolean Only show following: name, item level, equipment slot, item type, onUse/Proc, durability, race/class limitations.
---@return boolean hasItem Is there an item at the given slot?
---@return boolean hasCooldown unknown
---@return number repairCost
---@nodiscard
function GameTooltip:SetInventoryItem(unit, slot, isTerse) end

---@param lootIndex integer From 1 to GetNumLootItems().
---@return nil
function GameTooltip:SetLootItem(lootIndex) end

--- Set the tooltip for the specified loot roll item.
---@param id integer
---@return nil
function GameTooltip:SetLootRollItem(id) end

--- TODO not documented
---@param slot integer
---@param offset? integer
---@return nil
function GameTooltip:SetMerchantCompareItem(slot, offset) end

--- TODO not documented
---@return nil
function GameTooltip:SetMerchantItem() end

---@param width number
---@return nil
function GameTooltip:SetMinimumWidth(width) end

--- Anchors the tooltip to a temporary owner.
--- - Relative anchor point is the opposite point on the owning frame.
---@param frame Frame
---@param anchor FrameAnchor
---@param x? number
---@param y? number
---@return nil
function GameTooltip:SetOwner(frame, anchor, x, y) end

---@param right number Sets right padding. Intended to make room for a 'close' button.
---@return nil
function GameTooltip:SetPadding(right) end

--- Set the tooltip for the specified pet action.
---@param slot integer TODO we can probably use a union type.
---@return nil
function GameTooltip:SetPetAction(slot) end

--- Direct the tooltip to show information about a player's buff.
---@param buffIndex integer
---@return nil
function GameTooltip:SetPlayerBuff(buffIndex) end

---@return nil
function GameTooltip:SetQuestItem() end

--- TODO not documented on wiki
---@return nil
function GameTooltip:SetQuestLogItem() end

--- TODO not documented on wiki
---@return nil
function GameTooltip:SetQuestLogRewardSpell() end

--- TODO not documented on wiki
---@return nil
function GameTooltip:SetQuestRewardSpell() end

--- TODO not documented on wiki
---@return nil
function GameTooltip:SetSendMailItem() end

--- Set the tooltip for the specified shapeshift form.
---@param slot integer TODO can probably use a union. Is this 0-5 like GetBonusBarOffset?
---@return nil
function GameTooltip:SetShapeshift(slot) end

--- Set the tooltip for the specified spell.
---@param spellIndex integer
---@param spellbookTabNum integer
---@return nil
function GameTooltip:SetSpell(spellIndex, spellbookTabNum) end

--- Set the tooltip for the specified talent.
---@param tabIndex integer
---@param talentIndex integer
---@return nil
function GameTooltip:SetTalent(tabIndex, talentIndex) end

---@param text string The text to show.
---@param r? number Optional red color value for text [0, 1]
---@param g? number Optional green color value for text [0, 1]
---@param b? number Optional blue color value for text [0, 1]
---@param a? number Optional alpha value for the text, between 0 (transparent) and 1 (fully opaque).
---@param textWrap? boolean True if text should wrap; false if the tooltip must widen to fit it.
function GameTooltip:SetText(text, r, g, b, a, textWrap) end

--- TODO not documented on wiki
---@return nil
function GameTooltip:SetTrackingSpell() end

--- TODO not documented on wiki
---@return nil
function GameTooltip:SetTradePlayerItem() end

--- This method opens the tooltip window when you hover over objects in the tradeskill window.
---@param tradeItemIndex integer Index of the selected item in the recipe list.
---@param reagentIndex? integer Index of the selected reagent.
---@return nil
function GameTooltip:SetTradeSkillItem(tradeItemIndex, reagentIndex) end

--- TODO not documented on wiki
---@return nil
function GameTooltip:SetTradeTargetItem() end

--- TODO not documented on wiki
---@return nil
function GameTooltip:SetTrainerService() end

--- Set the tooltip for the given unit.
---@param unit UnitId
---@return nil
function GameTooltip:SetUnit(unit) end

--- Set the tooltip for a unit's buff.
---@param unit UnitId
---@param auraIndex integer
---@param auraFilter? AuraFilter
---@return nil
function GameTooltip:SetUnitBuff(unit, auraIndex, auraFilter) end

--- Set the tooltip for a unit's debuff.
---@param unit UnitId
---@param auraIndex integer
---@param auraFilter? AuraFilter
---@return nil
function GameTooltip:SetUnitDebuff(unit, auraIndex, auraFilter) end
