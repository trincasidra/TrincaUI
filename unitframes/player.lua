
-- oUF_Simple: templates/pet
-- zork, 2016

-----------------------------
-- Variables
-----------------------------

local A, L = ...

-----------------------------
-- CreatePlayerStyle
-----------------------------

if C_AddOns.IsAddOnLoaded("Cell_UnitFrames") then return end

local function CreatePlayerStyle(self)
  --config
  self.cfg = L.C.player
  --settings
  self.settings = {}
  self.settings.template = "player"
  self.settings.setupFrame = true
  self.settings.setupHeader = true
  self.settings.createDrag = false
  --style
  L.F.CreateStyle(self)
end
L.F.CreatePlayerStyle = CreatePlayerStyle
