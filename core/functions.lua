--Revamped for oUF_Trinca
local A, L = ...

local floor, unpack = floor, unpack
local backdrop = { edgeFile = L.C.texture, edgeSize = 1 }
local backdropThick = { edgeFile = L.C.texture, edgeSize = L.C.nameplate.targetedBorderSize or 6 }
local backdropFilled = { edgeFile = L.C.texture, edgeSize = 1, bgFile = L.C.texture }
local rLib = L.rLib
local VIGOR_POWER_INDEX = Enum.PowerType.AlternateMount or 25
if not rLib then return end

L.F = {}

local function NumberFormat(v)
  if v > 1E10 then
    return (floor(v/1E9)).."b"
  elseif v > 1E9 then
    return (floor((v/1E9)*10)/10).."b"
  elseif v > 1E8 then
    return (floor(v/1E6)).."m"
  elseif v > 1E6 then
    return (floor((v/1E6)*10)/10).."m"
  elseif v > 1E5 then
    return (floor(v/1E3)).."k"
  elseif v > 1E3 then
    return (floor((v/1E3)*10)/10).."k"
  else
    return v
  end
end
L.F.NumberFormat = NumberFormat

local function CalcFrameSize(numButtons,numCols,buttonWidth,buttonHeight,buttonMargin,framePadding)
  local numRows = ceil(numButtons/numCols)
  local frameWidth = numCols*buttonWidth + (numCols-1)*buttonMargin + 2*framePadding
  local frameHeight = numRows*buttonHeight + (numRows-1)*buttonMargin + 2*framePadding
  return frameWidth, frameHeight
end

local function SetPoint(self,relativeTo,point)
  local a,b,c,d,e = unpack(point)
  if not b then
    self:SetPoint(a)
  elseif b and type(b) == "string" and not _G[b] then
    self:SetPoint(a,relativeTo,b,c,d)
  else
    self:SetPoint(a,b,c,d,e)
  end
end

local function SetPoints(self,relativeTo,points)
  for i, point in next, points do
    SetPoint(self,relativeTo,point)
  end
end

local function CreateIcon(self,layer,sublevel,size,point)
  local icon = self:CreateTexture(nil,layer,nil,sublevel)
  icon:SetSize(unpack(size))
  SetPoint(icon,self,point)
  return icon
end

local function PostUpdateHealth(Health, unit, min, max)
  local self = Health:GetParent()

  local hpHeight = Health:GetHeight()
  self.Health.bg:SetPoint('LEFT', Health:GetStatusBarTexture(), 'RIGHT')
  self.Health.bg:SetHeight(hpHeight)

  local unitType = string.match(unit, "%D+")

  --Border for party and raid units with aggro
  if unitType == 'party' or unitType == 'raid' then
    local threatSituation = UnitThreatSituation(unit)
    if threatSituation and threatSituation > 1 then
      self.Glow:SetBackdropBorderColor(unpack(L.C.colors.hasAggroBorder))
    else
      self.Glow:SetBackdropBorderColor(unpack(L.C.colors.health.border))
    end
  end

  --Border for player in combat
  if unitType == 'player' then
    if UnitAffectingCombat(unit) then
      self.Glow:SetBackdropBorderColor(unpack(L.C.colors.hasAggroBorder))
    else
      self.Glow:SetBackdropBorderColor(unpack(L.C.colors.health.border))
    end
  end

  if unitType == 'nameplate' then
    --Border for nameplates the player targets
    if UnitIsUnit("target", unit) then
      self.Glow:SetBackdrop(backdropThick)
      self.Glow:SetBackdropBorderColor(unpack(L.C.colors.nameplateTargetedBorder))
      self.Glow:SetPoint("TOPLEFT", self, "TOPLEFT", -backdropThick.edgeSize, backdropThick.edgeSize)
      self.Glow:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", backdropThick.edgeSize, -backdropThick.edgeSize)
    else
      self.Glow:SetBackdrop(backdrop)
      self.Glow:SetBackdropBorderColor(unpack(L.C.colors.health.border))
      self.Glow:SetPoint("TOPLEFT", self, "TOPLEFT", -backdrop.edgeSize, backdrop.edgeSize)
      self.Glow:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", backdrop.edgeSize, -backdrop.edgeSize)
    end

    local color = {}
    local threat = UnitThreatSituation('player', unit)
    if threat and GetSpecializationRole(GetSpecialization()) == 'TANK' then threat = 3 - threat end

    if not UnitPlayerControlled(unit) and UnitIsTapDenied(unit) then
      color = L.C.colors.tapped
    elseif threat == 0 then
      color = L.C.colors.threat.lowthreat
    elseif threat == 1 then
      color = L.C.colors.threat.highthreat
    elseif threat == 2 then
      color = L.C.colors.threat.unsafetanking
    elseif threat == 3 then
      color = L.C.colors.threat.tanking
    else
      local reaction = UnitReaction(unit, "player") or 4
      if reaction < 4 then
        color = L.C.colors.reaction.harm
      elseif reaction == 4 then
        color = L.C.colors.reaction.neutral
      elseif reaction > 4 then
        color = L.C.colors.reaction.help
      end
    end

    self.Health:SetStatusBarColor(unpack(color))
    local colorBG = {}
    for i, v in ipairs(color) do colorBG[i] = v*.3 end
    self.Health.bg:SetVertexColor(unpack(colorBG))
    return
  else
    if UnitIsDeadOrGhost(unit) then
      self.Health:SetAlpha(.75)
      self.Health:SetStatusBarColor(unpack(L.C.colors.dead))
      self.Health.bg:SetVertexColor(unpack(L.C.colors.dead))
    elseif not UnitIsConnected(unit) then
      self.Health:SetAlpha(.75)
      self.Health:SetStatusBarColor(unpack(L.C.colors.disconnected))
      self.Health.bg:SetVertexColor(unpack(L.C.colors.disconnected))
    else
      self.Health:SetAlpha(1)
      self.Health:SetStatusBarColor(unpack(L.C.colors.health.default))
      self.Health.bg:SetVertexColor(unpack(L.C.colors.health.background))
    end  
  end
end

local function MouseoverOnUpdate(self, elapsed)
	if not UnitIsUnit(self.unit, "mouseover") then
		self.Health.mouseover:Hide()
	end
end
L.F.MouseoverOnUpdate = MouseoverOnUpdate

local function UpdateMouseover(self, event)
  if UnitIsUnit('mouseover', self.unit) then
    self.Health.mouseover:Show()
  else
    self.Health.mouseover:Hide()
  end
  self:SetScript("OnUpdate", L.F.MouseoverOnUpdate)
end
L.F.UpdateMouseover = UpdateMouseover

local function UpdateThreat(self, event, unit)
  if unit and self.unit ~= unit then
    return
  end
  self.Health:ForceUpdate()
end
L.F.UpdateThreat = UpdateThreat

local function UpdatePlayerTarget(self, event)
  --Event fires thrice: for player, old target, and last target.
  if self.unit ~= 'player' then
    self.Health:ForceUpdate()
  end
end
L.F.UpdatePlayerTarget = UpdatePlayerTarget

local function UpdateAuraIndicator(self, event, unit)
  if IsInGroup() then
    for i, button in ipairs(self.auraIndicators) do
      L.AI.UpdateIndicator(button, unit)
    end
  end
end
L.F.UpdateAuraIndicator = UpdateAuraIndicator

local function CreateText(self,font,size,outline,align,noshadow)
  local text = self:CreateFontString(nil, "ARTWORK") --"BORDER", "OVERLAY"
  text:SetFont(L.C.font, size or 14, outline or "OUTLINE")
  text:SetJustifyH(align or "LEFT")
  if not noshadow then
    text:SetShadowColor(0,0,0,0.25)
    text:SetShadowOffset(1,-2)
  end
  --fix some weird bug
  text:SetText("Bugfix")
  text:SetMaxLines(1)
  text:SetHeight(text:GetStringHeight())
  return text
end
L.F.CreateText = CreateText

local function AltPowerBarOverride(self, event, unit, powerType)
  if self.unit ~= unit or powerType ~= "ALTERNATE" then return end
  local ppmax = UnitPowerMax(unit, ALTERNATE_POWER_INDEX, true) or 0
  local ppcur = UnitPower(unit, ALTERNATE_POWER_INDEX, true)
  local _, r, g, b = GetUnitPowerBarTextureInfo(unit, 2)
  local _, ppmin = UnitPowerBarID(unit)
  local el = self.AlternativePower
  el:SetMinMaxValues(ppmin or 0, ppmax)
  el:SetValue(ppcur)
  if b then
    el:SetStatusBarColor(r, g, b)
    if el.bg then
      local mu = el.bg.multiplier or 0.3
      el.bg:SetVertexColor(r*mu, g*mu, b*mu)
    end
  else
    el:SetStatusBarColor(1, 0, 1)
    if el.bg then
      local mu = el.bg.multiplier or 0.3
      el.bg:SetVertexColor(1*mu, 0*mu, 1*mu)
    end
  end
  if ppmax == 0 or ppcur == 0 then
    el:Hide()
  else
    el:Show()
  end
end

local function CreateAltPowerBar(self)
  if not self.cfg.altpowerbar or not self.cfg.altpowerbar.enabled then return end

  local ap = CreateFrame("StatusBar", nil, self, BackdropTemplateMixin and "BackdropTemplate")
  ap:SetSize(unpack(self.cfg.altpowerbar.size))
  ap:SetStatusBarTexture(L.C.texture)
  ap:SetOrientation(self.cfg.altpowerbar.orientation or "HORIZONTAL")
  SetPoint(ap, self, self.cfg.altpowerbar.point)
  ap:GetStatusBarTexture():SetHorizTile(true)
  ap:SetFrameLevel(3)
  ap:SetAlpha(.8)

  -- Dragonriding UI
  if self.cfg.altpowerbar.dragonriding then 
    UIWidgetPowerBarContainerFrame:SetAlpha(0)
    ap:RegisterEvent("UPDATE_UI_WIDGET")
    ap:SetScript("OnEvent", function(self, event, ...)
      if (event == "UPDATE_UI_WIDGET") then
        local widget = ...
        if (widget.widgetSetID == C_UIWidgetManager.GetPowerBarWidgetSetID()) then
          local visInfo = UIWidgetManager:GetWidgetTypeInfo(widget.widgetType).visInfoDataFunction(widget.widgetID)
          if visInfo then
            local widgetInfo = C_UIWidgetManager.GetFillUpFramesWidgetVisualizationInfo(widget.widgetID)
            if widgetInfo then
              local unit = "player"
              local ppmax = UnitPowerMax(unit, VIGOR_POWER_INDEX, true) or 0
              local ppcur = UnitPower(unit, VIGOR_POWER_INDEX, true)
              local realcur = ppcur + (widgetInfo.fillValue/widgetInfo.fillMax)
              if realcur > ppmax then realcur = ppmax end
              self:SetMinMaxValues(0, ppmax)
              self:SetValue(realcur)
              self:SetStatusBarColor(unpack(L.C.colors.power.vigor))
            end
          end
        end
      end
    end)
  end

  local border = CreateFrame("Frame", nil, ap, BackdropTemplateMixin and "BackdropTemplate")
  border:SetPoint("TOPLEFT", ap, "TOPLEFT", -1, 1)
  border:SetPoint("BOTTOMRIGHT", ap, "BOTTOMRIGHT", 1, -1)
  border:SetBackdrop(backdrop)
  border:SetBackdropBorderColor(unpack(L.C.colors.altpower.border))
  border:SetFrameLevel(3)
  self.Glow.ap = border

  local bg = ap:CreateTexture(nil, "BACKGROUND")
  bg:SetTexture(L.C.texture)
  bg:SetAllPoints()
  bg.multiplier = .4
  bg:SetAlpha(.5)
  ap.bg = bg

  ap.Override = AltPowerBarOverride
  return ap
end
L.F.CreateAltPowerBar = CreateAltPowerBar

local function CreateAbsorbBar(self)
  local absorb = CreateFrame("StatusBar", nil, self.Health, BackdropTemplateMixin and "BackdropTemplate")
  absorb:SetStatusBarTexture(L.C.texture)
  absorb:SetAllPoints()
  absorb:SetOrientation(self.cfg.healthbar.orientation or "HORIZONTAL")
  absorb:GetStatusBarTexture():SetHorizTile(true)
  absorb:SetFrameLevel(4)
  absorb:SetStatusBarColor(unpack(L.C.colors.health.shield))
  absorb:SetReverseFill(true)
  return absorb
end
L.F.CreateAbsorbBar = CreateAbsorbBar

local function CreateClassBar(self)
  if not self.cfg.classbar or not self.cfg.classbar.enabled then return end

  local s = CreateFrame("StatusBar", nil, self)
  s:SetStatusBarTexture(L.C.texture)
  s:SetSize(unpack(self.cfg.classbar.size))
  s:SetOrientation(self.cfg.classbar.orientation or "HORIZONTAL")
  SetPoint(s,self,self.cfg.classbar.point)

  local bg = s:CreateTexture(nil, "BACKGROUND")
  bg:SetTexture(L.C.texture)
  bg:SetAllPoints()
  s.bg = bg

  s.bg.multiplier = 1
  return s
end
L.F.CreateClassBar = CreateClassBar

local function CreateHealthBar(self)
  local hp = CreateFrame("StatusBar", nil, self, BackdropTemplateMixin and "BackdropTemplate")
  hp:SetStatusBarTexture(L.C.texture)
  hp:SetAllPoints()
  hp:SetOrientation(self.cfg.healthbar.orientation or "HORIZONTAL")
  hp:GetStatusBarTexture():SetHorizTile(true)
  hp:SetFrameLevel(3)
  hp.frequentUpdates = true
  hp.Smooth = true
  hp:SetStatusBarColor(unpack(L.C.colors.health.default))
  hp.PostUpdate = PostUpdateHealth

  local border = CreateFrame("Frame", nil, hp, BackdropTemplateMixin and "BackdropTemplate")
  border:SetPoint("TOPLEFT", hp, "TOPLEFT", -backdrop.edgeSize, backdrop.edgeSize)
  border:SetPoint("BOTTOMRIGHT", hp, "BOTTOMRIGHT", backdrop.edgeSize, -backdrop.edgeSize)
  border:SetBackdrop(backdrop)
  border:SetBackdropBorderColor(unpack(L.C.colors.health.border))
  border:SetFrameLevel(3)
  self.Glow = border

  local bg = hp:CreateTexture(nil, "BACKGROUND")
  bg:SetTexture(L.C.texture)
  bg:SetPoint("LEFT")
  bg:SetPoint("RIGHT")
  bg:SetPoint("LEFT", hp:GetStatusBarTexture(), "RIGHT")
  hp.bg = bg

  local mouseover = hp:CreateTexture(nil, "BACKGROUND")
  mouseover:SetTexture(L.C.texture)
  mouseover:SetAllPoints()
  mouseover:SetVertexColor(unpack(L.C.colors.mouseover))
  hp.mouseover = mouseover
  hp.mouseover:Hide()

  local bdf = CreateFrame("Frame", nil, hp, BackdropTemplateMixin and "BackdropTemplate")
  bdf:SetFrameLevel(hp:GetFrameLevel()+1 or 0)
  bdf:SetPoint("TOPLEFT", hp, "TOPLEFT", -backdropFilled.edgeSize, backdropFilled.edgeSize)
  bdf:SetPoint("BOTTOMRIGHT", hp, "BOTTOMRIGHT", backdropFilled.edgeSize, -backdropFilled.edgeSize)
  bdf:SetBackdrop(backdropFilled)
  bdf:SetBackdropColor(0, 0, 0, 0)
  bdf:SetBackdropBorderColor(0, 0, 0, 0)
  hp.bdf = bdf
  if self.cfg.healthbar.debuffHighlight then
    self.DebuffHighlight = hp.bdf
    self.DebuffHighlightBackdropBorder = true
    self.DebuffHighlightAlpha = 1
    self.DebuffHighlightFilter = self.cfg.healthbar.debuffHighlightFilter or false
  end

  hp.colorTapping = self.cfg.healthbar.colorTapping
  hp.colorDisconnected = self.cfg.healthbar.colorDisconnected
  hp.colorReaction = self.cfg.healthbar.colorReaction
  hp.colorClass = self.cfg.healthbar.colorClass
  hp.colorHealth = self.cfg.healthbar.colorHealth

  self:RegisterEvent("PLAYER_REGEN_ENABLED", L.F.UpdateThreat, true)
  self:RegisterEvent("PLAYER_REGEN_DISABLED", L.F.UpdateThreat, true)
  self:RegisterEvent("UNIT_THREAT_SITUATION_UPDATE", L.F.UpdateThreat, false)
  self:RegisterEvent("UNIT_THREAT_LIST_UPDATE", L.F.UpdateThreat, false)
  self:RegisterEvent("PLAYER_TARGET_CHANGED", L.F.UpdatePlayerTarget, true)
  self:RegisterEvent("UPDATE_MOUSEOVER_UNIT", L.F.UpdateMouseover, true)

  return hp
end
L.F.CreateHealthBar = CreateHealthBar

local function CreateAdditionalPowerBar(self)
  if not self.cfg.addpowerbar or not self.cfg.addpowerbar.enabled then return end

  local s = CreateFrame("StatusBar", nil, self)
  s:SetStatusBarTexture(L.C.texture)
  s:SetSize(unpack(self.cfg.addpowerbar.size))
  s:SetOrientation(self.cfg.addpowerbar.orientation or "HORIZONTAL")
  SetPoint(s,self,self.cfg.addpowerbar.point)

  local bg = s:CreateTexture(nil, "BACKGROUND")
  bg:SetTexture(L.C.texture)
  bg:SetAllPoints()
  s.bg = bg

  s.colorPower = self.cfg.addpowerbar.colorPower
  s.bg.multiplier = 1
  return s
end
L.F.CreateAdditionalPowerBar = CreateAdditionalPowerBar

local function CreatePowerBar(self)
  if not self.cfg.powerbar or not self.cfg.powerbar.enabled then return end

  local pp = CreateFrame("StatusBar", nil, self, BackdropTemplateMixin and "BackdropTemplate")
  pp:SetSize(unpack(self.cfg.powerbar.size))
  pp:SetStatusBarTexture(L.C.texture)
  pp:SetOrientation(self.cfg.powerbar.orientation or "HORIZONTAL")
  SetPoint(pp, self, self.cfg.powerbar.point)
  pp:GetStatusBarTexture():SetHorizTile(true)
  pp:SetFrameLevel(3)
  pp.frequentUpdates = true
  pp.Smooth = true
  pp.colorPower = true
  pp.colorClass = false
  pp:SetAlpha(.8)

  local border = CreateFrame("Frame", nil, pp, BackdropTemplateMixin and "BackdropTemplate")
  border:SetPoint("TOPLEFT", pp, "TOPLEFT", -1, 1)
  border:SetPoint("BOTTOMRIGHT", pp, "BOTTOMRIGHT", 1, -1)
  border:SetBackdrop(backdrop)
  border:SetBackdropBorderColor(unpack(L.C.colors.power.border))
  border:SetFrameLevel(3)
  self.Glow.pp = border

  local bg = pp:CreateTexture(nil, "BACKGROUND")
  bg:SetTexture(L.C.texture)
  bg:SetAllPoints()
  bg.multiplier = .4
  bg:SetAlpha(.5)
  pp.bg = bg

  return pp
end
L.F.CreatePowerBar = CreatePowerBar

local function SetCastBarColorShielded(self)
  self.__owner:SetStatusBarColor(unpack(L.C.colors.cast.shielded))
  self.__owner.bg:SetVertexColor(unpack(L.C.colors.cast.shieldedBG))
end

local function SetCastBarColorDefault(self)
  self.__owner:SetStatusBarColor(unpack(L.C.colors.cast.default))
  self.__owner.bg:SetVertexColor(unpack(L.C.colors.cast.defaultBG))
end

local function CreateCastBar(self)
  if not self.cfg.castbar or not self.cfg.castbar.enabled then return end

  local cast = CreateFrame("StatusBar", nil, self)
  cast:SetStatusBarTexture(L.C.texture)
  cast:SetFrameStrata("MEDIUM")
  cast:SetSize(unpack(self.cfg.castbar.size))
  cast:SetOrientation(self.cfg.castbar.orientation or "HORIZONTAL")
  SetPoint(cast,self,self.cfg.castbar.point)
  cast:SetStatusBarColor(unpack(L.C.colors.cast.default))
  cast:SetFrameLevel(4)

  local bg = cast:CreateTexture(nil, "BACKGROUND")
  bg:SetTexture(L.C.texture)
  bg:SetAllPoints()
  bg:SetVertexColor(unpack(L.C.colors.cast.defaultBG))
  cast.bg = bg

  local border = CreateFrame("Frame", nil, cast, BackdropTemplateMixin and "BackdropTemplate")
  border:SetPoint("TOPLEFT", cast, "TOPLEFT", -1, 1)
  border:SetPoint("BOTTOMRIGHT", cast, "BOTTOMRIGHT", 1, -1)
  border:SetBackdrop(backdrop)
  border:SetBackdropBorderColor(unpack(L.C.colors.cast.border))
  self.Glow.cast = border

  if self.cfg.castbar.icon and self.cfg.castbar.icon.enabled then
    local i = cast:CreateTexture(nil,"BACKGROUND",nil,-7)
    i:SetSize(self.cfg.castbar.icon.size, self.cfg.castbar.icon.size)
    SetPoint(i, cast, self.cfg.castbar.icon.point)
    if self.cfg.castbar.icon.texCoord then
      i:SetTexCoord(unpack(self.cfg.castbar.icon.texCoord))
    else
      i:SetTexCoord(0.1, 0.9, 0.1, 0.9)
    end
    cast.Icon = i

    local iborder = CreateFrame("Frame", nil, cast, BackdropTemplateMixin and "BackdropTemplate")
    iborder:SetPoint("TOPLEFT", i, "TOPLEFT", -1, 1)
    iborder:SetPoint("BOTTOMRIGHT", i, "BOTTOMRIGHT", 1, -1)
    iborder:SetBackdrop(backdrop)
    iborder:SetBackdropBorderColor(unpack(L.C.colors.cast.border))
    self.Glow.casticon = iborder
  end

  local shield = cast:CreateTexture(nil,"BACKGROUND",nil,-7)
  shield.__owner = cast
  cast.Shield = shield

  hooksecurefunc(shield, "Show", SetCastBarColorShielded)
  hooksecurefunc(shield, "Hide", SetCastBarColorDefault)

  if self.cfg.castbar.name and self.cfg.castbar.name.enabled then
    local cfg = self.cfg.castbar.name
    local name = CreateText(cast, L.C.font, cfg.size, cfg.outline, cfg.align, cfg.noshadow)
    if cfg.points then
      SetPoints(name, cast, cfg.points)
    else
      SetPoint(name, cast, cfg.point)
    end
    cast.Text = name
  end

  if self.cfg.castbar.timer and self.cfg.castbar.timer.enabled then
    local cfg = self.cfg.castbar.timer
    local timer = CreateText(cast, L.C.font, cfg.size, cfg.outline, cfg.align, cfg.noshadow)
    if cfg.points then
      SetPoints(timer, cast, cfg.points)
    else
      SetPoint(timer, cast, cfg.point)
    end
    cast.Time = timer
  end

  cast.PostCastStart = L.F.PostCastStart
  
  return cast
end
L.F.CreateCastBar = CreateCastBar

local function CreateRaidMark(self)
  if not self.cfg.raidmark or not self.cfg.raidmark.enabled then return end
  return CreateIcon(self.Health,"OVERLAY",-8,self.cfg.raidmark.size,self.cfg.raidmark.point)
end
L.F.CreateRaidMark = CreateRaidMark

local function CreateNameText(self)
  if not self.cfg.healthbar or not self.cfg.healthbar.name or not self.cfg.healthbar.name.enabled then return end
  local cfg = self.cfg.healthbar.name
  local text = CreateText(self.rAbsorbBar or self.Health,L.C.font,cfg.size,cfg.outline,cfg.align,cfg.noshadow)
  if cfg.points then
    SetPoints(text,self.rAbsorbBar or self.Health,cfg.points)
  else
    SetPoint(text,self.rAbsorbBar or self.Health,cfg.point)
  end
  self:Tag(text, cfg.tag)
end
L.F.CreateNameText = CreateNameText

local function CreateHealthText(self)
  if not self.cfg.healthbar or not self.cfg.healthbar.health or not self.cfg.healthbar.health.enabled then return end
  local cfg = self.cfg.healthbar.health
  local text = CreateText(self.rAbsorbBar or self.Health,L.C.font,cfg.size,cfg.outline,cfg.align,cfg.noshadow)
  if cfg.points then
    SetPoints(text,self.rAbsorbBar or self.Health,cfg.points)
  else
    SetPoint(text,self.rAbsorbBar or self.Health,cfg.point)
  end
  self:Tag(text, cfg.tag)
end
L.F.CreateHealthText = CreateHealthText

local function CreateStatusText(self)
  if not self.cfg.healthbar or not self.cfg.healthbar.status or not self.cfg.healthbar.status.enabled then return end
  local cfg = self.cfg.healthbar.status
  local text = CreateText(self.rAbsorbBar or self.Health,L.C.font,cfg.size,cfg.outline,cfg.align,cfg.noshadow)
  if cfg.points then
    SetPoints(text,self.rAbsorbBar or self.Health,cfg.points)
  else
    SetPoint(text,self.rAbsorbBar or self.Health,cfg.point)
  end
  self:Tag(text, cfg.tag)
end
L.F.CreateStatusText = CreateStatusText

local function CreatePowerText(self)
  if not self.cfg.powerbar or not self.cfg.powerbar.enabled or not self.cfg.powerbar.power or not self.cfg.powerbar.power.enabled then return end
  local cfg = self.cfg.powerbar.power
  local text = CreateText(self.Power,L.C.font,cfg.size,cfg.outline,cfg.align,cfg.noshadow)
  if cfg.points then
    SetPoints(text,self.Power, cfg.points)
  else
    SetPoint(text,self.Power, cfg.point)
  end
  self:Tag(text, cfg.tag)
end
L.F.CreatePowerText = CreatePowerText

local function PostCastStart(self, unit)
  if self.notInterruptible then
    self:SetStatusBarColor(unpack(L.C.colors.cast.shielded))
    self.bg:SetVertexColor(unpack(L.C.colors.cast.shieldedBG))
  else
    self:SetStatusBarColor(unpack(L.C.colors.cast.default))
    self.bg:SetVertexColor(unpack(L.C.colors.cast.defaultBG))
  end
end
L.F.PostCastStart = PostCastStart

local function PostCreateAura(self, button, isDebuff)
  local bg = button:CreateTexture(nil,"BACKGROUND",nil,-8)
  bg:SetTexture(L.C.texture)
  if isDebuff then
    bg:SetVertexColor(.8, 0, 0)
  else
    bg:SetVertexColor(0, 0, 0)
  end
  bg:SetPoint("TOPLEFT", -1, 1)
  bg:SetPoint("BOTTOMRIGHT", 1, -1)
  button.Icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
  button.Count:SetFont(L.C.font, self.size/1.65, "OUTLINE")
  button.Count:SetShadowColor(0, 0, 0, 0.6)
  button.Count:SetShadowOffset(1, -1)
  button.Count:ClearAllPoints()
  button.Count:SetPoint("BOTTOMRIGHT", self.size/10, -self.size/10)
  button.Cooldown:SetReverse(true)
  button:SetFrameStrata("LOW")
end

local function PostCreateDebuff(self, button)
  PostCreateAura(self, button, true)
end

local function CreateBuffs(self)
  if not self.cfg.buffs or not self.cfg.buffs.enabled then return end
  local cfg = self.cfg.buffs
  local frame = CreateFrame("Frame", nil, self)
  SetPoint(frame, self, cfg.point)
  frame.num = cfg.num
  frame.size = cfg.size
  frame.spacing = cfg.spacing
  frame.initialAnchor = cfg.initialAnchor
  frame["growth-x"] = cfg.growthX
  frame["growth-y"] = cfg.growthY
  frame.disableCooldown = cfg.disableCooldown
  frame.filter = cfg.filter
  frame.FilterAura = cfg.CustomFilter
  frame.PostCreateButton = cfg.PostCreateAura or PostCreateAura
  --frame.PostUpdateIcon = PostUpdateBuff
  frame:SetSize(CalcFrameSize(cfg.num,cfg.cols,cfg.size,cfg.size,cfg.spacing,0))
  --local t = frame:CreateTexture(nil,"BACKGROUND",nil,-8)
  --t:SetAllPoints()
  --t:SetColorTexture(0,1,0,0.2)
  return frame
end
L.F.CreateBuffs = CreateBuffs

local function CreateDebuffs(self)
  if not self.cfg.debuffs or not self.cfg.debuffs.enabled then return end
  local cfg = self.cfg.debuffs
  local frame = CreateFrame("Frame", nil, self)
  SetPoint(frame, self, cfg.point)
  frame.num = cfg.num
  frame.size = cfg.size
  frame.spacing = cfg.spacing
  frame.initialAnchor = cfg.initialAnchor
  frame["growth-x"] = cfg.growthX
  frame["growth-y"] = cfg.growthY
  frame.disableCooldown = cfg.disableCooldown
  frame.filter = cfg.filter
  frame.FilterAura = cfg.CustomFilter
  frame.PostCreateButton = cfg.PostCreateDebuff or PostCreateDebuff
  --frame.PostUpdateIcon = PostUpdateDebuff
  frame:SetSize(CalcFrameSize(cfg.num,cfg.cols,cfg.size,cfg.size,cfg.spacing,0))
  --local t = frame:CreateTexture(nil,"BACKGROUND",nil,-8)
  --t:SetAllPoints()
  --t:SetColorTexture(1,0,0,0.2)
  return frame
end
L.F.CreateDebuffs = CreateDebuffs

local function CreateAuraIndicators(self)
  if not self.cfg.auraIndicators or not L.C.auraIndicators or not L.C.auraIndicators.enabled then return end
  local _, englishClass, _ = UnitClass("player")
  local cfg = L.C.auraIndicators[englishClass]
  if not cfg then return end

  local auraIndicators = {}
  for i, v in ipairs(cfg) do
    local indicator = L.AI.CreateIndicator(self, v)
    indicator:Hide()
    table.insert(auraIndicators, indicator)
  end
  self.auraIndicators = auraIndicators

  self:RegisterEvent("UNIT_AURA", L.F.UpdateAuraIndicator, false)
end
L.F.CreateAuraIndicators = CreateAuraIndicators

local function SetupHeader(self)
  if not self.settings.setupHeader then return end
  self:RegisterForClicks("AnyDown")
  self:SetScript("OnEnter", UnitFrame_OnEnter)
  self:SetScript("OnLeave", UnitFrame_OnLeave)
end
L.F.SetupHeader = SetupHeader

local function SetupFrame(self)
  if not self.settings.setupFrame then return end
  self:SetSize(unpack(self.cfg.size))
  SetPoint(self,nil,self.cfg.point)
  self:SetScale(self.cfg.scale)
end
L.F.SetupFrame = SetupFrame

local function CreateDragFrame(self)
  if not self.settings.createDrag then return end
  rLib:CreateDragFrame(self, L.dragFrames, -2, true)
end
L.F.CreateDragFrame = CreateDragFrame
