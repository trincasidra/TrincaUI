local A, L = ...
local oUF = L.oUF
if not oUF then return end

local bleeds = L.bleeds
-- M+ Affix Debuffs which are not magic but are dispellable
local mythicplus = {
    440313 -- Void Rift
}
local playerClass = select(2, UnitClass("player"))
local poisonTotemId = 383013
local massDispelId = 32375
local cauterizingFlameId = 374251
local globalCooldownId = 61304
local dipelsBySpec = {
    -- Healers
    [105]  = { Magic = true, Curse = true, Poison = true, },   -- RDruid
    [1468] = { Magic = true, Poison = true, },                 -- Prevoker
    [270]  = { Magic = true, Disease = true, Poison = true, }, -- MW Monk
    [65]   = { Magic = true, Poison = true, Disease = true, }, -- HPala
    [256]  = { Magic = true, Disease = true, },                -- Disc
    [258]  = { Magic = true, Disease = true, },                -- HPriest
    [264]  = { Magic = true, Curse = true, },                  -- RSham
    -- Non-healers
    [102]  = { Curse = true, Poison = true, },                 -- Boomie
    [103]  = { Curse = true, Poison = true, },                 -- Cat
    [104]  = { Curse = true, Poison = true, },                 -- Bear
    [1467] = { Poison = true, },                               -- Devastation
    [1473] = { Poison = true, },                               -- Aug
    [62]   = { Curse = true, },                                -- Arcane
    [63]   = { Curse = true, },                                -- Fire
    [64]   = { Curse = true, },                                -- Frost Mage
    [268]  = { Disease = true, Poison = true, },               -- BM Monk
    [269]  = { Disease = true, Poison = true, },               -- WW Monk
    [66]   = { Disease = true, Poison = true, },               -- Prot Pal
    [70]   = { Disease = true, Poison = true, },               -- Ret
    [258]  = { Disease = true, },                              -- Shadow
    [262]  = { Curse = true, },                                -- Ele
    [263]  = { Curse = true, },                                -- Enhancement
    [265]  = { Magic = true, },                                -- Affli
    [267]  = { Magic = true, },                                -- Destro
}
local canDispel = {}
local canOmniDispel = false
local omniDispel = { Magic = true, Disease = true, Curse = true, Poison = true, Bleed = true, } -- Bleed doesn't actually exist but we will use a library for that
local origColors = {}
local origBorderColors = {}
local DebuffTypeColor, UnitAura, unpack, IsSpellKnown, GetSpellCooldown = DebuffTypeColor, C_UnitAuras.GetAuraDataByIndex, unpack, IsSpellKnown, C_Spell.GetSpellCooldown

local talentHandlerFrame = CreateFrame("FRAME", "TrincaUITalentChangeListener");
talentHandlerFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
talentHandlerFrame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED");
local function updateCurrentSpec(self, event, ...)
    local currentSpec = GetSpecialization()
    if currentSpec then
        local specId = GetSpecializationInfo(currentSpec)
        if specId then
            canDispel = dipelsBySpec[specId] or {}
        else
            canDispel = {}
        end
    else
        canDispel = {}
    end
    canPoisonTotem = playerClass == 'SHAMAN' and IsSpellKnown(poisonTotemId)
    canMassDispel  = playerClass == 'PRIEST' and IsSpellKnown(massDispelId)
    canOmniDispel  = playerClass == 'EVOKER' and IsSpellKnown(cauterizingFlameId)
end
talentHandlerFrame:SetScript("OnEvent", updateCurrentSpec);

local function isSpellOffCooldown(spellId)
    local spellCooldown = GetSpellCooldown(spellId)
    local gcd = GetSpellCooldown(globalCooldownId)
    return spellCooldown.startTime == 0 or spellCooldown.duration == gcd.duration
end

local function GetDebuffType(unit, filter)
    local cfg = canDispel
    if canPoisonTotem and isSpellOffCooldown(poisonTotemId)      then cfg.Poison = true end
    if canMassDispel  and isSpellOffCooldown(massDispelId)       then cfg.Magic  = true end
    if canOmniDispel  and isSpellOffCooldown(cauterizingFlameId) then cfg = omniDispel  end
    for i = 1, 40 do
        local aura = UnitAura(unit, i, "HARMFUL")
        if aura then
            if aura.icon and aura.dispelName and not filter and cfg[aura.dispelName] then
                return aura.dispelName, aura.icon
            elseif aura.icon and not aura.dispelName and not filter and bleeds[aura.spellId] and cfg['Bleed'] then
                return 'Bleed', aura.icon
            elseif aura.icon and not aura.dispelName and not filter and mythicplus[aura.spellId] and cfg['Magic'] then
                return 'Magic', aura.icon
            end
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
