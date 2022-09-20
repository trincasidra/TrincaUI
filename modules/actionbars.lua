local A, L = ...

local rLib = L.rLib

if L.C.fade.actionBar1 then
    local function ShowActionBar1()
        MainMenuBar:SetAlpha(.9)
    end
    MainMenuBar:SetScript("OnEnter", ShowActionBar1)
    ActionButton1:SetScript("OnEnter", ShowActionBar1)
    ActionButton2:SetScript("OnEnter", ShowActionBar1)
    ActionButton3:SetScript("OnEnter", ShowActionBar1)
    ActionButton4:SetScript("OnEnter", ShowActionBar1)
    ActionButton5:SetScript("OnEnter", ShowActionBar1)
    ActionButton6:SetScript("OnEnter", ShowActionBar1)
    ActionButton7:SetScript("OnEnter", ShowActionBar1)
    ActionButton8:SetScript("OnEnter", ShowActionBar1)
    ActionButton9:SetScript("OnEnter", ShowActionBar1)
    ActionButton10:SetScript("OnEnter", ShowActionBar1)
    ActionButton11:SetScript("OnEnter", ShowActionBar1)
    ActionButton12:SetScript("OnEnter", ShowActionBar1)

    local actionbar1lasttime = 0
    local function HideActionBar1()
        if MainMenuBar:IsMouseOver() then return end
        if time() == actionbar1lasttime then return end
        MainMenuBar:SetAlpha(0)
    end
    local function SetActionBar1Timer()
        actionbar1lasttime = time()
        C_Timer.After(1.5, HideActionBar1)
    end
    
    MainMenuBar:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton1:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton2:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton3:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton4:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton5:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton6:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton7:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton8:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton9:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton10:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton11:SetScript("OnLeave", SetActionBar1Timer)
    ActionButton12:SetScript("OnLeave", SetActionBar1Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar1)
    HideActionBar1()
end

if L.C.fade.actionBar2 then
    local function ShowActionBar2()
        MultiBarBottomLeft:SetAlpha(.9)
    end
    MultiBarBottomLeft:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton1:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton2:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton3:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton4:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton5:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton6:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton7:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton8:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton9:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton10:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton11:SetScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton12:SetScript("OnEnter", ShowActionBar2)
    
    local actionbar2lasttime = 0
    local function HideActionBar2()
        if MultiBarBottomLeft:IsMouseOver() then return end
        if time() == actionbar2lasttime then return end
        MultiBarBottomLeft:SetAlpha(0)
    end
    local function SetActionBar2Timer()
        actionbar2lasttime = time()
        C_Timer.After(1.5, HideActionBar2)
    end
    
    MultiBarBottomLeft:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton1:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton2:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton3:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton4:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton5:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton6:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton7:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton8:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton9:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton10:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton11:SetScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton12:SetScript("OnLeave", SetActionBar2Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar2)
    HideActionBar2()
end

if L.C.fade.actionBar3 then
    local function ShowActionBar3()
        MultiBarBottomRight:SetAlpha(.9)
    end
    MultiBarBottomRight:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton1:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton2:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton3:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton4:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton5:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton6:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton7:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton8:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton9:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton10:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton11:SetScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton12:SetScript("OnEnter", ShowActionBar3)
    
    local actionbar3lasttime = 0
    local function HideActionBar3()
        if MultiBarBottomRight:IsMouseOver() then return end
        if time() == actionbar3lasttime then return end
        MultiBarBottomRight:SetAlpha(0)
    end
    local function SetActionBar3Timer()
        actionbar3lasttime = time()
        C_Timer.After(1.5, HideActionBar3)
    end
    
    MultiBarBottomRight:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton1:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton2:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton3:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton4:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton5:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton6:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton7:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton8:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton9:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton10:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton11:SetScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton12:SetScript("OnLeave", SetActionBar3Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar3)
    HideActionBar3()
end

if L.C.fade.actionBar4 then
    local function ShowActionBar4()
        MultiBarLeft:SetAlpha(.9)
    end
    MultiBarLeft:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton1:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton2:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton3:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton4:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton5:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton6:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton7:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton8:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton9:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton10:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton11:SetScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton12:SetScript("OnEnter", ShowActionBar4)
    
    local actionbar4lasttime = 0
    local function HideActionBar4()
        if MultiBarLeft:IsMouseOver() then return end
        if time() == actionbar4lasttime then return end
        MultiBarLeft:SetAlpha(0)
    end
    local function SetActionBar4Timer()
        actionbar4lasttime = time()
        C_Timer.After(1.5, HideActionBar4)
    end
    
    MultiBarLeft:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton1:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton2:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton3:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton4:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton5:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton6:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton7:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton8:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton9:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton10:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton11:SetScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton12:SetScript("OnLeave", SetActionBar4Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar4)
    HideActionBar4()
end

if L.C.fade.actionBar5 then
    local function ShowActionBar5()
        MultiBarRight:SetAlpha(.9)
    end
    MultiBarRight:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton1:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton2:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton3:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton4:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton5:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton6:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton7:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton8:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton9:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton10:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton11:SetScript("OnEnter", ShowActionBar5)
    MultiBarRightButton12:SetScript("OnEnter", ShowActionBar5)
    
    local actionbar5lasttime = 0
    local function HideActionBar5()
        if MultiBarRight:IsMouseOver() then return end
        if time() == actionbar5lasttime then return end
        MultiBarRight:SetAlpha(0)
    end
    local function SetActionBar5Timer()
        actionbar5lasttime = time()
        C_Timer.After(1.5, HideActionBar5)
    end
    
    MultiBarRight:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton1:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton2:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton3:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton4:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton5:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton6:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton7:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton8:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton9:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton10:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton11:SetScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton12:SetScript("OnLeave", SetActionBar5Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar5)
    HideActionBar5()
end
