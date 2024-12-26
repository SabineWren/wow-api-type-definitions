---@meta

--- Requires Stable window open.
---@return nil
function BuyStableSlot() end

--- Cast the corresponding pet skill.
---@param index integer
---@return nil
function CastPetAction(index) end

--- Check whether the player is close enough to the pet untrainer.
---@return nil|1
---@nodiscard
function CheckPetUntrainerDist() end

--- This doesn't seem to do anything
---@param index integer
---@return 1
---@nodiscard
function ClickStablePet(index) end

--- Close the pet stables user interface.
---@return nil
function ClosePetStables() end

--- Confirm the request for unlearning pet abilities
function ConfirmPetUnlearn() end

--- Measured in copper, not gold
---@return integer
---@nodiscard
function GetNextStableSlotCost() end

--- Returns the number of stabled pets.
--- - Game client caches this value after visiting a stable. Otherwise 0.
---@return integer
---@nodiscard
function GetNumStablePets() end

--- Returns the number of stable slots you own.
--- - Game client caches this value after visiting a stable. Otherwise 0.
---@return integer
---@nodiscard
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

--- Returns the food types the player's pet can eat.
---@return FoodTypes ...
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
---@return 0|1|2|3|4 slot Defaults to current pet (0)
---@nodiscard
function GetSelectedStablePet() end

--- Returns the food types a specific stabled pet can eat.
--- - Game client caches this value after visiting a stable.
--- - Surprisingly this does work for current pet (index 0), but only after visiting stable. See [GetPetFoodTypes()](lua://GetPetFoodTypes)
---@param index 0|1|2|3|4
---@return FoodTypes ...
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
---@return nil|1
---@nodiscard
function PetHasActionBar() end

--- Set your pet into passive mode.
function PetPassiveMode() end

--- Renames the pet.
---@param name string
function PetRename(name) end

--- Instruct your pet to remain still.
function PetWait() end

--- Drags an action from the specified pet action bar slot into the cursor.
---@param slot ActionBarSlot
---@return nil
function PickupPetAction(slot) end

--- Attaches a pet in your stable to your cursor.
---@param index 0|1|2|3|4
---@return nil
function PickupStablePet(index) end

--- Sets the paperdoll model in the pet stable to a new player model.
--- - This method does not cause the model to be shown. The model still needs its :Show() method called afterward.
--- - TODO What does this mean?
function SetPetStablePaperdoll(modelObject) end

---@param index 1|2|3|4
function StablePet(index) end

--- Toggles whether the specified ability should autocast or not (in pet action bar).
--- - See [GetSpellAutocast()](lua://GetSpellAutocast)
--- - See [ToggleSpellAutocast()](lua://ToggleSpellAutocast)
---@param index integer
function TogglePetAutocast(index) end

---@param index 1|2|3|4
function UnstablePet(index) end
