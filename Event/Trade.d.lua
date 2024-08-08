---@meta

---@alias EventTrade
--- Fired when the player trades money
--- | "PLAYER_TRADE_MONEY"
---
--- Fired when the status of the player and target accept buttons has changed
--- arg1 0|1 Player has agreed to the trade (1) or not (0)
--- arg2 0|1 Target has agreed to the trade (1) or not (0)
--- | "TRADE_ACCEPT_UPDATE"
---
--- | "TRADE_CLOSED"
---
--- Fired when the trade window's money value is changed.
--- | "TRADE_MONEY_CHANGED"
---
--- Fired when the specified player itme will be changed by the trade.
--- arg1 string Item
--- | "TRADE_PLAYER_ITEM_CHANGED"
---
--- Fired when the the player must confirm an enchantment replacement in the trade window.
--- arg1 string enchantment
--- arg2 string item name
--- | "TRADE_REPLACE_ENCHANT"
---
--- Fired when another player wishes to trade with you.
--- arg1 string Player name
--- | "TRADE_REQUEST"
---
--- Fired when a trade attempt is cancelled.
--- | "TRADE_REQUEST_CANCEL"
---
--- Fired when the Trade window appears after a trade request has been accepted or auto-accepted
--- | "TRADE_SHOW"
---
--- Fired when a trade skill window is closed.
--- | "TRADE_SKILL_CLOSE"
---
--- Fired when a trade skill window is opened.
--- | "TRADE_SKILL_SHOW"
---
--- Fired immediately after TRADE_SKILL_SHOW, after something is created via tradeskill, or anytime the tradeskill window is updated (filtered, tree folded/unfolded, etc.)
--- | "TRADE_SKILL_UPDATE"
---
--- Fired when a specific item will be altered during the trade.
--- arg1 string Item
--- | "TRADE_TARGET_ITEM_CHANGED"
---
--- Fired when the trade window is changed.
--- | "TRADE_UPDATE"