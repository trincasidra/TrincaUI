local A, L = ...
local oUF = L.oUF
if not oUF then return end

local bleeds = L.bleeds
local playerClass = select(2, UnitClass("player"))
local cauterizingFlameId = 374251
local canDispel = {
    PRIEST = { Magic = true, Disease = true, },
    SHAMAN = { Magic = true, Curse = true, },
    PALADIN = { Magic = true, Poison = true, Disease = true, },
    MAGE = { Curse = true, },
    DRUID = { Magic = true, Curse = true, Poison = true, },
    MONK = { Magic = true, Disease = true, Poison = true, },
    EVOKER = { Magic = true, Poison = true, }
}
local omniDispel = { Magic = true, Disease = true, Curse = true, Poison = true, Bleed = true, } -- Bleed doesn't actually exist
local dispelList = canDispel[playerClass] or {}
local origColors = {}
local origBorderColors = {}
local DebuffTypeColor, UnitAura, unpack, IsSpellUsable, GetSpellCooldown = DebuffTypeColor,
    C_UnitAuras.GetAuraDataByIndex, unpack, C_Spell.IsSpellUsable, C_Spell.GetSpellCooldown

local function GetDebuffType(unit, filter)
    for i = 1, 40 do
        local aura = UnitAura(unit, i, "HARMFUL")
        if aura then
            if aura.icon and aura.dispelName and not filter then
                return aura.dispelName, aura.icon
            elseif aura.icon and not aura.dispelName and not filter and bleeds[aura.spellId] then
                return 'Bleed', aura.icon
            end
        end
    end
end

local function Update(self, event, unit)
    if self.unit ~= unit then return end
    local cfg = dispelList
    if playerClass == 'EVOKER' and IsSpellUsable(cauterizingFlameId) then
        local cauterizingFlameCooldown = GetSpellCooldown(cauterizingFlameId)
        if cauterizingFlameCooldown.duration == 0 then
            cfg = omniDispel
        end
    end
    local debuffType, texture = GetDebuffType(unit, self.DebuffHighlightFilter)
    if cfg and cfg[debuffType] and debuffType and UnitIsFriend('player', unit) and UnitIsPlayer(unit) then
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
