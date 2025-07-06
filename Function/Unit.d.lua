---@meta

--- Instructs your character to assist the specified unit.
---@param unit UnitId
---@return nil
function AssistUnit(unit) end

--- Drops an item from the cursor onto a unit.
---@param unit UnitId
---@return nil
function DropItemOnUnit(unit) end

--- Follow an ally with the specified UnitID
---@param unit UnitId
---@return nil
function FollowUnit(unit) end

--- Challenge a unit to a duel.
---@param unit UnitId
---@return nil
function StartDuelUnit(unit) end

--- Determine if the unit is in combat or has aggro.
--- - Returns false if the unit being checked for aggro is out of range.
--- - Returns false if a unit is proximity-aggroed. It wont return true until it either attacks or is attacked.
--- - For hunters, returns true shortly after pet enters combat.
---@param unit UnitId
---@return nil|1
---@nodiscard
function UnitAffectingCombat(unit) end

--- Returns the armor statistics relevant to the specified unit.
---@param unit UnitId
---@return number base Base armor without buffs, armor kits or enchantments.
---@return number effective Effective/total armor after modifiers.
---@return number armor Armor after adding armor kits and enchantments but without buffs.
---@return number bonus Amount of armor increase due to positive buffs.
---@return number malus Armor reduction due to negative buffs (a negative number).
---@nodiscard
function UnitArmor(unit) end

--- Returns information about the unit's melee attacks.
---@param unit UnitId
---@return number mainBase The unit's base main hand attack power.
---@return number mainMod Any modifier to the unit's main hand attack power.
---@return number offBase The unit's base offhand attack power (equal to unarmed weapon skill if unit doesn't dual wield).
---@return number offMod Any modifier to the unit's offhand attack power.
---@nodiscard
function UnitAttackBothHands(unit) end

--- Returns the unit's melee attack power and modifiers.
---@param unit UnitId
---@return number base The unit's base attack power.
---@return number bonus The total effect of positive buffs to attack power.
---@return number malus The total effect of negative buffs to the attack power (a negative number).
---@nodiscard
function UnitAttackPower(unit) end

--- Returns the unit's melee attack speed for each hand.
---@param unit UnitId
---@return number mainSpeed The unit's base main hand attack speed (seconds).
---@return nil|number offSpeed The unit's offhand attack speed (seconds) - nil if the unit has no offhand weapon.
---@nodiscard
function UnitAttackSpeed(unit) end

--- Returns true if the first unit can assist the second, false otherwise.
---@param unit UnitId
---@param otherUnit UnitId
---@return 1|nil
---@nodiscard
function UnitCanAssist(unit, otherUnit) end

--- Returns true if the first unit can attack the second, false otherwise.
---@param unit UnitId
---@param otherUnit UnitId
---@return 1|nil
---@nodiscard
function UnitCanAttack(unit, otherUnit) end

--- Returns true if the first unit can cooperate with the second, false otherwise.
---@param unit UnitId
---@param otherUnit UnitId
---@return 1|nil
---@nodiscard
function UnitCanCooperate(unit, otherUnit) end

--- Returns the number of unspent talent points for the specified unit -- usually 0.
---@param unit UnitId
---@return integer
---@nodiscard
function UnitCharacterPoints(unit) end

--- Defaults to WARRIOR if unit has no class
---@param unit UnitId
---@return string classLocalized ex. "Mage", "Warrior", "Guerrier"
---@return CharacterClass classEnglish
---@nodiscard
function UnitClass(unit) end

--- Returns the classification of the specified unit (ex. "elite" or "worldboss").
---@param unit UnitId
---@return string
---@nodiscard
function UnitClassification(unit) end

--- Returns the type of creature of the specified unit (ex. "Crab").
--- - TODO this can probably return nil
---@param unit UnitId
---@return CreatureFamily
---@nodiscard
function UnitCreatureFamily(unit) end

--- Returns the classification type of creature of the specified unit (ex. "Beast").
---@param unit UnitId
---@return CreatureType
---@nodiscard
function UnitCreatureType(unit) end

--- Returns the damage statistics relevant to the specified unit.
---@param unit UnitId
---@return number lowDmg The unit's minimum melee damage.
---@return number hiDmg The unit's maximum melee damage.
---@return number offlowDmg The unit's minimum offhand melee damage.
---@return number offhiDmg The unit's maximum offhand melee damage.
---@return number bonus Positive physical Bonus (should be >= 0).
---@return number malus Negative physical Bonus (should be <= 0).
---@return number percentmod Percentage modifier (usually 1).
---@nodiscard
function UnitDamage(unit) end

--- Returns the base defense skill of the specified unit.
---@param unit UnitId
---@return number baseDefense The unit's defense without armor. Includes the warrior talent Anticipation.
---@return number armorDefense The defense gained from the unit's armor.
---@nodiscard
function UnitDefense(unit) end

--- Returns true if the specified unit exists, false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitExists(unit) end

--- Returns the faction group id and name of the specified unit.
---@param unit UnitId
---@return nil|"Alliance"|"Horde"|"Neutral" factionEnglish
---@return nil|string factionLocalized
---@nodiscard
function UnitFactionGroup(unit) end

--- Returns the current health, in points, of the specified unit.
---@param unit UnitId
---@return integer
---@nodiscard
function UnitHealth(unit) end

--- Returns the maximum health, in points, of the specified unit.
---@param unit UnitId
---@return integer
---@nodiscard
function UnitHealthMax(unit) end

--- Returns true if the specified unit is charmed, false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsCharmed(unit) end

--- Returns true if the unit is a civilian NPC.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsCivilian(unit) end

--- Returns 1 if the specified unit is connected or npc, nil if offline or not a valid unit.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsConnected(unit) end

--- Returns true if the specified unit is a corpse, false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsCorpse(unit) end

--- Returns true if the specified unit is dead, nil otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsDead(unit) end

--- Returns true if the specified unit is dead or a ghost, nil otherwise.
--- - Returns true while Feign Death active.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsDeadOrGhost(unit) end

--- Returns true if the specified units are enemies, false otherwise.
---@param unit UnitId
---@param otherUnit UnitId
---@return 1|nil
---@nodiscard
function UnitIsEnemy(unit, otherUnit) end

--- Returns true if the specified units are friends (PC of same faction or friendly NPC), false otherwise.
---@param unit UnitId
---@param otherUnit UnitId
---@return 1|nil
---@nodiscard
function UnitIsFriend(unit, otherUnit) end

--- Returns true if the specified unit is a ghost, false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsGhost(unit) end

--- Returns true if the specified unit is flagged for PVP, false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsPVP(unit) end

--- Returns true if the specified unit is flagged for free-for-all PVP, false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsPVPFreeForAll(unit) end

--- Returns true if the specified unit is a player character, false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsPlayer(unit) end

--- Returns true if the specified unit is a mob, more powerful than its nominal level, false otherwise (ex. "elite" mobs)
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsPlusMob(unit) end

--- Returns true if the specified unit is tapped, false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsTapped(unit) end

--- Returns true if the specified unit is tapped by the player himself, otherwise false.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsTappedByPlayer(unit) end

--- Returns true if the specified unit is trivial (Trivial means the unit is "grey" to the player. false otherwise.
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsTrivial(unit) end

--- Determine if two units are the same unit.
---@param unit UnitId
---@param otherUnit UnitId
---@return 1|nil
---@nodiscard
function UnitIsUnit(unit, otherUnit) end

---1 if visible, nil if not
---@param unit UnitId
---@return 1|nil
---@nodiscard
function UnitIsVisible(unit) end

--- Returns the level of a unit.
--- - Returns -1 if unknown or boss.
--- - When inebriated, the apparent level of hostile units is lowered by up to 5.
--- - When calling UnitLevel("player") on PLAYER_LEVEL_UP it might be incorrect; check the payload instead to be sure.
---@param unit UnitId
---@return integer
---@nodiscard
function UnitLevel(unit) end

--- Returns the current mana (or energy,rage,etc), in points, of the specified unit.
--- - TODO what if the target has no mana bar? Is it 0?
---@param unit UnitId
---@return integer
---@nodiscard
function UnitMana(unit) end

--- Returns the maximum mana (or energy,rage,etc), in points, of the specified unit.
--- - TODO what if the target has no mana bar? Is it 0?
---@param unit UnitId
---@return integer
---@nodiscard
function UnitManaMax(unit) end

--- Returns the name (and realm name) of a unit.
---@param unit UnitId
---@return nil|string name
---@return nil|string realm
---@nodiscard
function UnitName(unit) end

--- Returns 1 if unit is on a taxi.
---@param unit UnitId
---@return nil|1
---@nodiscard
function UnitOnTaxi(unit) end

--- Returns true if the specified unit is controlled by a player, false otherwise.
---@param unit UnitId
---@return nil|1
---@nodiscard
function UnitPlayerControlled(unit) end

--- Returns 1 if the specified unit/pet is a member of the player's party, nil otherwise (returns 1 for "player" and "pet").
---@param unit UnitId
---@return nil|1
---@nodiscard
function UnitPlayerOrPetInParty(unit) end

--- Returns 1 if the specified unit/pet is a member of the player's raid, nil otherwise (returns 1 for "player" and "pet").
---@param unit UnitId
---@return nil|1
---@nodiscard
function UnitPlayerOrPetInRaid(unit) end

--- Returns unit's name with PvP rank prefix (ex. "Corporal Allianceguy").
--- - nil if out of range
---@param unit UnitId
---@return nil|string
---@nodiscard
function UnitPVPName(unit) end

--- Get PvP rank information for requested unit.
--- - Starts at 5, not 1. Returns 0 if no rank.
---@param unit UnitId
---@return 0|5|6|7|8|9|10|11|12|13|14|15|16|17|18
---@nodiscard
function UnitPVPRank(unit) end

--- Returns a number corresponding to the power type (ex. mana, rage or energy) of the specified unit.
--- - TODO what if no power type? Can this return nil?
---@param unit UnitId
---@return PowerType
---@nodiscard
function UnitPowerType(unit) end

--- Returns the race name of the specified unit (ex. "Human" or "Troll").
--- - TODO can this return nil?
--- - "Undead" localized returns "Scourge" English
---@param unit UnitId
---@return string raceLocalized
---@return string raceEnglish
---@nodiscard
function UnitRace(unit) end

--- Returns the ranged attack number of the unit.
---@param unit UnitId
---@return number base 0 if no ranged weapon equipped.
---@return number modifier Total effect of all modifiers.
---@nodiscard
function UnitRangedAttack(unit) end

--- Returns the ranged attack power of the unit.
---@param unit UnitId
---@return number base The unit's base ranged attack power (seems to give a positive number even if no ranged weapon equipped).
---@return number bonus The total effect of positive buffs to ranged attack power..
---@return number malus The total effect of negative buffs to the ranged attack power (a negative number).
---@nodiscard
function UnitRangedAttackPower(unit) end

--- Returns the ranged attack speed and damage of the unit.
---@param unit UnitId
---@return number speed The unit's ranged weapon speed (0 if no ranged weapon equipped).
---@return number lowDmg The unit's minimum ranged damage.
---@return number hiDmg The unit's maximum ranged damage.
---@return number bonus The unit's positive Bonus on ranged attacks (includes Spelldamage increases).
---@return number malus The unit's negative Bonus on ranged attacks.
---@return number percent percentage modifier (usually 1).
---@nodiscard
function UnitRangedDamage(unit) end

--- Returns a number corresponding to the reaction (aggressive, neutral or friendly) of the first unit towards the second unit.
--- - Values other than 2, 4 or 5 are only returned when the first unit is an NPC in a reputation faction and the second is you or your pet.
---@param unit UnitId
---@param otherUnit UnitId
---@return Reputation reaction The level of the reaction of unit towards otherUnit - this is a number from 1 to 8.
---@nodiscard
function UnitReaction(unit, otherUnit) end

--- Returns the resistance statistics relevant to the specified unit and resistance type.
---@param unit UnitId
---@param index Resistance
---@return number base Base value excluding gear worn.
---@return number total
---@return number bonus Amount from positive gear and buffs.
---@return number malus Amount from negative gear and debuffs.
---@nodiscard
function UnitResistance(unit, index) end

--- Returns a code indicating the gender of the specified unit, if known. (1=unknown, 2=male, 3=female) ← changed in 1.11!
---@param unit UnitId
---@return Gender
---@nodiscard
function UnitSex(unit) end

--- Returns the statistics relevant to the specified unit and basic attribute (ex. strength or intellect).
---@param unit UnitId
---@param stat StatIndex
---@return number base The unit's base stat.
---@return number total The unit's current stat.
---@return number bonus Any positive buffs applied to the stat.
---@return number malus Any negative buffs applied to the stat.
---@nodiscard
function UnitStat(unit, stat) end

--- Returns the number of experience points the specified unit has in their current level.
--- - TODO does this work on pets?
---@param unit "pet"|"player"-- &UnitId
---@return integer
---@nodiscard
function UnitXP(unit) end

--- Returns the number of experience points the specified unit needs to reach their next level.
--- - TODO does this work on pets?
---@param unit "pet"|"player"-- &UnitId
---@return integer
---@nodiscard
function UnitXPMax(unit) end

--- Paint a Texture object with the specified unit's portrait.
---@param texture Texture
---@param unit UnitId
---@return nil
function SetPortraitTexture(texture, unit) end

--- Paint a Texture object with the given texture path.
---@param texture Texture
---@param path string
---@return nil
function SetPortraitToTexture(texture, path) end
