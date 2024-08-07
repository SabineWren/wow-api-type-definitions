---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#GameTooltip)
---@class GameTooltip: Frame
GameTooltip = {}

--[[
    GameTooltip:AddDoubleLine(textL, textR, rL, gL, bL, rR, gR, bR)
    GameTooltip:AddFontStrings(leftstring, rightstring) - Dynamically expands the size of a tooltip - New in 1.11.
    GameTooltip:AddLine
    GameTooltip:AppendText("text") - Append text to the end of the first line of the tooltip.
    GameTooltip:ClearLines
    GameTooltip:FadeOut
    GameTooltip:GetAnchorType() - Returns the current anchoring type.
    GameTooltip:IsOwned(frame) - Returns true if the tooltip is currently owned by the specified frame - Since 1.8.
    GameTooltip:NumLines() - Get the number of lines in the tooltip.
    GameTooltip:SetAction(slot) - Shows the tooltip for the specified action button.
    GameTooltip:SetAuctionCompareItem("type", index[, offset])
    GameTooltip:SetAuctionItem("type", index) - Shows the tooltip for the specified auction item.
    GameTooltip:SetAuctionSellItem
    GameTooltip:SetBagItem(bag, slot)
    GameTooltip:SetBuybackItem
    GameTooltip:SetCraftItem
    GameTooltip:SetCraftSpell
    GameTooltip:SetHyperlink(link) - Shows the tooltip for the specified hyperlink (usually item link).
    GameTooltip:SetInboxItem(index) - Shows the tooltip for the specified mail inbox item.
    GameTooltip:SetInventoryItem(unit, slot[, nameOnly])
    GameTooltip:SetLootItem
    GameTooltip:SetLootRollItem(id) - Shows the tooltip for the specified loot roll item.
    GameTooltip:SetMerchantCompareItem("slot"[, offset])
    GameTooltip:SetMerchantItem
    GameTooltip:SetMinimumWidth(width) - (Formerly SetMoneyWidth)
    GameTooltip:SetOwner
    GameTooltip:SetPadding
    GameTooltip:SetPetAction(slot) - Shows the tooltip for the specified pet action.
    GameTooltip:SetPlayerBuff(buffIndex) - Direct the tooltip to show information about a player's buff.
    GameTooltip:SetQuestItem
    GameTooltip:SetQuestLogItem
    GameTooltip:SetQuestLogRewardSpell
    GameTooltip:SetQuestRewardSpell
    GameTooltip:SetSendMailItem
    GameTooltip:SetShapeshift(slot) - Shows the tooltip for the specified shapeshift form.
    GameTooltip:SetSpell(spellId, spellbookTabNum) - Shows the tooltip for the specified spell.
    GameTooltip:SetTalent(tabIndex, talentIndex) - Shows the tooltip for the specified talent.
    GameTooltip:SetText("text", r, g, b, alphaValue, textWrap) - Set the text of the tooltip.
    GameTooltip:SetTrackingSpell
    GameTooltip:SetTradePlayerItem
    GameTooltip:SetTradeSkillItem
    GameTooltip:SetTradeTargetItem
    GameTooltip:SetTrainerService
    GameTooltip:SetUnit
    GameTooltip:SetUnitBuff("unitId", buffIndex[, raidFilter]) - Shows the tooltip for a unit's buff.
    GameTooltip:SetUnitDebuff("unitId", buffIndex[, raidFilter]) - Shows the tooltip for a unit's debuff.
]]
