---@meta

---@alias EventActionBar
--- Fired when the actionbar page changes, typically when you press the pageup or pagedown button.
--- arg1 MouseButton The mouse button used to click the button.
--- | "ACTIONBAR_PAGE_CHANGED"
---
--- Fired when the actionbar numbers appear, typically when you drag a spell to the actionbar.
--- arg1 MouseButton The mouse button used to drag the spell.
--- | "ACTIONBAR_SHOWGRID"
---
--- Fired when any actionbar slot's contents change.
--- arg1 the number of the slot that changed
--- | "ACTIONBAR_SLOT_CHANGED"
---
--- Fired when the cooldown for an actionbar or inventory slot starts or stops.
--- - Also fires when you log into a new area.
--- arg1 nil|MouseButton If the cooldown is starting, the mouse button used to click the button. nil when cooldown is stopping or you are logging into a new zone.
--- | "ACTIONBAR_UPDATE_COOLDOWN"
---
--- Fired when the state of anything on the actionbar changes. This includes cooldown and disabling.
--- arg1 nil|MouseButton The mouse button used to click the button.
--- | "ACTIONBAR_UPDATE_STATE"
---
--- Fired when something in the actionbar or your inventory becomes usable again (after eating or drinking a potion, for example).
--- | "ACTIONBAR_UPDATE_USABLE"
---
--- | "UPDATE_BONUS_ACTIONBAR"
