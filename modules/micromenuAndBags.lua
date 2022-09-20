local A, L = ...

local rLib = L.rLib

local unpack = unpack

if L.C.microMenuAndBagsPosition then
    MicroButtonAndBagsBar:ClearAllPoints()
    MicroButtonAndBagsBar:SetPoint(unpack(L.C.microMenuAndBagsPosition))
end

if L.C.fade.microMenuAndBags then
    MicroButtonAndBagsBar:SetAlpha(0)

    local function ShowBagsAndMicromenu()
        MicroButtonAndBagsBar:SetAlpha(.9)
    end
    MicroButtonAndBagsBar:SetScript("OnEnter", ShowBagsAndMicromenu)
    
    local baglasttime = 0
    local function HideBagsAndMicromenu()
        if MicroButtonAndBagsBar:IsMouseOver() then return end
        if time() == baglasttime then return end
        MicroButtonAndBagsBar:SetAlpha(0)
    end
    local function SetBagsAndMicromenuTimer()
        baglasttime = time()
        C_Timer.After(1.5, HideBagsAndMicromenu)
    end
    MicroButtonAndBagsBar:SetScript("OnLeave", SetBagsAndMicromenuTimer)
    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideBagsAndMicromenu)
    HideBagsAndMicromenu(MicroButtonAndBagsBar)
end