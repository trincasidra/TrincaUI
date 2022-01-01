local A, L = ...

local function DisableBlizzard()
  local needReload = false
  if (LoadAddOn("Blizzard_CUFProfiles")) then print("|c00FF3300"..A.."|r Blizzard_CUFProfiles is loadable") needReload = true end
  if (LoadAddOn("Blizzard_CompactRaidFrames")) then print("|c00FF3300"..A.."|r Blizzard_CompactRaidFrames is loadable") needReload = true end
  if needReload then
    DisableAddOn("Blizzard_CUFProfiles")
    DisableAddOn("Blizzard_CompactRaidFrames")
    StaticPopupDialogs["TRINCAUI_RELOADUI_REQUEST"] = {
      text = "TrincaUI needs a reload to fully disable the Blizzard raid addons. Reload now?",
      button1 = "Yes",
      button2 = "No",
      OnAccept = function()
        ReloadUI()
      end,
      timeout = 0,
      whileDead = true,
      hideOnEscape = true,
      preferredIndex = 3,
    }
    StaticPopup_Show("TRINCAUI_RELOADUI_REQUEST")
  end
end
DisableBlizzard()
