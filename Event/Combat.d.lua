---@meta

---@alias EventCombat
--- | EventDuel
--- | EventPlayerCombat
---
--- Fired when the player takes or avoids damage, receives heals, gains mana/energy/rage, etc.
--- - This event is used by Blizzard's floating combat text addon.
--- - TODO Incomplete - argument types may be wrong.
--- arg1 string Combat message type. Known values include "DAMAGE", "SPELL_DAMAGE", "DAMAGE_CRIT", "HEAL", "PERIODIC_HEAL", "HEAL_CRIT", "MISS", "DODGE", "PARRY", "BLOCK", "RESIST", "SPELL_RESISTED", "ABSORB", "SPELL_ABSORBED", "MANA", "ENERGY", "RAGE", "FOCUS", "SPELL_ACTIVE", "COMBO_POINTS", "AURA_START", "AURA_END", "AURA_START_HARMFUL", "AURA_END_HARMFUL", "HONOR_GAINED", and "FACTION".
--- arg2 string For damage, power gain and honor gains, this is the amount taken/gained. For heals, this is the healer name. For auras, the aura name. For block/resist/absorb messages where arg3 is not nil (indicating a partial block/resist/absorb) this is the amount taken. For faction gain, this is the faction name. For the SPELL_ACTIVE message, the name of the spell (abilities like Overpower and Riposte becoming active will trigger this message).
--- arg3 nil|number For heals, the amount healed. For block/resist/absorb messages, this is the amount blocked/resisted/absorbed, or nil if all damage was avoided. For faction gain, the amount of reputation gained.
--- | "COMBAT_TEXT_UPDATE"
---
--- Fired when a player engages auto-attack. Note that firing a gun or a spell, or getting aggro, does NOT trigger this event.
--- From a post by Dhrago on the WoW forums:
--- `PLAYER_ENTER_COMBAT` and `PLAYER_LEAVE_COMBAT` are for *MELEE* combat only. They fire when you initiate autoattack and when you turn it off. However, any spell or ability that does not turn on autoattack does not trigger it. Nor does it trigger when you get aggro.
--- You probably want [PLAYER_REGEN_ENABLED](http://wowwiki.wikia.com/wiki/Events_A-Z_(full_list)?direction=prev&amp;oldid=161492#PLAYER_REGEN_ENABLED) (happens when you lose aggro).
--- - Unrelated to PLAYER_LEAVE_COMBAT
--- | "PLAYER_ENTER_COMBAT"
---
--- This event is fired whenever the player's target is changed, including when the target is lost.
--- TODO Sources give 3 different arg1 descriptions:
--- - (wowpedia diff history) no-args
--- - (wowwiki-archive) arg1 string Up if you click the target directly, down if you press Escape to clear the target selection, LeftButton if you select the target using static frames in the UI, nil if the target moves out of range and is lost.
--- - (Shagu) arg1 number Holds the same value as GetTime() yields.
--- | "PLAYER_TARGET_CHANGED"
