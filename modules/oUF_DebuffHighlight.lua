local A, L = ...
local oUF = L.oUF
if not oUF then return end

local playerClass = select(2,UnitClass("player"))
local canDispel = {
  PRIEST = { Magic = true, Disease = true, },
  SHAMAN = { Magic = true, Curse = true, },
  PALADIN = { Magic = true, Poison = true, Disease = true, },
  MAGE = { Curse = true, },
  DRUID = { Magic = true, Curse = true, Poison = true, },
  MONK = { Magic = true, Disease = true, Poison = true, }
}
local dispelList = canDispel[playerClass] or {}
local origColors = {}
local origBorderColors = {}
local DebuffTypeColor, UnitAura, unpack = DebuffTypeColor, UnitAura, unpack

local function GetDebuffType(unit, filter)
  for i = 1, 40 do
    local _, texture, _, debuffType = UnitAura(unit, i, "HARMFUL")
    if not texture then
      return
    end
    if debuffType and not filter or (filter and dispelList[debuffType]) then
      return debuffType, texture
    end
  end
end

local function Update(self, event, unit)
  if self.unit ~= unit then return end
  local debuffType, texture = GetDebuffType(unit, self.DebuffHighlightFilter)
  if debuffType and UnitIsFriend('player', unit) and UnitIsPlayer(unit) then
    local color = L.C.colors.debuffhighlight[debuffType]
    if self.DebuffHighlight then
      self.DebuffHighlight:SetBackdropColor(color.r, color.g, color.b, color.a)
      self.DebuffHighlight:SetBackdropBorderColor(color.r, color.g, color.b, 1)
    end
  else
    if self.DebuffHighlight then
      self.DebuffHighlight:SetBackdropColor(0, 0, 0, 0)
      self.DebuffHighlight:SetBackdropBorderColor(0, 0, 0, 0)
    end
  end
end

local function Enable(self)
  if not self.DebuffHighlight then return end
  if self.DebuffHighlightFilter and not canDispel[playerClass] then return end
  self:RegisterEvent("UNIT_AURA", Update)
  return true
end

local function Disable(self)
  if self.DebuffHighlight then
    self:UnregisterEvent("UNIT_AURA", Update)
  end
end

oUF:AddElement("DebuffHighlight", Update, Enable, Disable)
