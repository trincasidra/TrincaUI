local A, L = ...
local floor, mod, format, unpack = floor, mod, format, unpack
local backdrop = { edgeFile = L.C.texture, edgeSize = 1 }

L.AI = {}

local function SetCount(button, count)
  if count and count > 1 then
    button.count:SetText(count)
  else
    button.count:SetText('')
  end
end

local function CreateIndicator(self, cfg)
  local unit = self.unit
  local spellid, colorHex, anchorTo = unpack(cfg)
  local color = CreateColorFromHexString(colorHex)

  local button = CreateFrame('Button', unit..'AuraIndicator'..spellid, self)
  button:SetPoint(anchorTo, self, anchorTo)
  button:SetSize(L.C.auraIndicators.iconSize, L.C.auraIndicators.iconSize)
  button:SetParent(self)
  button:SetFrameStrata("MEDIUM")

  local bg = button:CreateTexture(nil, "BACKGROUND")
  bg:SetTexture(L.C.texture)
  bg:SetAllPoints(button)
  bg:SetVertexColor(color.r, color.g, color.b)
  button.bg = bg

  local cd = CreateFrame('Cooldown', nil, button, 'CooldownFrameTemplate')
  cd:SetAllPoints(button)
  cd:SetReverse(true)
  cd:SetSwipeTexture('')
  cd:SetDrawBling(false)
  cd:SetEdgeTexture('', 0, 0, 0, 0)
  cd:SetScript('OnCooldownDone', function(self) self:GetParent():Hide() end)
  button.cd = cd

  local countFrame = CreateFrame('Frame', nil, button)
  countFrame:SetAllPoints(button)
  countFrame:SetFrameLevel(cd:GetFrameLevel() + 2)

  local count = countFrame:CreateFontString(nil, 'OVERLAY', 'NumberFontNormal')
  count:SetPoint('BOTTOMRIGHT', countFrame, 'BOTTOMRIGHT', 1, 1)
  count:SetFont(L.C.font, L.C.auraIndicators.fontSize, 'OUTLINE')
  button.count = count

  local border = CreateFrame("Frame", nil, button, BackdropTemplateMixin and "BackdropTemplate")
  border:SetPoint("TOPLEFT", button, "TOPLEFT", -backdrop.edgeSize, backdrop.edgeSize)
  border:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", backdrop.edgeSize, -backdrop.edgeSize)
  border:SetBackdrop(backdrop)
  border:SetBackdropBorderColor(0, 0, 0)
  border:SetFrameLevel(cd:GetFrameLevel() + 1)
  button.border = border

  button.settings = {
    spellid = spellid
  }

  return button
end
L.AI.CreateIndicator = CreateIndicator

local function UpdateIndicator(button, unit)
  if not unit then
    button:Hide()
    return
  end
  if unit and not UnitExists(unit) then
    button:Hide()
    return
  end
  local found = false
  AuraUtil.ForEachAura(unit, "HELPFUL|PLAYER", nil, function(_, _, count, _, duration, expirationTime, _, _, _, spellId, _, _, _, _, _, ...)
    if spellId == button.settings.spellid then
      button.cd:SetCooldown(expirationTime - duration, duration)
      SetCount(button, count)
      button:Show()
      found = true
      return true
    end
  end)
  AuraUtil.ForEachAura(unit, "HARMFUL|PLAYER", nil, function(_, _, count, _, duration, expirationTime, _, _, _, spellId, _, _, _, _, _, ...)
    if spellId == button.settings.spellid then
      button.cd:SetCooldown(expirationTime - duration, duration)
      SetCount(button, count)
      button:Show()
      found = true
      return true
    end
  end)
  if not found then
    button:Hide()
  end
end
L.AI.UpdateIndicator = UpdateIndicator
