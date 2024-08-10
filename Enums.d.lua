--- Using alias in case we want to refine it later.
---@alias ActionBarSlot integer

---@alias AnchorPoint
--- | "Center"
--- | "TopLeft"
--- | "Top"
--- | "TopRight"
--- | "Right"
--- | "BottomRight"
--- | "Bottom"
--- | "BottomLeft"
--- | "Left"

---@alias AuraFilter
--- | "HARMFUL"
--- | "HELPFUL"
--- | "PASSIVE"
---
--- | "HARMFUL|HELPFUL"
--- | "HARMFUL|PASSIVE"
---
--- | "HELPFUL|HARMFUL"
--- | "HELPFUL|PASSIVE"
---
--- | "PASSIVE|HARMFUL"
--- | "PASSIVE|HELPFUL"
---
--- | "HARMFUL|HELPFUL|PASSIVE"
--- | "HARMFUL|PASSIVE|HELPFUL"
--- | "HELPFUL|HARMFUL|PASSIVE"
--- | "HELPFUL|PASSIVE|HARMFUL"
--- | "PASSIVE|HELPFUL|HARMFUL"
--- | "PASSIVE|HARMFUL|HELPFUL"

--- [Open Documentation](https://wowwiki-archive.fandom.com/wiki/BagId)
--- Might not be safe to use a union type, so integer for now.
---@alias BagId integer

--- Add is most common, followed by Blend.
---@alias BlendMode
--- | "ADD" Additive blend.
--- | "ALPHAKEY" One-bit alpha.
--- | "BLEND" Normal painting on top of the background, obeying alpha channels if present in the image (uses alpha).
--- | "DISABLE" Opaque texture.
--- | "MOD" Modulating blend.

-- ENUMS ARE BUGGED UPSTREAM
-- https://github.com/LuaLS/lua-language-server/issues/2732
---@alias BookType
--- | `pet` See above comment; should be only `BOOKTYPE_PET`
--- | `spell` See above comment; should be only `BOOKTYPE_SPELL`
--- | `BOOKTYPE_PET`
--- | `BOOKTYPE_SPELL`

--- Couldn't find a source for this except a sketchy forum post.
--- In practice, I think 1.12 requires extra locale/OS files for non-Roman.
---@alias CharacterEncoding
--- | "CHINESE"
--- | "KOREAN"
--- | "JAPANESE"
--- | "ROMAN"

--- Taken from modern documentation, so might be incomplete or superfluous.
---@alias CombatMessage
--- | "ABSORB"
--- | "AURA_END"
--- | "AURA_END_HARMFUL"
--- | "AURA_START"
--- | "AURA_START_HARMFUL"
--- | "BLOCK"
--- | "COMBO_POINTS"
--- | "DAMAGE"
--- | "DAMAGE_CRIT"
--- | "DODGE"
--- | "ENERGY"
--- | "FACTION"
--- | "FOCUS"
--- | "HEAL"
--- | "HEAL_CRIT"
--- | "HONOR_GAINED"
--- | "MANA"
--- | "MISS"
--- | "PARRY"
--- | "PERIODIC_HEAL"
--- | "RAGE"
--- | "RESIST"
--- | "SPELL_ABSORBED"
--- | "SPELL_ACTIVE"
--- | "SPELL_DAMAGE"
--- | "SPELL_RESISTED"

--- TODO Find list of 1.12.1 creature families
--- ex. Bat, Bear, Cat
---@alias CreatureFamily string

--- TODO Find list of 1.12.1 creature types
--- ex. Beast, Dragonkin, Humanoid
---@alias CreatureType string

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Layer)
--- Orders each LayeredRegion within a Frame, affecting how they overlap. Ordered back to front.
--- - When one frame is in front of another (according to its Frame Strata), all of its LayeredRegions will also be in front -- in otherwords, layers are part of each frame.
--- - Setting Frame:EnableMouse() causes HIGHLIGHT to show/hide as the cursor hovers the Frame.
--- - Translucent overlapping textures display different results depending on their relative ordering. For consistent results, use a blend mode of ADD or MOD on both textures.
---@alias DrawLayer
--- | "BACKGROUND"
--- | "BORDER"
--- | "ARTWORK"
--- | "OVERLAY"
--- | "HIGHLIGHT"

---@alias Gender
--- | 1 unknown
--- | 2 male
--- | 3 female

--- Regular inventory items 0-23
--- 40-67 are the 28 bank slots
--- Then come 7 bank slots
---@alias InventorySlot
--- | 0 = ammo
--- | 1 = head
--- | 2 = neck
--- | 3 = shoulder
--- | 4 = shirt
--- | 5 = chest
--- | 6 = belt
--- | 7 = legs
--- | 8 = feet
--- | 9 = wrist
--- | 10 = gloves
--- | 11 = finger 1
--- | 12 = finger 2
--- | 13 = trinket 1
--- | 14 = trinket 2
--- | 15 = back
--- | 16 = main hand
--- | 17 = off hand
--- | 18 = ranged
--- | 19 = tabard
--- | 20 = first bag (the rightmost one)
--- | 21 = second bag
--- | 22 = third bag
--- | 23 = fourth bag (the leftmost one)
--- | 40
--- | 41
--- | 42
--- | 43
--- | 44
--- | 45
--- | 46
--- | 47
--- | 48
--- | 49
--- | 50
--- | 51
--- | 52
--- | 53
--- | 54
--- | 55
--- | 56
--- | 57
--- | 58
--- | 59
--- | 60
--- | 61
--- | 62
--- | 63
--- | 64
--- | 65
--- | 66
--- | 67
--- | 68 = 1st bank bag
--- | 69 = 2nd bank bag
--- | 70 = 3rd bank bag
--- | 71 = 4th bank bag
--- | 72 = 5th bank bag
--- | 73 = 6th bank bag
--- | 74 = 7th bank bag

---[Open Documentation](https://wowpedia.fandom.com/wiki/InventorySlotId)
---@alias InvSlotName string -- TODO

--[[
-- GlobalString names for item slots
AMMOSLOT
HEADSLOT
NECKSLOT
SHOULDERSLOT
SHIRTSLOT
CHESTSLOT
WAISTSLOT
LEGSSLOT
FEETSLOT
WRISTSLOT
HANDSSLOT
FINGER0SLOT
FINGER1SLOT
TRINKET0SLOT
TRINKET1SLOT
BACKSLOT
MAINHANDSLOT
SECONDARYHANDSLOT
RANGEDSLOT
TABARDSLOT
]]

---@alias MouseButton
--- | "LeftButton"
--- | "RightButton"
--- | "MiddleButton"
--- | "Button4"
--- | "Button5"

---@alias MouseClick
--- | "AnyUp" Responds to the up action of any mouse button.
--- | "AnyDown" Responds to the down action of any mouse button.
--- | "LeftButtonUp"
--- | "LeftButtonDown"
--- | "RightButtonUp"
--- | "RightButtonDown"
--- | "MiddleButtonUp"
--- | "MiddleButtonDown"
--- | "Button4Up"
--- | "Button4Down"
--- | "Button5Up"
--- | "Button5Down"

--- [Open Documentation](https://wowpedia.fandom.com/wiki/Frame_Strata)
--- Affects how frames overlap. Ordered back to front.
---@alias FrameStrata
--- | "WORLD" Reserved for the world frame and cannot be assigned.
--- | "BACKGROUND"
--- | "LOW"
--- | "MEDIUM"
--- | "HIGH"
--- | "DIALOG"
--- | "FULLSCREEN"
--- | "FULLSCREEN_DIALOG"
--- | "TOOLTIP"

---@alias FrameType
--- | "Button"
--- | "CheckButton"
--- | "ColorSelect"
--- | "DressUpModel"
--- | "EditBox"
--- | "Frame"
--- | "GameTooltip"
--- | "MessageFrame"
--- | "Model"
--- | "PlayerModel"
--- | "ScrollFrame"
--- | "SimpleHTML"
--- | "Slider"
--- | "StatusBar"
--- | "TabardModel"

---@alias MessageType
--- | "BATTLEGROUND"
--- | "GUILD"
--- | "PARTY"
--- | "RAID"
--- | "WHISPER"

---@alias PowerType
--- | 0 Mana
--- | 1 Rage
--- | 2 Focus (hunter pets)
--- | 3 Energy
--- | 4 Happiness

--- 1-20 on Vanilla 1.12.1. Turtle plans to increase it to at least 25.
---@alias QuestIndex 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25

---@alias RaidIndex 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40

---@alias RaidMark
--- | 1 Star
--- | 2 Circle
--- | 3 Diamond
--- | 4 Triangle
--- | 5 Moon
--- | 6 Square
--- | 7 Cross
--- | 8 Skull

---@alias Reputation
--- | 1 Hated
--- | 2 Hostile
--- | 3 Unfriendly
--- | 4 Neutral
--- | 5 Friendly
--- | 6 Honored
--- | 7 Revered
--- | 8 Exalted

---@alias Resistance
--- | 0 Physical (Armor rating)
--- | 1 Holy
--- | 2 Fire
--- | 3 Nature
--- | 4 Frost
--- | 5 Shadow
--- | 6 Arcane

---@alias ScriptTypeFrame
--- | "OnEvent" TODO args
--- | "OnUpdate" TODO args
--- These are from a modern API doc, so might be wrong arguments.
--- | "OnEnter" (self, motion) - Invoked when the mouse cursor enters the frame's interactive area.
--- | "OnHide" (self) - Invoked when the frame's visbility changes to hidden.
--- | "OnLeave" (self, motion) - Invoked when the mouse cursor leaves the frame's interactive area.
--- | "OnMouseDown" (self, button) - Invoked when a mouse button is pressed while the cursor is over the frame.
--- | "OnMouseUp" (self, button) - Invoked when the mouse button is released following a mouse down action in the frame.
--- | "OnMouseWheel" (self, delta) - Invoked when the frame receives a mouse wheel scrolling action.
--- | "OnShow" (self) - Invoked when the frame becomes visible.

---@alias StatIndex
--- | 1 Strength
--- | 2 Agility
--- | 3 Stamina
--- | 4 Intellect
--- | 5 Spirit

--- [Open Documentation](https://wowpedia.fandom.com/wiki/UnitId?type=revision&diff=6512501&oldid=364069)
---@alias UnitId
--- Base Values
--- | "mouseover" The unit which the mouse is currently (or was most recently) hovering over.
-- | "none" TODO: wiki doesn't make it clear if 1.12.1 supports "none"
--- | "npc" The NPC with which the player is currently interacting.
--- Nth member of party, excluding current player
--- | "party1"
--- | "party2"
--- | "party3"
--- | "party4"
--- Pet of Nth member of party, excluding current player
--- | "partypet1"
--- | "partypet2"
--- | "partypet3"
--- | "partypet4"
--- | "pet" Current player's pet.
--- | "player" Current Player
--- Raid member (1-40)
--- | "raid1"
--- | "raid2"
--- | "raid3"
--- | "raid4"
--- | "raid5"
--- | "raid6"
--- | "raid7"
--- | "raid8"
--- | "raid9"
--- | "raid10"
--- | "raid11"
--- | "raid12"
--- | "raid13"
--- | "raid14"
--- | "raid15"
--- | "raid16"
--- | "raid17"
--- | "raid18"
--- | "raid19"
--- | "raid20"
--- | "raid21"
--- | "raid22"
--- | "raid23"
--- | "raid24"
--- | "raid25"
--- | "raid26"
--- | "raid27"
--- | "raid28"
--- | "raid29"
--- | "raid30"
--- | "raid31"
--- | "raid32"
--- | "raid33"
--- | "raid34"
--- | "raid35"
--- | "raid36"
--- | "raid37"
--- | "raid38"
--- | "raid39"
--- | "raid40"
--- Pet of raid member (1-40)
--- | "raidpet1"
--- | "raidpet2"
--- | "raidpet3"
--- | "raidpet4"
--- | "raidpet5"
--- | "raidpet6"
--- | "raidpet7"
--- | "raidpet8"
--- | "raidpet9"
--- | "raidpet10"
--- | "raidpet11"
--- | "raidpet12"
--- | "raidpet13"
--- | "raidpet14"
--- | "raidpet15"
--- | "raidpet16"
--- | "raidpet17"
--- | "raidpet18"
--- | "raidpet19"
--- | "raidpet20"
--- | "raidpet21"
--- | "raidpet22"
--- | "raidpet23"
--- | "raidpet24"
--- | "raidpet25"
--- | "raidpet26"
--- | "raidpet27"
--- | "raidpet28"
--- | "raidpet29"
--- | "raidpet30"
--- | "raidpet31"
--- | "raidpet32"
--- | "raidpet33"
--- | "raidpet34"
--- | "raidpet35"
--- | "raidpet36"
--- | "raidpet37"
--- | "raidpet38"
--- | "raidpet39"
--- | "raidpet40"
--- | "target" The currently targeted unit. Not clear from wiki if macros can change this value.

---@alias ZonePvpType
--- | nil equivalent to "contested"
--- | "friendly" Zone controlled by faction the player belongs to.
--- | "contested"
--- | "hostile" Zone controlled by opposing faction.
--- | "sanctuary" (TBC onward?) Zone does not allow pvp combat.
