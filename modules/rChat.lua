
-- rChat: core
-- zork, 2016

-----------------------------
-- Variables
-----------------------------

local A, L = ...
if not (L.C.chat and L.C.chat.enable) or IsAddOnLoaded("Prat-3.0") or IsAddOnLoaded("ls_Glass") then return end

-----------------------------
-- Functions
-----------------------------

--SkinChat
local function SkinChat(self)
  if not self then return end
  local name = self:GetName()
  --chat frame resizing
  self:SetClampRectInsets(0, 0, 0, 0)
  self:SetFont(unpack(L.C.chat.font))
  self:SetShadowOffset(unpack(L.C.chat.dropshadow.offset))
  self:SetShadowColor(unpack(L.C.chat.dropshadow.color))
  --chat fading
  self:SetFading(true)
  --hide button frame
  local bf = _G[name.."ButtonFrame"]
  bf:HookScript("OnShow", bf.Hide)
  bf:Hide()
  --editbox
  local eb = _G[name.."EditBox"]
  eb:SetAltArrowKeyMode(false)
  --textures
  _G[name.."EditBoxLeft"]:Hide()
  _G[name.."EditBoxMid"]:Hide()
  _G[name.."EditBoxRight"]:Hide()
  --reposition
  eb:ClearAllPoints()
  if name == "ChatFrame2" then
    eb:SetPoint("BOTTOM",self,"TOP",0,22+24) --CombatLogQuickButtonFrame_Custom:GetHeight()
  else
    eb:SetPoint("BOTTOM",self,"TOP",0,22)
  end
  eb:SetPoint("LEFT",self,-5,0)
  eb:SetPoint("RIGHT",self,10,0)
end

local function UpdateBackgroundAnchors(self)
  --fix wierd combat log
  self:SetClampRectInsets(0, 0, 0, 0)
end

--OpenTemporaryWindow
local function OpenTemporaryWindow()
  for _, name in next, CHAT_FRAMES do
    local frame = _G[name]
    if (frame.isTemporary) then
      SkinChat(frame)
    end
  end
end

--AddMessage
local function AddMessage(self, text, ...)
  --channel replace (Trade and such)
  text = text:gsub('|h%[(%d+)%. .-%]|h', '|h%1.|h')
  --url search
  text = text:gsub('([wWhH][wWtT][wWtT][%.pP]%S+[^%p%s])', '|cffffffff|Hurl:%1|h[%1]|h|r')
  return self.DefaultAddMessage(self, text, ...)
end

-----------------------------
-- Stuff
-----------------------------

--editbox font
ChatFontNormal:SetFont(unpack(L.C.chat.font))
ChatFontNormal:SetShadowOffset(unpack(L.C.chat.dropshadow.offset))
ChatFontNormal:SetShadowColor(unpack(L.C.chat.dropshadow.color))

--font size
CHAT_FONT_HEIGHTS = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}

--channels
CHAT_WHISPER_GET              = "From %s "
CHAT_WHISPER_INFORM_GET       = "To %s "
CHAT_BN_WHISPER_GET           = "From %s "
CHAT_BN_WHISPER_INFORM_GET    = "To %s "
CHAT_YELL_GET                 = "%s "
CHAT_SAY_GET                  = "%s "
CHAT_BATTLEGROUND_GET         = "|Hchannel:Battleground|hBG.|h %s: "
CHAT_BATTLEGROUND_LEADER_GET  = "|Hchannel:Battleground|hBGL.|h %s: "
CHAT_GUILD_GET                = "|Hchannel:Guild|hG.|h %s: "
CHAT_OFFICER_GET              = "|Hchannel:Officer|hGO.|h %s: "
CHAT_PARTY_GET                = "|Hchannel:Party|hP.|h %s: "
CHAT_PARTY_LEADER_GET         = "|Hchannel:Party|hPL.|h %s: "
CHAT_PARTY_GUIDE_GET          = "|Hchannel:Party|hPG.|h %s: "
CHAT_RAID_GET                 = "|Hchannel:Raid|hR.|h %s: "
CHAT_RAID_LEADER_GET          = "|Hchannel:Raid|hRL.|h %s: "
CHAT_RAID_WARNING_GET         = "|Hchannel:RaidWarning|hRW.|h %s: "
CHAT_INSTANCE_CHAT_GET        = "|Hchannel:Battleground|hI.|h %s: "
CHAT_INSTANCE_CHAT_LEADER_GET = "|Hchannel:Battleground|hIL.|h %s: "
CHAT_FLAG_AFK = "<AFK> "
CHAT_FLAG_DND = "<DND> "
CHAT_FLAG_GM = "<[GM]> "

--remove the annoying guild loot messages by replacing them with the original ones
YOU_LOOT_MONEY_GUILD = YOU_LOOT_MONEY
LOOT_MONEY_SPLIT_GUILD = LOOT_MONEY_SPLIT

--don't cut the toastframe
BNToastFrame:SetClampedToScreen(true)
BNToastFrame:SetClampRectInsets(-15,15,15,-15)

--ChatFrameMenuButton
ChatFrameMenuButton:HookScript("OnShow", ChatFrameMenuButton.Hide)
ChatFrameMenuButton:Hide()
--ChatFrameChannelButton
ChatFrameChannelButton:HookScript("OnShow", ChatFrameChannelButton.Hide)
ChatFrameChannelButton:Hide()
--ChatFrameToggleVoiceDeafenButton
ChatFrameToggleVoiceDeafenButton:HookScript("OnShow", ChatFrameToggleVoiceDeafenButton.Hide)
ChatFrameToggleVoiceDeafenButton:Hide()
--ChatFrameToggleVoiceMuteButton
ChatFrameToggleVoiceMuteButton:HookScript("OnShow", ChatFrameToggleVoiceMuteButton.Hide)
ChatFrameToggleVoiceMuteButton:Hide()

--hide the friend micro button
local button = QuickJoinToastButton or FriendsMicroButton
button:HookScript("OnShow", button.Hide)
button:Hide()

--skin chat
for i = 1, NUM_CHAT_WINDOWS do
  local chatframe = _G["ChatFrame"..i]
  SkinChat(chatframe)
  --adjust channel display
  if (i ~= 2) then
    chatframe.DefaultAddMessage = chatframe.AddMessage
    chatframe.AddMessage = AddMessage
  end
end

--temporary chat windows
hooksecurefunc("FCF_OpenTemporaryWindow", OpenTemporaryWindow)

--background thingy
hooksecurefunc("FloatingChatFrame_UpdateBackgroundAnchors", UpdateBackgroundAnchors)
