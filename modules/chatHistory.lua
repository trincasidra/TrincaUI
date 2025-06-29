-- Originally developed by Vladinator:
-- https://www.wowinterface.com/downloads/info20287-ChatHistory.html

local A, L = ...

if not (L.C.chatHistory and L.C.chatHistory.enable) then return end

local _G, date, table, time, type, unpack = _G, date, table, time, type, unpack

local LOG_MAX = L.C.chatHistory.logLines
local CHAT_FRAME = ChatFrame1 --print to

local EVENTS = {
    "CHAT_MSG_BN",
    "CHAT_MSG_INSTANCE_CHAT",
    "CHAT_MSG_INSTANCE_CHAT_LEADER",
    "CHAT_MSG_EMOTE",
    "CHAT_MSG_GUILD",
    "CHAT_MSG_GUILD_ACHIEVEMENT",
    "CHAT_MSG_OFFICER",
    "CHAT_MSG_PARTY",
    "CHAT_MSG_PARTY_LEADER",
    "CHAT_MSG_RAID",
    "CHAT_MSG_RAID_LEADER",
    "CHAT_MSG_RAID_WARNING",
    "CHAT_MSG_SAY",
    "CHAT_MSG_WHISPER",
    "CHAT_MSG_WHISPER_INFORM",
    "CHAT_MSG_YELL",
}

if L.C.chatHistory.logChannels then
    EVENTS.insert("CHAT_MSG_CHANNEL")
end

local PLAYER_FLAG = "CHAT_HISTORY_PLAYER_ENTRY"
local PLAYER_TEXT = "|TInterface\\GossipFrame\\GossipGossipIcon.blp:0:0:1:-2:0:0:0:0:0:0:0:0:0|t "

local ENTRY_FLAG = 6
local ENTRY_GUID = 12
local ENTRY_EVENT = 30
local ENTRY_TIME = 31

TrincaChatHistoryDB = {}

L.chatHistory = CreateFrame("Frame")

local function PrintHistory(self)
    local oldHistory
    self.IsPrinting = true

    for i = #TrincaChatHistoryDB, 1, -1 do
        oldHistory = TrincaChatHistoryDB[i]
        ChatFrame_MessageEventHandler(CHAT_FRAME, oldHistory[ENTRY_EVENT], unpack(oldHistory))
    end

    self.IsPrinting = false
    self.HasPrinted = true

    if oldHistory then
        CHAT_FRAME:AddMessage("---- End of chat history (" .. date("%d %B %Y at %H:%M", oldHistory[ENTRY_TIME]) .. ") ----", .65, .65, .65)
    end
end
L.chatHistory.PrintHistory = PrintHistory

local function SaveMessage(self, event, ...)
    local messageData = {...}

    if messageData[1] then
        messageData[ENTRY_EVENT] = event
        messageData[ENTRY_TIME] = time()

        if messageData[ENTRY_GUID] == self.playerGUID then
            messageData[ENTRY_FLAG] = PLAYER_FLAG
        end

        table.insert(TrincaChatHistoryDB, 1, messageData)

        for i = LOG_MAX, #TrincaChatHistoryDB do
            table.remove(TrincaChatHistoryDB, LOG_MAX)
        end
    end
end
L.chatHistory.SaveMessage = SaveMessage

local function InitHistory(self)
    TrincaChatHistoryDB = type(TrincaChatHistoryDB) == "table" and TrincaChatHistoryDB or {}

    _G["CHAT_FLAG_" .. PLAYER_FLAG] = PLAYER_TEXT

    local oChatEdit_SetLastTellTarget = ChatEdit_SetLastTellTarget

    function ChatEdit_SetLastTellTarget(...)
        if self.IsPrinting then
            return
        end

        return oChatEdit_SetLastTellTarget(...)
    end

    for i = 1, #EVENTS do
        self:RegisterEvent(EVENTS[i])
    end

    if IsLoggedIn() then
        self:ReadChatEvent("PLAYER_LOGIN")
    else
        self:RegisterEvent("PLAYER_LOGIN")
    end
end
L.chatHistory.InitHistory = InitHistory

local function ReadChatEvent(self, event, ...)
    if event == "ADDON_LOADED" then
        if L.addonName == ... then
            self:UnregisterEvent(event)
            self:InitHistory()
        end
    elseif event == "PLAYER_LOGIN" then
        self:UnregisterEvent(event)
        self.playerGUID = UnitGUID("player")
        self:PrintHistory()
    elseif self.HasPrinted then
        self:SaveMessage(event, ...)
    end
end
L.chatHistory.ReadChatEvent = ReadChatEvent

L.chatHistory:RegisterEvent("ADDON_LOADED")
L.chatHistory:SetScript("OnEvent", L.chatHistory.ReadChatEvent)
