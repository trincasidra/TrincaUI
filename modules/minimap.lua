local A, L = ...

local dummy = function() end
local unpack = unpack

--Somehow, if the minimap gets close to the screen bottom, the MultiBars will error trying to call SetScale with a negative value.
MultiBarLeft.SetScale = dummy
MultiBarRight.SetScale = dummy

MinimapCluster:ClearAllPoints()
MinimapCluster:SetPoint(unpack(L.C.minimapPoint))

Minimap:ClearAllPoints()
Minimap:SetPoint("CENTER")

ObjectiveTrackerFrame:SetPoint(unpack(L.C.objectiveTrackerPoint))
ObjectiveTrackerFrame.SetPoint = dummy

VehicleSeatIndicator:ClearAllPoints()
VehicleSeatIndicator:SetPoint(unpack(L.C.vehicleSeatIndicatorPoint))
VehicleSeatIndicator.ClearAllPoints = dummy
VehicleSeatIndicator.SetPoint = dummy

DurabilityFrame:ClearAllPoints()
DurabilityFrame:SetPoint(unpack(L.C.durabilityFramePoint))
DurabilityFrame.ClearAllPoints = dummy
DurabilityFrame.SetPoint = dummy
