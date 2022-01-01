local A, L = ...
local rBuffFrame = L.rBuffFrame

local function setBuffFrame()
  if L.C.buffFrameConfig and L.C.buffFrameConfig.enabled then
    rBuffFrame:CreateBuffFrame(A, L.C.buffFrameConfig)
  end
  if L.C.debuffFrameConfig and L.C.debuffFrameConfig.enabled then
    rBuffFrame:CreateDebuffFrame(A, L.C.debuffFrameConfig)
  end
end
setBuffFrame()
