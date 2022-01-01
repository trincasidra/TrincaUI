--Revamped for oUF_Trinca
local A, L = ...
local oUF = L.oUF
if not oUF then return end

local function CreateStyle(self)
  -- Other powers: CHI, RUNES, FUEL, ARCANE_CHARGES, SOUL_SHARDS, AMMOSLOT
  self.colors.power["PAIN"] = L.C.colors.power.pain
  self.colors.power["ALTERNATE"] = L.C.colors.power.alternative
  self.colors.power["COMBO_POINTS"] = L.C.colors.power.combo
  self.colors.power["FOCUS"] = L.C.colors.power.focus
  self.colors.power["ENERGY"] = L.C.colors.power.energy
  self.colors.power["MANA"] = L.C.colors.power.mana
  self.colors.power["MAELSTROM"] = L.C.colors.power.maelstrom
  self.colors.power["INSANITY"] = L.C.colors.power.insanity
  self.colors.power["RUNIC_POWER"] = L.C.colors.power.runic
  self.colors.power["FURY"] = L.C.colors.power.fury
  self.colors.power["HOLY_POWER"] = L.C.colors.power.holy
  self.colors.power["LUNAR_POWER"] = L.C.colors.power.astral
  self.colors.power["RAGE"] = L.C.colors.power.rage
  self.colors.reaction[1] = L.C.colors.reaction.harm
  self.colors.reaction[2] = L.C.colors.reaction.harm
  self.colors.reaction[3] = L.C.colors.reaction.harm
  self.colors.reaction[4] = L.C.colors.reaction.neutral
  self.colors.reaction[5] = L.C.colors.reaction.help
  self.colors.reaction[6] = L.C.colors.reaction.help
  self.colors.reaction[7] = L.C.colors.reaction.help
  self.colors.reaction[8] = L.C.colors.reaction.help
  self.colors.reaction[8] = L.C.colors.reaction.help
  self.colors.disconnected = L.C.colors.disconnected
  self.colors.tapped = L.C.colors.tapped
  self.colors.threat[0] = L.C.colors.threat.lowthreat
  self.colors.threat[1] = L.C.colors.threat.highthreat
  self.colors.threat[2] = L.C.colors.threat.unsafetanking
  self.colors.threat[3] = L.C.colors.threat.tanking

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
end
L.F.CreateStyle = CreateStyle
