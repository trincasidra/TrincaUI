local A, L = ...

if OmniCD and OmniCD[1] and OmniCD[1].unitFrameData then
    local l = #OmniCD[1].unitFrameData
    OmniCD[1].unitFrameData[l+1] = {   
      [1] = "TrincaUI",
      [2] = "TrincaUIPartyHeaderUnitButton",
      [3] = "unit",
      [4] = 1,
    }
    OmniCD[1].unitFrameData[l+2] = {   
      [1] = "TrincaUI-Raid",
      [2] = "TrincaUIRaidHeader%UnitButton",
      [3] = "unit",
      [4] = 1,
      [5] = 40,
    }
    OmniCD[1].unitFrameData[l+3] = {   
      [1] = "TrincaUI-Raid40",
      [2] = "TrincaUIRaidHeader%UnitButton",
      [3] = "unit",
      [4] = 1,
      [5] = 40,
    }
end
