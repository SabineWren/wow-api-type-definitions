---@meta

---@alias SoundEffectName
--- | "PVPENTERQUEUE"-- Sound for entering BG queue, and when it periodically refreshes.
--- | "PVPTHROUGHQUEUE"-- You are eligible to enter the battleground!
--- | "GLUESCREENSMALLBUTTONMOUSEDOWN"
--- | "GLUESCREENSMALLBUTTONMOUSEUP"
--- | "GLUESCREENSMALLBUTTONMOUSEOVER"
--- | "GLUESCREENMEDIUMBUTTONMOUSEDOWN"
--- | "GLUESCREENMEDIUMBUTTONMOUSEUP"
--- | "GLUESCREENMEDIUMBUTTONMOUSEOVER"
--- | "GLUESCREENLARGEBUTTONMOUSEDOWN"
--- | "GLUESCREENLARGEBUTTONMOUSEUP"
--- | "GLUESCREENLARGEBUTTONMOUSEOVER"
--- | "GLUESCREENEDITBOXKEYCLICK"
--- | "GLUECHECKBOXMOUSEDOWN"
--- | "GLUECHECKBOXMOUSEUP"
--- | "GLUECHECKBOXMOUSEOVER"
--- | "GLUECHARCUSTOMIZATIONMOUSEDOWN"
--- | "GLUECHARCUSTOMIZATIONMOUSEUP"
--- | "GLUECHARCUSTOMIZATIONMOUSEOVER"
--- | "GLUESCROLLBUTTONMOUSEDOWN"
--- | "GLUESCROLLBUTTONMOUSEUP"
--- | "GLUESCROLLBUTTONMOUSEOVER"
--- | "GAMEABILITYBUTTONMOUSEDOWN"
--- | "GAMESPELLBUTTONMOUSEDOWN"
--- | "GAMEWINDOWOPEN"
--- | "GAMEWINDOWCLOSE"
--- | "GAMEDIALOGOPEN"
--- | "GAMEDIALOGCLOSE"
--- | "GAMENEWWINDOWTAB"
--- | "GAMESCREENSMALLBUTTONMOUSEDOWN"
--- | "GAMESCREENSMALLBUTTONMOUSEUP"
--- | "GAMESCREENSMALLBUTTONMOUSEOVER"
--- | "GAMESCREENMEDIUMBUTTONMOUSEDOWN"
--- | "GAMESCREENMEDIUMBUTTONMOUSEUP"
--- | "GAMESCREENMEDIUMBUTTONMOUSEOVER"
--- | "GAMESCREENLARGEBUTTONMOUSEDOWN"
--- | "GAMESCREENLARGEBUTTONMOUSEUP"
--- | "GAMESCREENLARGEBUTTONMOUSEOVER"
--- | "GAMETARGETFRIENDLYUNIT"
--- | "GAMETARGETHOSTILEUNIT"
--- | "GAMETARGETNEUTRALUNIT"
--- | "GAMEHIGHLIGHTFRIENDLYUNIT"
--- | "GAMEHIGHLIGHTHOSTILEUNIT"
--- | "GAMEHIGHLIGHTNEUTRALUNIT"
--- | "GAMEINITIALATTACK"
--- | "GAMEERROROUTOFRANGE"
--- | "GAMEERROROUTOFMANA"
--- | "GAMEERRORUNABLETOEQUIP"
--- | "GAMEERRORINVALIDTARGET"
--- | "ACTIONBARBUTTONDOWN"
--- | "MAINBUTTONBARMENU"
--- | "MINIMAPZOOMOUT"
--- | "MINIMAPZOOMIN"
--- | "MINIMAPOPEN"
--- | "MINIMAPCLOSE"
--- | "BAGMENUBUTTONPRESS"
--- | "LOOTWINDOWOPEN"
--- | "LOOTWINDOWCLOSE"
--- | "LOOTWINDOWCOINSOUND"
--- | "ITEMWEAPONSOUND"
--- | "ITEMARMORSOUND"
--- | "ITEMGENERICSOUND"
--- | "LEVELUPSOUND"
--- | "GLUECREATECHARACTERBUTTON"
--- | "GLUEENTERWORLDBUTTON"
--- | "SPELLBOOKOPEN"
--- | "SPELLBOOKCLOSE"
--- | "SPELLBOOKCHANGEPAGE"
--- | "PAPERDOLLOPEN"
--- | "PAPERDOLLCLOSE"
--- | "QUESTADDED"
--- | "QUESTCOMPLETED"
--- | "QUESTLOGOPEN"
--- | "QUESTLOGCLOSE"
--- | "GLUEGENERICBUTTONPRESS"
--- | "GAMEGENERICBUTTONPRESS"
--- | "INTERFACESOUND_MONEYFRAMEOPEN"
--- | "INTERFACESOUND_MONEYFRAMECLOSE"
--- | "INTERFACESOUND_CHARWINDOWOPEN"
--- | "INTERFACESOUND_CHARWINDOWCLOSE"
--- | "INTERFACESOUND_CHARWINDOWTAB"
--- | "INTERFACESOUND_GAMEMENUOPEN"
--- | "INTERFACESOUND_GAMEMENUCLOSE"
--- | "INTERFACESOUND_LOSTTARGETUNIT"
--- | "INTERFACESOUND_BACKPACKOPEN"
--- | "INTERFACESOUND_BACKPACKCLOSE"
--- | "INTERFACESOUND_GAMESCROLLBUTTON"
--- | "INTERFACESOUND_CURSORGRABOBJECT"
--- | "INTERFACESOUND_CURSORDROPOBJECT"
--- | "SHEATHINGSHIELDSHEATHE"
--- | "SHEATHINGWOODWEAPONSHEATHE"
--- | "SHEATHINGMETALWEAPONSHEATHE"
--- | "SHEATHINGWOODWEAPONUNSHEATHE"
--- | "SHEATHINGMETALWEAPONUNSHEATHE"
--- | "SHEATHINGSHIELDUNSHEATHE"
--- | "igCreatureAggroDeselect"
--- | "igQuestListOpen"
--- | "igQuestListClose"
--- | "igQuestListSelect"
--- | "igQuestListComplete"
--- | "igQuestCancel"
--- | "igPlayerInvite"
--- | "igPlayerInviteAccept"
--- | "igPlayerInviteDecline"
--- | "GAMEERRORUNABLETOEQUIP"
--- | "ITEMGENERICSOUND"
--- | "GAMEERRORINVALIDTARGET"
--- | "LEVELUP"
--- | "GAMEERROROUTOFRANGE"
--- | "QUESTADDED"
--- | "MONEYFRAMEOPEN"
--- | "MONEYFRAMECLOSE"
--- | "LOOTWINDOWOPEN"
--- | "LOOTWINDOWCLOSE"
--- | "LOOTWINDOWCOINSOUND"
--- | "GAMEHIGHLIGHTHOSTILEUNIT"
--- | "GAMEHIGHLIGHTNEUTRALUNIT"
--- | "GAMEHIGHLIGHTFRIENDLYUNIT"
--- | "INTERFACESOUND_LOSTTARGETUNIT"
--- | "INTERFACESOUND_CURSORGRABOBJECT"
--- | "INTERFACESOUND_CURSORDROPOBJECT"
--- | "GAMESCREENMEDIUMBUTTONMOUSEDOWN"
--- | "GAMEABILITYACTIVATE"
--- | "GAMESPELLACTIVATE"
--- | "gsTitleEnterWorld"
--- | "gsTitleOptions"
--- | "gsTitleQuit"
--- | "gsTitleCredits"
--- | "gsTitleIntroMovie"
--- | "gsTitleOptionScreenResolution"
--- | "gsTitleOption16bit"
--- | "gsTitleOption32bit"
--- | "gsTitleOptionOpenGL"
--- | "gsTitleOptionDirect3D"
--- | "gsTitleOptionFullScreenMode"
--- | "gsTitleOptionOK"
--- | "gsTitleOptionExit"
--- | "gsLogin"
--- | "gsLoginNewAccount"
--- | "gsLoginChangeRealm"
--- | "gsLoginExit"
--- | "gsLoginChangeRealmOK"
--- | "gsLoginChangeRealmSelect"
--- | "gsLoginChangeRealmCancel"
--- | "gsCharacterSelection"
--- | "gsCharacterSelectionEnterWorld"
--- | "gsCharacterSelectionDelCharacter"
--- | "gsCharacterSelectionAcctOptions"
--- | "gsCharacterSelectionExit"
--- | "gsCharacterSelectionCreateNew"
--- | "gsCharacterCreationClass"
--- | "gsCharacterCreationRace"
--- | "gsCharacterCreationGender"
--- | "gsCharacterCreationLook"
--- | "gsCharacterCreationCreateChar"
--- | "gsCharacterCreationCancel"
--- | "igCurrentActiveSpell"
--- | "igMiniMapOpen"
--- | "igMiniMapClose"
--- | "igMiniMapZoomIn"
--- | "igMiniMapZoomOut"
--- | "igChatEmoteButton"
--- | "igChatScrollUp"
--- | "igChatScrollDown"
--- | "igChatBottom"
--- | "igSpellBookOpen"
--- | "igSpellBookClose "
--- | "igSpellBokPageTur n"
--- | "igSpellBookSpellIconPickup"
--- | "igSpellBookSpellIconDrop"
--- | "igAbilityOpen"
--- | "igAbilityClose"
--- | "igAbiliityPageTurn"
--- | "igAbilityIconPickup"
--- | "igAbilityIconDrop"
--- | "igCharacterInfoOpen"
--- | "igCharacterInfoClose"
--- | "igCharacterInfoTab"
--- | "igCharacterInfoScrollUp"
--- | "igCharacterInfoScrollDown"
--- | "igQuestLogOpen"
--- | "igQuestLogClose"
--- | "igQuestLogAbandonQuest"
--- | "igQuestFailed"
--- | "igSocialOepn"-- Not a typo. This works in game.
--- | "igSocialClose"
--- | "igMainMenuOpen"
--- | "igMainMenuClose"
--- | "igMainMenuOption"
--- | "igMainMenuLogout"
--- | "igMainMenuQuit"
--- | "igMainMenuContinue"
--- | "igMainMenuOptionCheckBoxOn"
--- | "igMainMenuOptionCheckBoxOff"
--- | "igMainMenuOptionFaerTab"-- Not a typo. This works in game.
--- | "igInventoryOepn"-- Not a typo. This works in game.
--- | "igInventoryClose"
--- | "igInventoryRotateCharacter"
--- | "igBackPackOpen"
--- | "igBackPackClose"
--- | "igBackPackCoinSelect"
--- | "igBackPackCoinOK"
--- | "igBackPackCoinCancel"
--- | "igCharacterNPCSelect"
--- | "igCharacterNPCDeselect"
--- | "igCharacterSelect"
--- | "igCharacterDeselect"
--- | "igCreatureNeutralSelect"
--- | "igCreatureNeutralDeselect"
--- | "igCreatureAggroSelect"
--- | "UChatScrollButton"
--- | "Deathbind Sound"
--- | "LOOTWINDOWOPENEMPTY"
--- | "TaxiNodeDiscovered"
--- | "UnwrapGift"
--- | "TellMessage"
--- | "WriteQuest"
--- | "MapPing"
--- | "igBonusBarOpen"
--- | "FriendJoinGame"
--- | "Fishing Reel in"
--- | "HumanExploration"
--- | "OrcExploration"
--- | "UndeadExploration"
--- | "TaurenExploration"
--- | "TrollExploration"
--- | "NightElfExploration"
--- | "GnomeExploration"
--- | "DwarfExploration"
--- | "igPVPUpdate"
--- | "ReadyCheck"
--- | "RaidWarning"
--- | "AuctionWindowOpen"
--- | "AuctionWindowClose"

--- Execute a console command.
---@param command string
---@return nil
function ConsoleExec(command) end

--- Returns information about current client build.
---@return string version
---@return string build
---@return string date
---@nodiscard
function GetBuildInfo() end

--- Returns the current framerate (full precision)
---@return number
---@nodiscard
function GetFramerate() end

--- Returns the time in-game (server timezone).
---@return number hours
---@return number minutes
---@nodiscard
function GetGameTime() end

---@return string locale Client locale, ex. 'enUS'
---@nodiscard
function GetLocale() end

--- Returns the cursor's position on the screen.
--- - Coordinates unaffected by UI scale
---@return number x 0 at the left edge of the screen.
---@return number y 0 at the bottom edge of the screen.
---@nodiscard
function GetCursorPosition() end

--- Get bandwidth and latency network information.
---@return number bandwidthIn Current incoming bandwidth (download) usage, measured in KB/s.
---@return number bandwidthOut Current outgoing bandwidth (upload) usage, measured in KB/s.
---@return number msLatency Updated every 30 seconds.
---@nodiscard
function GetNetStats() end

--- returns the name of the server
---@return string
---@nodiscard
function GetRealmName() end

--- Returns the height of the window in pixels.
--- - Affected by UI scale.
---@return number
---@nodiscard
function GetScreenHeight() end

--- Returns the width of the window in pixels.
--- - Affected by UI scale.
---@return number
---@nodiscard
function GetScreenWidth() end

--- Returns system uptime of your computer in seconds (millisecond precision).
---@return number
---@nodiscard
function GetTime() end

--- Predicate to check if viewing a video cinematic.
---@return boolean
---@nodiscard
function InCinematic() end

--- Returns true if the alt key is currently depressed.
---@return boolean
---@nodiscard
function IsAltKeyDown() end

--- Returns true if the control key is currently depressed.
---@return boolean
---@nodiscard
function IsControlKeyDown() end

---@return boolean
---@nodiscard
function IsLinuxClient() end

---@return boolean
---@nodiscard
function IsMacClient() end

---@return boolean
---@nodiscard
function IsShiftKeyDown() end

---@return boolean
---@nodiscard
function IsWindowsClient() end

--- Shows the opening movie for a player's race.
---@return nil
function OpeningCinematic() end

--- Plays the specified mp3.
--- - Also supports OggVorbis (.ogg) since WoW uses the [FMOD](https://www.fmod.com) sound engine.
--- - TODO might return a boolean 'willPlay', but if so, the value can't be relied on.
---@param pathSoundFile string
---@return nil
function PlayMusic(pathSoundFile) end

--- Plays the specified built-in sound effect.
---@param name SoundEffectName
---@return nil
function PlaySound(name) end

--- Plays the specified sound file.
--- - Works with .wav, .mp3, and .ogg
---@param soundFilePath string
---@return nil
function PlaySoundFile(soundFilePath) end

--- Reloads the UI from source files
---@return nil
function ReloadUI() end

--- The "Release Spirit" button. Sends you to the graveyard when dead. -Moof
---@return nil
function RepopMe() end

--- Request a summary of time played from the server.
--- - Response will trigger "TIME_PLAYED_MSG" event.
---@return nil
function RequestTimePlayed() end

--- Restarts the graphical engine. Needed for things such as resolution changes to take effect.
---@return nil
function RestartGx() end

--- Execute "script" as a block of LUA code.
---@param script string
---@return nil
function RunScript(script) end

--- Takes a screenshot.
--- - Save a file with the following format: "WoWScrnShot_MMDDYY_HHMMSS.tga".
--- - Format can be controlled by the "screenshotFormat" Config.wtf variable which was introduced in Patch 1.11. It can be set to "tga" (default), "jpeg" or "png".
---@return nil
function Screenshot() end

---@return nil
function StopCinematic() end

--- Stops the currently playing mp3.
--- - Sound will fade out.
--- - See [PlayMusic](lua://PlayMusic)
---@return nil
function StopMusic() end

--- Output win32 debug text. Freeware debug message viewer: DebugView
--- - Return type not documented on wiki, except that it has no effect on live server.
function debuginfo() end

--- Given an object name will return the object itself.
---@param objectName string
---@return unknown object
---@nodiscard
function getglobal(objectName) end

--- set the global "object" to the given value.
---@param objectName string
---@param value any
---@return nil
function setglobal(objectName, value) end
