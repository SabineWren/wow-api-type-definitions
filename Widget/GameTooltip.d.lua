---@meta

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403#GameTooltip)
--- The tooltip automatically resizes itself when its Show() method is called.
---@class GameTooltip: Frame
GameTooltip = {}

--[[
function GameTooltip:AddDoubleLine(textL, textR, rL, gL, bL, rR, gR, bR) end

function GameTooltip:AddFontStrings(leftstring, rightstring) end--- Dynamically expands the size of a tooltip

function GameTooltip:AddLine

function GameTooltip:AppendText("text") end--- Append text to the end of the first line of the tooltip.

function GameTooltip:ClearLines

function GameTooltip:FadeOut

function GameTooltip:GetAnchorType() end--- Returns the current anchoring type.

function GameTooltip:IsOwned(frame) end--- Returns true if the tooltip is currently owned by the specified frame - Since 1.8.

function GameTooltip:NumLines() end--- Get the number of lines in the tooltip.

function GameTooltip:SetAction(slot) end--- Shows the tooltip for the specified action button.

function GameTooltip:SetAuctionCompareItem("type", index[, offset]) end

function GameTooltip:SetAuctionItem("type", index) end--- Shows the tooltip for the specified auction item.

function GameTooltip:SetAuctionSellItem

function GameTooltip:SetBagItem(bag, slot) end

function GameTooltip:SetBuybackItem

function GameTooltip:SetCraftItem

function GameTooltip:SetCraftSpell

function GameTooltip:SetHyperlink(link) end--- Shows the tooltip for the specified hyperlink (usually item link).

function GameTooltip:SetInboxItem(index) end--- Shows the tooltip for the specified mail inbox item.

function GameTooltip:SetInventoryItem(unit, slot[, nameOnly]) end

function GameTooltip:SetLootItem

function GameTooltip:SetLootRollItem(id) end--- Shows the tooltip for the specified loot roll item.

function GameTooltip:SetMerchantCompareItem("slot"[, offset]) end

function GameTooltip:SetMerchantItem

function GameTooltip:SetMinimumWidth(width) end--- (Formerly SetMoneyWidth)

function GameTooltip:SetOwner

function GameTooltip:SetPadding

function GameTooltip:SetPetAction(slot) end--- Shows the tooltip for the specified pet action.

function GameTooltip:SetPlayerBuff(buffIndex) end--- Direct the tooltip to show information about a player's buff.

function GameTooltip:SetQuestItem

function GameTooltip:SetQuestLogItem

function GameTooltip:SetQuestLogRewardSpell

function GameTooltip:SetQuestRewardSpell

function GameTooltip:SetSendMailItem

function GameTooltip:SetShapeshift(slot) end--- Shows the tooltip for the specified shapeshift form.

function GameTooltip:SetSpell(spellId, spellbookTabNum) end--- Shows the tooltip for the specified spell.

function GameTooltip:SetTalent(tabIndex, talentIndex) end--- Shows the tooltip for the specified talent.

--- Set the text of the tooltip.
---@param text string The text for the tooltip.
---@param r? number Optional red color value for text [0, 1]
---@param g? number Optional green color value for text [0, 1]
---@param b? number Optional blue color value for text [0, 1]
---@param a? number Optional alpha value for the text, between 0 (transparent) and 1 (fully opaque).
---@param textWrap? boolean True if text should wrap; false if the tooltip must widen to fit it.
function GameTooltip:SetText(text, r, g, b, a, textWrap) end

function GameTooltip:SetTrackingSpell

function GameTooltip:SetTradePlayerItem

function GameTooltip:SetTradeSkillItem

function GameTooltip:SetTradeTargetItem

function GameTooltip:SetTrainerService

function GameTooltip:SetUnit

function GameTooltip:SetUnitBuff("unitId", buffIndex[, raidFilter]) end--- Shows the tooltip for a unit's buff.

function GameTooltip:SetUnitDebuff("unitId", buffIndex[, raidFilter]) end--- Shows the tooltip for a unit's debuff.
]]
