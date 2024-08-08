---@meta

---@alias EventBuff
--- Called when a buff or debuff is either applied to a unit or is removed from the player. (Further details to follow, study needed).
--- **Druid**: This event is also called when a Druid changes Form (or changes Prowl state when in Cat Form). **arg1** - **arg9** are all nil in these cases. These args are probably nil for other classes as well. Also, this event can be called multiple times per Form change.
--- | "PLAYER_AURAS_CHANGED"
---
--- Fired when the player changes his shape
--- | "UPDATE_SHAPESHIFT_FORMS"
