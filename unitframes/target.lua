
-- oUF_Simple: templates/target
-- zork, 2016

-----------------------------
-- Variables
-----------------------------

local A, L = ...

-----------------------------
-- CreateTargetStyle
-----------------------------

if not L.C.target or not L.C.target.enabled or C_AddOns.IsAddOnLoaded("Cell_UnitFrames") then return end

local function CreateTargetStyle(self)
  --config
  self.cfg = L.C.target
  --settings
  self.settings = {}
  self.settings.template = "target"
  self.settings.setupFrame = true
  self.settings.setupHeader = true
  self.settings.createDrag = false
  --style
  L.F.CreateStyle(self)
end
L.F.CreateTargetStyle = CreateTargetStyle