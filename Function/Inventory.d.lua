---@meta

---[Open Documentation](https://wowpedia.fandom.com/wiki/InventorySlotId)
---@alias InvSlotName string -- TODO

--[[
-- Regular inventory items
0 = ammo
1 = head
2 = neck
3 = shoulder
4 = shirt
5 = chest
6 = belt
7 = legs
8 = feet
9 = wrist
10 = gloves
11 = finger 1
12 = finger 2
13 = trinket 1
14 = trinket 2
15 = back
16 = main hand
17 = off hand
18 = ranged
19 = tabard
20 = first bag (the rightmost one)
21 = second bag
22 = third bag
23 = fourth bag (the leftmost one)

-- When bank frame is open
40 to 67 = the 28 bank slots
68 = first bank bag
69 = second bank bag
70 = third bank bag
71 = fourth bank bag
72 = fifth bank bag
73 = sixth bank bag
74 = seventh bank slot

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

--- Get number of items stored in a container.
--- - Returns 1 for normal items.
--- - Returns 1 for empty slots (including empty ammo slots).
--- - Returns the number of the item in the specified slot otherwise.
--- - Therefore, to disambiguate 0 ammo from 1 ammo, you need to check the texture:
---```
--- local ammoSlot = GetInventorySlotInfo("AmmoSlot")
--- local ammoCount = GetInventoryItemCount("player", ammoSlot)
--- if ((ammoCount == 1) and (not GetInventoryItemTexture("player", ammoSlot))) then
---    ammoCount = 0
--- end
---```
---@param unit UnitId
---@param invSlot number
---@return number
function GetInventoryItemCount(unit, invSlot) end

---@param slotName InvSlotName
---@return number invSlot
---@return string textureName
function GetInventorySlotInfo(slotName) end
