local A, L = ...

local rLib = L.rLib
local rButtonTemplate = L.rButtonTemplate
local copyTable = rLib.CopyTable
local actionButtonConfig = {}
L.C.actionButtonConfig = actionButtonConfig

--Make the config available to rFilter_Zork
rButtonTemplate_Zork_ActionButtonConfig = actionButtonConfig

actionButtonConfig.icon = {
  texCoord = {.3, .7, .3, .7},
  points = {
    {"TOPLEFT", 0, 0 },
    {"BOTTOMRIGHT", 0, 0},
  },
}

actionButtonConfig.flyoutBorder = {
  file = ""
}

actionButtonConfig.flyoutBorderShadow = {
  file = ""
}

actionButtonConfig.border = {
  file = L.C.texture,
  blendMode = "ADD",
  sizeFactor = 1,
  texCoord = {0, 1, 0, 1}
}

actionButtonConfig.normalTexture = {
  file = ""
}

actionButtonConfig.cooldown = {
  points = {
    {"TOPLEFT", 0, 0 },
    {"BOTTOMRIGHT", 0, 0 },
  }
}

actionButtonConfig.name = {
  font = { L.C.font, 10, "OUTLINE"},
  points = {
    {"BOTTOMLEFT", 0, 0 },
    {"BOTTOMRIGHT", 0, 0 },
  },
  alpha = 0,
}

actionButtonConfig.hotkey = {
  font = { L.C.font, 10, "OUTLINE"},
  points = {
    {"TOPRIGHT", 0, 0 },
    {"TOPLEFT", 0, 0 },
  },
  alpha = 1,
}

actionButtonConfig.count = {
  font = { L.C.font, 14, "OUTLINE"},
  points = {
    {"BOTTOMRIGHT", 0, 0 },
  },
}

rButtonTemplate:StyleAllActionButtons(actionButtonConfig)
rButtonTemplate:StyleActionButton(_G["rActionBarVehicleExitButton"],actionButtonConfig)

local itemButtonConfig = {}
itemButtonConfig.backdrop = copyTable(actionButtonConfig.backdrop)
itemButtonConfig.icon = copyTable(actionButtonConfig.icon)
itemButtonConfig.count = copyTable(actionButtonConfig.count)
itemButtonConfig.stock = copyTable(actionButtonConfig.name)
itemButtonConfig.stock.alpha = 1
itemButtonConfig.border = copyTable(actionButtonConfig.border)
itemButtonConfig.normalTexture = copyTable(actionButtonConfig.normalTexture)
local itemButtons = { MainMenuBarBackpackButton, CharacterBag0Slot, CharacterBag1Slot, CharacterBag2Slot, CharacterBag3Slot }
for i, button in next, itemButtons do
  rButtonTemplate:StyleItemButton(button, itemButtonConfig)
end

local extraButtonConfig = copyTable(actionButtonConfig)
extraButtonConfig.buttonstyle = { file = "" }
rButtonTemplate:StyleExtraActionButton(extraButtonConfig)

local auraButtonConfig = {}
auraButtonConfig.backdrop = copyTable(actionButtonConfig.backdrop)
auraButtonConfig.icon = copyTable(actionButtonConfig.icon)
auraButtonConfig.border = copyTable(actionButtonConfig.border)
auraButtonConfig.normalTexture = copyTable(actionButtonConfig.normalTexture)
auraButtonConfig.count = copyTable(actionButtonConfig.count)
auraButtonConfig.duration = copyTable(actionButtonConfig.hotkey)
auraButtonConfig.duration.alpha = 1
auraButtonConfig.symbol = copyTable(actionButtonConfig.name)
auraButtonConfig.symbol.alpha = 1
rButtonTemplate:StyleBuffButtons(auraButtonConfig)
rButtonTemplate:StyleTempEnchants(auraButtonConfig)

local debuffButtonConfig = copyTable(auraButtonConfig)
debuffButtonConfig.count.font = { STANDARD_TEXT_FONT, 12.5, "OUTLINE"}
debuffButtonConfig.duration.font = { STANDARD_TEXT_FONT, 12.5, "OUTLINE"}
rButtonTemplate:StyleDebuffButtons(debuffButtonConfig)
