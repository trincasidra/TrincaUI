
-- oUF_Simple: templates/focus
-- zork, 2016

-----------------------------
-- Variables
-----------------------------

local A, L = ...

-----------------------------
-- CreateFocusStyle
-----------------------------

if not L.C.focus or not L.C.focus.enabled or C_AddOns.IsAddOnLoaded("Cell_UnitFrames") then return end

local function CreateFocusStyle(self)
  --config
  self.cfg = L.C.focus
  --settings
  self.settings = {}
  self.settings.template = "focus"
  self.settings.setupFrame = true
  self.settings.setupHeader = true
  self.settings.createDrag = false
  --style
  L.F.CreateStyle(self)
end
L.F.CreateFocusStyle = CreateFocusStyle
