local A, L = ...

if OmniCD and OmniCD[1] and OmniCD[1].unitFrameData then
    local l = #OmniCD[1].unitFrameData
    OmniCD[1].unitFrameData[l+1] = {   
      [1] = "TrincaUI-Party",
      [2] = "TrincaUIPartyHeaderUnitButton",
      [3] = "unit",
    }
    OmniCD[1].unitFrameData[l+2] = {   
      [1] = "TrincaUI-Raid",
      [2] = "TrincaUIRaidHeader%UnitButton",
      [3] = "unit",
    }
end
