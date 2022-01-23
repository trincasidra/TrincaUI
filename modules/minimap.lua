local A, L = ...

local rLib = L.rLib

local dummy = function() end
local unpack = unpack
local backdrop = { edgeFile = L.C.texture, edgeSize = 1 }

--Somehow, if the minimap gets close to the screen bottom, the MultiBars will error trying to call SetScale with a negative value.
MultiBarLeft.SetScale = dummy
MultiBarRight.SetScale = dummy

MinimapCluster:ClearAllPoints()
MinimapCluster:SetPoint(unpack(L.C.minimapPoint))

Minimap:SetMaskTexture(L.C.texture)
Minimap:ClearAllPoints()
Minimap:SetPoint("CENTER")
Minimap:SetSize(190, 190)

local border = CreateFrame("Frame", nil, Minimap, BackdropTemplateMixin and "BackdropTemplate")
border:SetPoint("TOPLEFT", Minimap, "TOPLEFT", -1, 1)
border:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMRIGHT", 1, -1)
border:SetBackdrop(backdrop)
border:SetBackdropBorderColor(unpack(L.C.colors.border))
border:SetFrameLevel(3)
Minimap.Border = border

MinimapBackdrop:Hide()
MinimapBorder:Hide()
MinimapZoomIn:Hide()
MinimapZoomOut:Hide()
MinimapBorderTop:Hide()
MiniMapWorldMapButton:Hide()
MinimapZoneText:Hide()

MiniMapInstanceDifficulty:ClearAllPoints()
MiniMapInstanceDifficulty:SetPoint("TOP", Minimap, "TOP", 0, -5)
MiniMapInstanceDifficulty:SetScale(.8)
GuildInstanceDifficulty:ClearAllPoints()
GuildInstanceDifficulty:SetPoint("TOP", Minimap, "TOP", 0, -5)
GuildInstanceDifficulty:SetScale(.7)
MiniMapChallengeMode:ClearAllPoints()
MiniMapChallengeMode:SetPoint("TOP", Minimap, "TOP", 0, -10)
MiniMapChallengeMode:SetScale(.6)

QueueStatusMinimapButton:SetParent(Minimap)
QueueStatusMinimapButton:SetScale(1)
QueueStatusMinimapButton:ClearAllPoints()
QueueStatusMinimapButton:SetPoint("BOTTOMLEFT", Minimap, 0, 0)
QueueStatusMinimapButtonBorder:Hide()
QueueStatusMinimapButton:SetHighlightTexture (nil)
QueueStatusMinimapButton:SetPushedTexture(nil)

MiniMapMailFrame:ClearAllPoints()
MiniMapMailFrame:SetPoint("BOTTOMRIGHT", Minimap, -0, 0)
--MiniMapMailIcon:SetTexture(mediapath.."mail")
MiniMapMailBorder:SetTexture("Interface\\Calendar\\EventNotificationGlow")
MiniMapMailBorder:SetBlendMode("ADD")
MiniMapMailBorder:ClearAllPoints()
MiniMapMailBorder:SetPoint("CENTER", MiniMapMailFrame, .5, 1.5)
MiniMapMailBorder:SetSize(27, 27)
MiniMapMailBorder:SetAlpha(.5)

MiniMapTracking:SetParent(Minimap)
MiniMapTracking:SetScale(1)
MiniMapTracking:ClearAllPoints()
MiniMapTracking:SetPoint("TOPLEFT", Minimap, 0, 0)
MiniMapTrackingButton:SetHighlightTexture (nil)
MiniMapTrackingButton:SetPushedTexture(nil)
MiniMapTrackingBackground:Hide()
MiniMapTrackingButtonBorder:Hide()

MinimapNorthTag:ClearAllPoints()
MinimapNorthTag:SetPoint("TOP", Minimap, 0, -3)
MinimapNorthTag:SetAlpha(0)

LoadAddOn("Blizzard_TimeManager")
TimeManagerClockButton:GetRegions():Hide()
TimeManagerClockButton:ClearAllPoints()
TimeManagerClockButton:SetPoint("BOTTOM", 0, -6)
TimeManagerClockTicker:SetFont(L.C.font, 12, "OUTLINE")
TimeManagerClockTicker:SetTextColor(.8, .8, .6, 1)
TimeManagerClockButton:SetAlpha(.9)

GameTimeFrame:SetParent(Minimap)
GameTimeFrame:SetScale(.6)
GameTimeFrame:ClearAllPoints()
GameTimeFrame:SetPoint("TOPRIGHT", Minimap, -10, -10)
local fs = GameTimeFrame:GetFontString()
fs:ClearAllPoints()
fs:SetPoint("CENTER", 0, -5)
fs:SetFont(L.C.font, 20)
fs:SetTextColor(.2, .2, .1, .9)

Minimap:EnableMouseWheel()
local function Zoom(self, direction)
  if(direction > 0) then Minimap_ZoomIn()
  else Minimap_ZoomOut() end
end
Minimap:SetScript("OnMouseWheel", Zoom)

VehicleSeatIndicator:ClearAllPoints()
VehicleSeatIndicator:SetPoint(unpack(L.C.vehicleSeatIndicatorPoint))
VehicleSeatIndicator.ClearAllPoints = dummy
VehicleSeatIndicator.SetPoint = dummy

DurabilityFrame:ClearAllPoints()
DurabilityFrame:SetPoint(unpack(L.C.durabilityFramePoint))
DurabilityFrame.ClearAllPoints = dummy
DurabilityFrame.SetPoint = dummy

local function Show()
  GameTimeFrame:SetAlpha(.9)
  MiniMapTracking:SetAlpha(.9)
  MiniMapChallengeMode:SetAlpha(.9)
  MiniMapInstanceDifficulty:SetAlpha(.9)
  GuildInstanceDifficulty:SetAlpha(.9)
end
Minimap:SetScript("OnEnter", Show)

local lasttime = 0
local function Hide()
  if Minimap:IsMouseOver() then return end
  if time() == lasttime then return end
  GameTimeFrame:SetAlpha(0)
  MiniMapTracking:SetAlpha(0)
  MiniMapChallengeMode:SetAlpha(0)
  MiniMapInstanceDifficulty:SetAlpha(0)
  GuildInstanceDifficulty:SetAlpha(0)
end
local function SetTimer()
  lasttime = time()
  C_Timer.After(1.5, Hide)
end
Minimap:SetScript("OnLeave", SetTimer)
rLib:RegisterCallback("PLAYER_ENTERING_WORLD", Hide)
Hide(Minimap)

local function MoveQuests()
  ObjectiveTrackerFrame:ClearAllPoints()
  ObjectiveTrackerFrame:SetPoint(unpack(L.C.objectiveTrackerPoint))
end
ObjectiveTrackerFrame:SetScript("OnUpdate", MoveQuests)

local function NewTooltipAnchor()
	GameTooltip:SetOwner(UIParent, "ANCHOR_NONE");
	GameTooltip:SetPoint(unpack(L.C.tooltipPoint));
end
hooksecurefunc("GameTooltip_SetDefaultAnchor", NewTooltipAnchor);
