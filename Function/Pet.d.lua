---@meta

function BuyStableSlot() end

--- Cast the corresponding pet skill.
---@param index integer
---@return nil
function CastPetAction(index) end

--- Check wether the player is close enough to the pet untrainer.
function CheckPetUntrainerDist() end

--- ?.
function ClickStablePet(index) end

--- Close the pet stables user interface.
function ClosePetStables() end

--- Confirm the request for unlearning pet abilities
function ConfirmPetUnlearn() end

--- Drops an item from the cursor onto a unit.
function DropItemOnUnit(unit) end

function GetNextStableSlotCost() end

--- Returns the number of pets in the stable.
function GetNumStablePets() end

--- Returns the number of stable slots you own.
function GetNumStableSlots() end

--- Returns cooldown information for the pet action at the specificed pet action bar slot.
---@param index integer
---@return number startTime The time when the cooldown started (as returned by GetTime()) or zero if no cooldown.
---@return number duration The number of seconds the cooldown will last, or zero if no cooldown.
---@return 0|1 enable Unknown
---@nodiscard
function GetPetActionCooldown(index) end

--- Returns information on the pet action at the specified pet action bar slot.
---@param index integer
---@return string name The name of the action (or its global ID if isToken is true).
---@return string subtext The subtext for the action's tooltip.
---@return string texture The name (or its global ID, if isToken is true) of the texture for the action.
---@return boolean isToken Indicates if the action is a reference to a global action, or not (guess -- Flickering 28 Dec 2004)
---@return boolean isActive Returns true if the ability is currently active.
---@return boolean isAutoCastAllowed Returns true if this ability can use autocast.
---@return boolean isAutoCastEnabled Returns true if autocast is currently enabled for this ability.
---@nodiscard
function GetPetActionInfo(index) end

--- Returns a value indicating if the player's pet's actions can be used at this time.
---@return boolean
---@nodiscard
function GetPetActionsUsable() end

--- Returns the pet's current xp, and total xp required for next level.
---@return integer current
---@return integer nextLevel
---@nodiscard
function GetPetExperience() end

--- Returns a list of the food types the player's pet can eat.
---@return FoodTypes[]
---@nodiscard
function GetPetFoodTypes() end

--- Returns the pet's happiness, damage percentage, and loyalty gain rate.
---@return PetHappiness happiness See [Happiness](lua://PetHappiness)
---@return number damagePercentage Damage modifier (unhappy = 75%, content = 100%, happy = 125%)
---@return number loyaltyRate The rate at which your pet gains loyalty (< 0 losing loyalty, > 0 gaining loyalty)
---@nodiscard
function GetPetHappiness() end

--- Returns the path to the texture to use as the icon for the player's pet.
---@return string texturePath
---@nodiscard
function GetPetIcon() end

--- Returns the name of the pet's current loyalty level.
--- - ex. "(Loyalty Level 6) Best Friend"
---@return string
---@nodiscard
function GetPetLoyalty() end

--- Returns in milliseconds about some timeout for the player's pet.
--- - Does nothing with hunter pets, even with Eyes of the Beast active.
--- - Does nothing with enslaved warlock pets.
--- - Later versions of WoW may have used this for mage water elementals.
--- - TODO TRY ORC GHOST WOLVES
---@return nil|number
---@nodiscard
function GetPetTimeRemaining() end

--- Returns the pet's current total and used training points.
---@return integer earned
---@return integer spent
---@nodiscard
function GetPetTrainingPoints() end

--- Returns stable slot index for currently selected pet, starting from the left.
--- TODO does this work with index 0 for current pet?
---@return -1|1|2|3|4 slotIndex -1 if no slot selected.
---@nodiscard
function GetSelectedStablePet() end

--- Returns a list of the food types a specific stabled pet can eat.
--- TODO does this work with index 0 for current pet?
---@param index 0|1|2|3|4
---@return FoodTypes[]
---@nodiscard
function GetStablePetFoodTypes(index) end

--- Returns information about a specific stabled pet.
---@param index 0|1|2|3|4 Where 0 is current pet. Indexed from the left.
---@return string iconPath The path to texture to use as the icon for the pet. See [GetPetIcon](lua://GetPetIcon)
---@return string name The pet name. See [UnitName](lua://UnitName)
---@return integer level The pet level. See [UnitLevel](lua://UnitLevel)
---@return string family The localized pet family. See [UnitCreatureFamily](lua://UnitCreatureFamily)
---@return string loyalty The localized pet loyalty level. See [GetPetLoyalty](lua://GetPetLoyalty)
---@nodiscard
function GetStablePetInfo(index) end

--- Returns true if the player has pet spells.
---@return boolean
---@nodiscard
function HasPetSpells() end

--- Returns true if the player has a pet User Interface.
---@return boolean
---@nodiscard
function HasPetUI() end

--- Permanently abandons your pet.
--- - THERE IS NO CONFIRMATION
---@return nil
function PetAbandon() end

--- Set your pet in aggressive mode.
--- - Requires a button press
---@return nil
function PetAggressiveMode() end

--- Instruct your pet to attack your target.
--- - Requires a button press
---@return nil
function PetAttack() end

--- Returns true if the pet is currently attacking.
--- - TODO does this require eyes of the beast?
---@return boolean
---@nodiscard
function IsPetAttackActive() end

--- Stop the attack of the pet.
---@return nil
function PetStopAttack() end

--- Returns true if the pet is abandonable.
--- - See [PetAbandon](lua://PetAbandon)
---@return boolean
---@nodiscard
function PetCanBeAbandoned() end

--- Returns true if the pet can be renamed.
--- - See [PetRename](lua://PetRename)
---@return boolean
---@nodiscard
function PetCanBeRenamed() end

--- Set your pet in defensive mode.
function PetDefensiveMode() end

--- Dismiss your pet.
function PetDismiss() end

--- Instruct your pet to follow you.
function PetFollow() end

--- Determine if player has a pet with an action bar.
function PetHasActionBar() end

--- Set your pet into passive mode.
function PetPassiveMode() end

--- Renames the pet.
function PetRename(name) end

--- Instruct your pet to remain still.
function PetWait() end

--- Drags an action from the specified pet action bar slot into the cursor.
function PickupPetAction(slot) end

--- ?.
function PickupStablePet(index) end

--- ?.
function SetPetStablePaperdoll(modelObject) end

--- ?.
function StablePet(index) end

--- Toggles whether the specified pet ability should autocast or not.
function TogglePetAutocast(index) end

--- Toggles whether the specified pet ability should autocast or not. (in the spellbook).
function ToggleSpellAutocast(index, bookIndex) end

--- Check wether the specified pet ability autocasts or not.
function GetSpellAutocast(index, bookIndex) end

function UnstablePet(index) end
