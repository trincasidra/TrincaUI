local A, L = ...
local rBuffFrame = L.rBuffFrame

local function setBuffFrame()
  if not L.C.rBuffFrame then return end

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
  local buffFrame = rBuffFrame:CreateBuffFrame(A, buffFrameConfig)

  local debuffFrameConfig = {
    framePoint      = {"TOPLEFT", buffFrame, "BOTTOMLEFT", 0, 0 },
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
setBuffFrame()
