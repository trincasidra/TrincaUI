
-- oUF_Simple: templates/pet
-- zork, 2016

-----------------------------
-- Variables
-----------------------------

local A, L = ...

-----------------------------
-- CreatePlayerStyle
-----------------------------

local function CreatePlayerStyle(self)
  --config
  self.cfg = L.C.player
  --settings
  self.settings = {}
  self.settings.template = "player"
  self.settings.setupFrame = true
  self.settings.setupHeader = true
  self.settings.createDrag = true
  --style
  L.F.CreateStyle(self)
end
L.F.CreatePlayerStyle = CreatePlayerStyle
