-- oUF_Simple: templates/nameplate
-- zork, 2016

-----------------------------
-- Variables
-----------------------------

local A, L = ...

-----------------------------
-- CreateNamePlateStyle
-----------------------------

if not L.C.nameplate or not L.C.nameplate.enabled or C_AddOns.IsAddOnLoaded("Plater") or C_AddOns.IsAddOnLoaded("TidyPlates") or C_AddOns.IsAddOnLoaded("Kui_Nameplates") then return end

-- Handle widget nameplates (like places to turn in things)
local function NamePlateCallback(nameplate, event, unit)
    if event == 'NAME_PLATE_UNIT_ADDED' then
        nameplate.blizzPlate = nameplate:GetParent().UnitFrame
        nameplate.widgetsOnly = UnitNameplateShowsWidgetsOnly(unit)
        nameplate.widgetSet = UnitWidgetSet(unit)
        if nameplate.widgetsOnly then
            nameplate.Health:SetAlpha(0)
            nameplate.widgetContainer = nameplate.blizzPlate.WidgetContainer
            if nameplate.widgetContainer then
                nameplate.widgetContainer:SetParent(nameplate)
                nameplate.widgetContainer:ClearAllPoints()
                nameplate.widgetContainer:SetPoint('BOTTOM', nameplate, 'BOTTOM')
            end
        end
    elseif event == 'NAME_PLATE_UNIT_REMOVED' then
        if nameplate.widgetsOnly and nameplate.widgetContainer then
            nameplate.Health:SetAlpha(1)
            nameplate.widgetContainer:SetParent(nameplate.blizzPlate)
            nameplate.widgetContainer:ClearAllPoints()
            nameplate.widgetContainer:SetPoint('TOP', nameplate.blizzPlate.castBar, 'BOTTOM')
        end
    end
end
L.C.NamePlateCallback = NamePlateCallback

local function CreateNamePlateStyle(self)
    --config
    self.cfg = L.C.nameplate
    --settings
    self.settings = {}
    self.settings.template = "nameplate"
    self.settings.setupFrame = true
    self.settings.setupHeader = false
    self.settings.createDrag = false
    --style
    L.F.CreateStyle(self)
end
L.F.CreateNamePlateStyle = CreateNamePlateStyle
