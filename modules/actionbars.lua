local A, L = ...

local rLib = L.rLib

if L.C.fade.actionBar1 then
--[[
    local initialAnchor, anchorFrame, anchorTo, xOffset, yOffset = unpack(L.C.player.point)
    MainMenuBarVehicleLeaveButton:SetParent(UiParent)
    MainMenuBarVehicleLeaveButton:ClearAllPoints()
    MainMenuBarVehicleLeaveButton:SetScale(.8)
    MainMenuBarVehicleLeaveButton:SetPoint(initialAnchor, anchorFrame, anchorTo, xOffset - 100, yOffset)
]]

    local function ShowActionBar1()
        MainMenuBar:SetAlpha(.9)
    end
    MainMenuBar:HookScript("OnEnter", ShowActionBar1)
    ActionButton1:HookScript("OnEnter", ShowActionBar1)
    ActionButton2:HookScript("OnEnter", ShowActionBar1)
    ActionButton3:HookScript("OnEnter", ShowActionBar1)
    ActionButton4:HookScript("OnEnter", ShowActionBar1)
    ActionButton5:HookScript("OnEnter", ShowActionBar1)
    ActionButton6:HookScript("OnEnter", ShowActionBar1)
    ActionButton7:HookScript("OnEnter", ShowActionBar1)
    ActionButton8:HookScript("OnEnter", ShowActionBar1)
    ActionButton9:HookScript("OnEnter", ShowActionBar1)
    ActionButton10:HookScript("OnEnter", ShowActionBar1)
    ActionButton11:HookScript("OnEnter", ShowActionBar1)
    ActionButton12:HookScript("OnEnter", ShowActionBar1)

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
    
    MainMenuBar:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton1:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton2:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton3:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton4:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton5:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton6:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton7:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton8:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton9:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton10:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton11:HookScript("OnLeave", SetActionBar1Timer)
    ActionButton12:HookScript("OnLeave", SetActionBar1Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar1)
    HideActionBar1()
end

if L.C.fade.actionBar2 then
    local function ShowActionBar2()
        MultiBarBottomLeft:SetAlpha(.9)
    end
    MultiBarBottomLeft:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton1:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton2:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton3:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton4:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton5:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton6:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton7:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton8:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton9:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton10:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton11:HookScript("OnEnter", ShowActionBar2)
    MultiBarBottomLeftButton12:HookScript("OnEnter", ShowActionBar2)
    
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
    
    MultiBarBottomLeft:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton1:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton2:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton3:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton4:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton5:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton6:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton7:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton8:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton9:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton10:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton11:HookScript("OnLeave", SetActionBar2Timer)
    MultiBarBottomLeftButton12:HookScript("OnLeave", SetActionBar2Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar2)
    HideActionBar2()
end

if L.C.fade.actionBar3 then
    local function ShowActionBar3()
        MultiBarBottomRight:SetAlpha(.9)
    end
    MultiBarBottomRight:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton1:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton2:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton3:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton4:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton5:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton6:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton7:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton8:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton9:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton10:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton11:HookScript("OnEnter", ShowActionBar3)
    MultiBarBottomRightButton12:HookScript("OnEnter", ShowActionBar3)
    
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
    
    MultiBarBottomRight:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton1:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton2:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton3:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton4:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton5:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton6:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton7:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton8:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton9:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton10:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton11:HookScript("OnLeave", SetActionBar3Timer)
    MultiBarBottomRightButton12:HookScript("OnLeave", SetActionBar3Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar3)
    HideActionBar3()
end

if L.C.fade.actionBar4 then
    local function ShowActionBar4()
        MultiBarLeft:SetAlpha(.9)
    end
    MultiBarLeft:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton1:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton2:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton3:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton4:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton5:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton6:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton7:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton8:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton9:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton10:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton11:HookScript("OnEnter", ShowActionBar4)
    MultiBarLeftButton12:HookScript("OnEnter", ShowActionBar4)
    
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
    
    MultiBarLeft:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton1:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton2:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton3:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton4:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton5:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton6:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton7:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton8:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton9:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton10:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton11:HookScript("OnLeave", SetActionBar4Timer)
    MultiBarLeftButton12:HookScript("OnLeave", SetActionBar4Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar4)
    HideActionBar4()
end

if L.C.fade.actionBar5 then
    local function ShowActionBar5()
        MultiBarRight:SetAlpha(.9)
    end
    MultiBarRight:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton1:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton2:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton3:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton4:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton5:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton6:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton7:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton8:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton9:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton10:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton11:HookScript("OnEnter", ShowActionBar5)
    MultiBarRightButton12:HookScript("OnEnter", ShowActionBar5)
    
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
    
    MultiBarRight:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton1:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton2:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton3:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton4:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton5:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton6:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton7:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton8:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton9:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton10:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton11:HookScript("OnLeave", SetActionBar5Timer)
    MultiBarRightButton12:HookScript("OnLeave", SetActionBar5Timer)

    rLib:RegisterCallback("PLAYER_ENTERING_WORLD", HideActionBar5)
    HideActionBar5()
end
