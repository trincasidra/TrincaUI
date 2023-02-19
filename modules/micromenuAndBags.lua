local A, L = ...

local rLib = L.rLib

local unpack = unpack

local micromenuRegions = {
    CharacterMicroButton,
    SpellbookMicroButton,
    TalentMicroButton,
    AchievementMicroButton,
    QuestLogMicroButton,
    GuildMicroButton,
    LFDMicroButton,
    CollectionsMicroButton,
    EjMicroButton,
    StoreMicroButton,
    MainMenuMicroButton,
    MicroMenu
}

local bagRegions = {
    CharacterReagentBag0Slot,
    CharacterBag3Slot,
    CharacterBag2Slot,
    CharacterBag1Slot,
    CharacterBag0Slot,
    BagBarExpandToggle,
    MainMenuBarBackpackButton,
    BagsBar
}

if L.C.microMenuAndBagsPosition then
    MicroButtonAndBagsBar:ClearAllPoints()
    MicroButtonAndBagsBar:SetPoint(unpack(L.C.microMenuAndBagsPosition))
end

if L.C.fade.microMenuAndBags then
    MicroMenu:SetAlpha(0)
    BagsBar:SetAlpha(0)

    local function ShowMicromenu()
        MicroMenu:SetAlpha(.9)
    end
    for _, region in ipairs(micromenuRegions) do
        region:HookScript("OnEnter", ShowMicromenu)
    end

    local function ShowBags()
        BagsBar:SetAlpha(.9)
    end
    for _, region in ipairs(bagRegions) do
        region:HookScript("OnEnter", ShowBags)
    end
    
    local micromenulasttime = 0
    local function HideMicromenu()
        if MicroMenu:IsMouseOver() then return end
        if time() == micromenulasttime then return end
        MicroMenu:SetAlpha(0)
    end

    local baglasttime = 0
    local function HideBags()
        if BagsBar:IsMouseOver() then return end
        if time() == baglasttime then return end
        BagsBar:SetAlpha(0)
    end

    local function SetMicromenuTimer()
        micromenulasttime = time()
        C_Timer.After(1.5, HideMicromenu)
    end

    local function SetBagsTimer()
        baglasttime = time()
        C_Timer.After(1.5, HideBags)
    end

    for _, region in ipairs(micromenuRegions) do
        region:HookScript("OnLeave", SetMicromenuTimer)
    end
    for _, region in ipairs(bagRegions) do
        region:HookScript("OnLeave", SetBagsTimer)
    end

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideMicromenu)
    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideBags)

    HideMicromenu()
    HideBags()
end
