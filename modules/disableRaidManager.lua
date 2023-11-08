local A, L = ...

local function DisableBlizzard()
  -- Disable Blizzard raid frames.
  CompactRaidFrameManager:SetParent(L.hider)
  CompactRaidFrameManager:UnregisterAllEvents()
  CompactRaidFrameManager:Hide()
  CompactRaidFrameContainer:SetParent(L.hider)
  CompactRaidFrameContainer:UnregisterAllEvents()
  CompactRaidFrameContainer:Hide()

  -- Disable Blizzard party frames
  CompactPartyFrame:SetParent(L.hider)
  CompactPartyFrame:UnregisterAllEvents()
  CompactPartyFrame:Hide()

  -- Hide Raid Interface Options.
  --InterfaceOptionsFrameCategoriesButton11:SetHeight(0.00001)
  --InterfaceOptionsFrameCategoriesButton11:SetAlpha(0)
  
end
DisableBlizzard()
