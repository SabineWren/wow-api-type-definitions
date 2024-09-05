---@meta

--- Perform a voice emote, optionally at a specific target.
---@param emote string
---@param target? UnitId
function DoEmote(emote, target) end

--- Returns the default language that the unit is speaking after logon.
--- - ex. "Common" or "Orcish"
---@param unit UnitId
---@return string
---@nodiscard
function GetDefaultLanguage(unit) end

--- Returns the language specified by the index.
--- - TODO what is the return for invalid index?
---@param index number Ranging from 1 up to GetNumLanguages().
---@return string
---@nodiscard
function GetLanguageByIndex(index) end

--- Returns the number of languages your character can speak
--- - Function name is correct. A Blizzard programmer typod it.
---@return number
---@nodiscard
function GetNumLaguages() end

--- Does a random roll between the two values.
---@param low number
---@param high number
---@return nil
function RandomRoll(low, high) end

--- Sends a message to hidden AddOn channels.
---@param prefix string At most 16 characters.
---@param message string At most 255 1-byte characters.
---@param type MessageType
---@return nil
function SendAddonMessage(prefix, message, type) end

--- Sends a chat message. Defaults to Common/Orcish. Partial list of supported languages:
--- - "COMMON", "DARNASSIAN", "DWARVEN", "TAURAHE", "ORCISH", "GUTTERSPEAK", "DEMONIC", "DRACONIC", "KALIMAG", "TITAN", "GNOMISH", "TROLL"
--- ```
--- -- ex. target
--- SendChatMessage("Hello Bob!", "WHISPER", "Common", "Bob")
--- -- ex. channel
--- local index = GetChannelName("General")
--- if (i ~= nil) then SendChatMessage(s , "CHANNEL", nil, index) end
--- ```
---@param message string At most 255 1-byte characters.
---@param type "BATTLEGROUND" | "GUILD" | "PARTY" | "RAID" | "SAY"
---@param language? string
function SendChatMessage(message, type, language) end
---
---@param message string At most 255 1-byte characters.
---@param type "CHANNEL"
---@param language nil|string
---@param channel number
function SendChatMessage(message, type, language, channel) end
---
---@param message string At most 255 1-byte characters.
---@param type "WHISPER"
---@param language nil|string
---@param player string
function SendChatMessage(message, type, language, player) end
