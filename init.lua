local A, L = ...
local rLib = L.rLib

L.addonName       = A
L.dragFrames      = {}
L.addonColor      = "00FF3300"
L.hider           = CreateFrame("Frame", nil, UIParent)

local SharedMedia = LibStub("LibSharedMedia-3.0")
if SharedMedia then
  SharedMedia:Register("font", "Expressway", "Interface\\AddOns\\"..L.addonName.."\\media\\Expressway.ttf")
end

print("|c"..L.addonColor..L.addonName.."|r loaded.")
