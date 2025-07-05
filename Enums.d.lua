--- Using alias in case we want to refine it later.
---@alias ActionBarSlot integer

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

---@alias BankBagId
--- | 5 (while bank open) bank bag 1 (left to right)
--- | 6 (while bank open) bank bag 2 (left to right)
--- | 7 (while bank open) bank bag 3 (left to right)
--- | 8 (while bank open) bank bag 4 (left to right)
--- | 9 (while bank open) bank bag 5 (left to right)
--- | 10 (while bank open) bank bag 6 (left to right)

--- [Open Documentation](https://wowwiki-archive.fandom.com/wiki/BagId?oldid=364100)
--- Subset of BagId that maps to InventorySlotId
---@alias BagIdStrict
--- | 1 bag 1 (from right)
--- | 2 bag 2 (from right)
--- | 3 bag 3 (from right)
--- | 4 bag 4 (from right)
--- | BankBagId

--- [Open Documentation](https://wowwiki-archive.fandom.com/wiki/BagId?oldid=364100)
--- Usually only need 0 for backpack and 1-4 for player bags.
---@alias BagId
--- | -2 keyRing
--- | -1 (while bank open) bank content
--- | 0 backpack
--- | BagIdStrict

---@alias BindingGroup
--- | 1 Account Binding
--- | 2 Character Binding

--- Add is most common, followed by Blend.
--- Button highlight textures seem to ignore these options.
--- TODO these need more testing.
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

---@alias CharacterClass
--- | "DRUID"
--- | "HUNTER"
--- | "MAGE"
--- | "PALADIN"
--- | "PRIEST"
--- | "ROGUE"
--- | "SHAMAN"
--- | "WARLOCK"
--- | "WARRIOR"

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

---@alias FoodTypes
--- | "Bread"
--- | "Cheese"
--- | "Fish"
--- | "Fruit"
--- | "Fungus"
--- | "Meat"

---@alias FrameAnchor
--- | "ANCHOR_TOPRIGHT" SetPoint("BOTTOMRIGHT",object,"TOPRIGHT")
--- | "ANCHOR_RIGHT" SetPoint("BOTTOMLEFT",object,"TOPRIGHT")
--- | "ANCHOR_BOTTOMRIGHT" SetPoint("TOPLEFT",object,"BOTTOMRIGHT")
--- | "ANCHOR_TOPLEFT" SetPoint("BOTTOMLEFT",object,"TOPLEFT")
--- | "ANCHOR_LEFT" SetPoint("BOTTOMRIGHT",object,"TOPLEFT")
--- | "ANCHOR_BOTTOMLEFT" SetPoint("TOPRIGHT",object,"BOTTOMLEFT")
--- | "ANCHOR_CURSOR"
--- | "ANCHOR_PRESERVE"
--- | "ANCHOR_NONE"

--- [Open Documentation]](https://wowpedia.fandom.com/wiki/API_ScriptRegionResizing_SetPoint)
---@alias FramePoint
--- | "Center"
--- | "TopLeft"
--- | "Top"
--- | "TopRight"
--- | "Right"
--- | "BottomRight"
--- | "Bottom"
--- | "BottomLeft"
--- | "Left"

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

---@alias Gender
--- | 1 unknown
--- | 2 male
--- | 3 female

---@alias InventorySlotId_Bag
--- | 20 = first bag (the rightmost one, excluding backpack)
--- | 21 = second bag
--- | 22 = third bag
--- | 23 = fourth bag (the leftmost one)

---@alias InventorySlotId_BankBag
--- | 68 = 1st bank bag
--- | 69 = 2nd bank bag
--- | 70 = 3rd bank bag
--- | 71 = 4th bank bag
--- | 72 = 5th bank bag
--- | 73 = 6th bank bag

--- [Open Documentation](https://wowwiki-archive.fandom.com/wiki/InventorySlotId?oldid=204254)
--- - Regular inventory items 0-23
--- - 40-67 are the 28 bank slots
--- - Then come 7 bank slots
---@alias InventorySlotId
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
--- | InventorySlotId_Bag
--- | 40 = bank slot 1
--- | 41 = bank slot 2
--- | 42 = bank slot 3
--- | 43 = bank slot 4
--- | 44 = bank slot 5
--- | 45 = bank slot 6
--- | 46 = bank slot 7
--- | 47 = bank slot 8
--- | 48 = bank slot 9
--- | 49 = bank slot 10
--- | 50 = bank slot 11
--- | 51 = bank slot 12
--- | 52 = bank slot 13
--- | 53 = bank slot 14
--- | 54 = bank slot 15
--- | 55 = bank slot 16
--- | 56 = bank slot 17
--- | 57 = bank slot 18
--- | 58 = bank slot 19
--- | 59 = bank slot 20
--- | 60 = bank slot 21
--- | 61 = bank slot 22
--- | 62 = bank slot 23
--- | 63 = bank slot 24
--- | 64 = bank slot 25
--- | 65 = bank slot 26
--- | 66 = bank slot 27
--- | 67 = bank slot 28
--- | InventorySlotId_BankBag

---[Open Documentation](https://wowwiki-archive.fandom.com/wiki/InventorySlotName?oldid=204252)
---@alias InvSlotName
--- | "HeadSlot"
--- | "NeckSlot"
--- | "ShoulderSlot"
--- | "BackSlot"
--- | "ChestSlot"
--- | "ShirtSlot"
--- | "TabardSlot"
--- | "WristSlot"
--- | "HandsSlot"
--- | "WaistSlot"
--- | "LegsSlot"
--- | "FeetSlot"
--- | "Finger0Slot"
--- | "Finger1Slot"
--- | "Trinket0Slot"
--- | "Trinket1Slot"
--- | "MainHandSlot"
--- | "SecondaryHandSlot"
--- | "RangedSlot"
--- | "AmmoSlot"
--- | "Bag0Slot"
--- | "Bag1Slot"
--- | "Bag2Slot"
--- | "Bag3Slot"

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

--- https://wowpedia.fandom.com/wiki/ItemLink?oldid=379200
--- item:itemId:enchantId:suffixId:uniqueId
--- Full list of [EnchantIds](https://wowpedia.fandom.com/wiki/EnchantId).
--- Full list of [SuffixIds](https://wowpedia.fandom.com/wiki/SuffixId).
--- local found, _, itemId, enchantId, suffixId, uniqueId =
---    string.find(itemString, "^item:(%d+):(%d+):(%d+):(%d+)")
--[[
"item:6948:0:0:0"
    The first number is the ItemID for a Hearthstone. The other 3 values are 0, which tells the client it has no enchants, extra stats, and wasn't made by anyone.

"item:18832:2564:0:0"
    The first number is the ItemID for Brutality Blade. The second number (enchantId) in this case denotes that it is enchanted with +15 agility.

"item:10242:0:614:0"
    The first number is the ItemID for Heavy Lamellar Gauntlets. The third number (suffixId) adds to this item's name " of the Monkey" and adds +11 Agility and +11 Stamina.

"item:4388:0:0:210677200"
    The first number is the ItemID for Discombobulator Ray. The fourth number adds the information that this particular item only has 4 uses left and was made by Kirov.

Note: The fourth number does not always stand for who made an item; it usually appears on quest items too, and sometimes on dropped items. It's possible that the value is a reference to a database entry which can hold extra data, such as who made an item, which quest it came from, when the quest was delivered, who sold the item on the Auction House, etc. GMs would then be able to track an item should a petition about one be made.
]]
---@alias ItemLink string

---@alias ItemQuality
--- | 0 - Poor
--- | 1 - Common
--- | 2 - Uncommon
--- | 3 - Rare
--- | 4 - Epic
--- | 5 - Legendary

---@alias LootMethod
--- | "freeforall"
--- | "roundrobin"
--- | "group"
--- | "needbeforegreed"
--- | "master"

---@alias MacroIndexAccount 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18
---@alias MacroIndexCharacter 19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36
---@alias MacroIndex MacroIndexAccount|MacroIndexCharacter

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

---@alias MessageType
--- | "BATTLEGROUND"
--- | "CHANNEL"
--- | "GUILD"
--- | "PARTY"
--- | "RAID"
--- | "SAY"
--- | "WHISPER"

---@alias PetHappiness
--- | 1 Unhappy
--- | 2 Content
--- | 3 Happy

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
--- | "pettarget" Confirmed this works, but not on wiki.
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
