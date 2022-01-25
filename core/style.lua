--Revamped for oUF_Trinca
local A, L = ...
local oUF = L.oUF
if not oUF then return end

local function CreateStyle(self)
  if L.C.colors.disconnected then self.colors.disconnected = L.C.colors.disconnected end
  if L.C.colors.tapped then self.colors.tapped = L.C.colors.tapped end

  if L.C.colors.power then
    -- Other self.colors.power not changed: CHI, RUNES, FUEL, ARCANE_CHARGES, SOUL_SHARDS, AMMOSLOT
    if L.C.colors.power.pain then self.colors.power["PAIN"] = L.C.colors.power.pain end
    if L.C.colors.power.alternative then self.colors.power["ALTERNATE"] = L.C.colors.power.alternative end
    if L.C.colors.power.combo then self.colors.power["COMBO_POINTS"] = L.C.colors.power.combo end
    if L.C.colors.power.focus then self.colors.power["FOCUS"] = L.C.colors.power.focus end
    if L.C.colors.power.energy then self.colors.power["ENERGY"] = L.C.colors.power.energy end
    if L.C.colors.power.mana then self.colors.power["MANA"] = L.C.colors.power.mana end
    if L.C.colors.power.maelstrom then self.colors.power["MAELSTROM"] = L.C.colors.power.maelstrom end
    if L.C.colors.power.insanity then self.colors.power["INSANITY"] = L.C.colors.power.insanity end
    if L.C.colors.power.runic then self.colors.power["RUNIC_POWER"] = L.C.colors.power.runic end
    if L.C.colors.power.fury then self.colors.power["FURY"] = L.C.colors.power.fury end
    if L.C.colors.power.holy then self.colors.power["HOLY_POWER"] = L.C.colors.power.holy end
    if L.C.colors.power.astral then self.colors.power["LUNAR_POWER"] = L.C.colors.power.astral end
    if L.C.colors.power.rage then self.colors.power["RAGE"] = L.C.colors.power.rage end
  end

  if L.C.colors.reaction then
    if L.C.colors.reaction.harm then
      self.colors.reaction[1] = L.C.colors.reaction.harm
      self.colors.reaction[2] = L.C.colors.reaction.harm
      self.colors.reaction[3] = L.C.colors.reaction.harm
    end
    if L.C.colors.reaction.neutral then self.colors.reaction[4] = L.C.colors.reaction.neutral end
    if L.C.colors.reaction.help then
      self.colors.reaction[5] = L.C.colors.reaction.help
      self.colors.reaction[6] = L.C.colors.reaction.help
      self.colors.reaction[7] = L.C.colors.reaction.help
      self.colors.reaction[8] = L.C.colors.reaction.help
      self.colors.reaction[8] = L.C.colors.reaction.help
    end
  end

  if L.C.colors.threat then
    if L.C.colors.threat.lowthreat then self.colors.threat[0] = L.C.colors.threat.lowthreat end
    if L.C.colors.threat.highthreat then self.colors.threat[1] = L.C.colors.threat.highthreat end
    if L.C.colors.threat.tanking then self.colors.threat[2] = L.C.colors.threat.tanking end
    if L.C.colors.threat.tanking then self.colors.threat[3] = L.C.colors.threat.tanking end
  end

  L.F.SetupFrame(self)
  L.F.SetupHeader(self)
  self.Health = L.F.CreateHealthBar(self)
  self.rAbsorbBar = L.F.CreateAbsorbBar(self)
  L.F.CreateNameText(self)
  L.F.CreateHealthText(self)
  self.Power = L.F.CreatePowerBar(self)
  L.F.CreatePowerText(self)
  self.Castbar = L.F.CreateCastBar(self)
  self.rClassBar = L.F.CreateClassBar(self)
  self.AlternativePower = L.F.CreateAltPowerBar(self)
  self.AdditionalPower = L.F.CreateAdditionalPowerBar(self)
  self.Debuffs = L.F.CreateDebuffs(self)
  self.Buffs = L.F.CreateBuffs(self)
  self.RaidTargetIndicator = L.F.CreateRaidMark(self)
  self.AuraIndicators = L.F.CreateAuraIndicators(self)
end
L.F.CreateStyle = CreateStyle
