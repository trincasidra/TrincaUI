
-- oUF_Simple: templates/party
-- zork, 2016

-----------------------------
-- Variables
-----------------------------

local A, L = ...

-----------------------------
-- CreatePartyStyle
-----------------------------

if not L.C.party or not L.C.party.enabled or C_AddOns.IsAddOnLoaded("Cell") then return end

local function CreatePartyStyle(self)
  --config
  self.cfg = L.C.party
  --settings
  self.settings = {}
  self.settings.template = "party"
  self.settings.setupFrame = false
  self.settings.setupHeader = true
  self.settings.createDrag = false
  self.Range = {
      insideAlpha = 1,
      outsideAlpha = 1/2,
  }
  --style
  L.F.CreateStyle(self)
end
L.F.CreatePartyStyle = CreatePartyStyle
