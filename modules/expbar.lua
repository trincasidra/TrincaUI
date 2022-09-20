local A, L = ...

local rLib = L.rLib

if L.C.fade.expBar then
    StatusTrackingBarManager:SetAlpha(0)

    local function ShowExpBar()
        StatusTrackingBarManager:SetAlpha(.9)
    end
    StatusTrackingBarManager:SetScript("OnEnter", ShowExpBar)
    
    local expbarlasttime = 0
    local function HideExpBar()
        if StatusTrackingBarManager:IsMouseOver() then return end
        if time() == expbarlasttime then return end
        StatusTrackingBarManager:SetAlpha(0)
    end
    local function SetExpBarTimer()
        expbarlasttime = time()
        C_Timer.After(1.5, HideExpBar)
    end
    StatusTrackingBarManager:SetScript("OnLeave", SetExpBarTimer)
    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideExpBar)
    HideExpBar()
end
