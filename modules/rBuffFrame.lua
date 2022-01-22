local A, L = ...
local rBuffFrame = L.rBuffFrame

local function setBuffFrame()
  local buffFrameConfig = {
    framePoint      = {"TOPLEFT", UIParent, "TOPLEFT", 10, -10},
    frameScale      = 1,
    framePadding    = 5,
    buttonWidth     = 32,
    buttonHeight    = 32,
    buttonMargin    = 5,
    numCols         = 10,
    startPoint      = "TOPLEFT",
    --rowMargin       = 20,
  }
  local buffs = rBuffFrame:CreateBuffFrame(A, buffFrameConfig)

  local debuffFrameConfig = {
    enabled         = true, --disable if using other buff frame addons like Raven
    frameParent     = buffs,
    framePoint      = {"TOPLEFT", buffs, "BOTTOMLEFT", 0, -10},
    frameScale      = 1,
    framePadding    = 5,
    buttonWidth     = 40,
    buttonHeight    = 40,
    buttonMargin    = 5,
    numCols         = 8,
    startPoint      = "TOPLEFT",
  }
  rBuffFrame:CreateDebuffFrame(A, debuffFrameConfig)
end

if L.C.enableBuffFrame then
  setBuffFrame()
end
