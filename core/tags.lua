--Revamped for TrincaUI
local A, L = ...
local oUF = L.oUF
if not oUF then return end

--add player regen to the unitless event tags
oUF.Tags.SharedEvents["PLAYER_REGEN_DISABLED"] = true
oUF.Tags.SharedEvents["PLAYER_REGEN_ENABLED"] = true

oUF.Tags.Methods["TrincaUI:health"] = function(unit)
  if not UnitIsConnected(unit) then
    return "|cff999999Offline|r"
  end
  if(UnitIsDead(unit) or UnitIsGhost(unit)) then
    return "|cff999999Dead|r"
  end
  return L.F.NumberFormat(UnitHealth(unit)).."|ccccccccc"
end
oUF.Tags.Events["TrincaUI:health"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_CONNECTION"

oUF.Tags.Methods["TrincaUI:healthpercentage"] = function(unit)
  if not UnitIsConnected(unit) then
    return "|cff999999Offline|r"
  end
  if(UnitIsDead(unit) or UnitIsGhost(unit)) then
    return "|cff999999Dead|r"
  end
  local min = UnitHealth(unit)
  local max = UnitHealthMax(unit)

  return L.F.NumberFormat(math.floor((min/max)*100)).."%|ccccccccc"
end
oUF.Tags.Events["TrincaUI:healthpercentage"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_CONNECTION"

oUF.Tags.Methods["TrincaUI:power"] = function(unit)
  local power = UnitPower(unit)
  if power == 0 then
    return ""
  end
  return power
end
oUF.Tags.Events["TrincaUI:power"] = "UNIT_POWER_UPDATE UNIT_MAXPOWER UNIT_CONNECTION"

oUF.Tags.Methods["TrincaUI:role"] = function(unit)
  local role = UnitGroupRolesAssigned(unit)
  if role == "TANK" then
    return "|TInterface\\LFGFrame\\LFGRole:14:14:0:0:64:16:32:48:0:16|t"
  elseif role == "HEALER" then
    return "|TInterface\\LFGFrame\\LFGRole:14:14:0:0:64:16:48:64:0:16|t"
  --elseif role == "DAMAGER" then
    --return "|TInterface\\LFGFrame\\LFGRole:14:14:0:0:64:16:16:32:0:16|t"
  end
end
oUF.Tags.Events["TrincaUI:role"] = "PLAYER_ROLES_ASSIGNED GROUP_ROSTER_UPDATE"

oUF.Tags.Methods["TrincaUI:leader"] = function(unit)
  if UnitIsGroupLeader(unit) then
    return "|TInterface\\GroupFrame\\UI-Group-LeaderIcon:14:14:0:0|t"
  end
end
oUF.Tags.Events["TrincaUI:leader"] = "PARTY_LEADER_CHANGED GROUP_ROSTER_UPDATE"

oUF.Tags.Methods["TrincaUI:status"] = function(unit,...)
  if UnitAffectingCombat(unit) then
    return "|TInterface\\CharacterFrame\\UI-StateIcon:20:20:0:0:64:64:33:64:0:31|t"
  elseif unit == "player" and IsResting() then
    return "|TInterface\\CharacterFrame\\UI-StateIcon:20:20:0:0:64:64:0:31:0:31|t"
  end
end
oUF.Tags.Events["TrincaUI:status"] = "PLAYER_REGEN_DISABLED PLAYER_REGEN_ENABLED PLAYER_UPDATE_RESTING"

oUF.Tags.Methods["TrincaUI:classification"] = function(unit)
  local c = UnitClassification(unit)
  local l = UnitLevel(unit)
  if(c == 'worldboss' or l == -1) then
    return '|cffff0000{B}|r '
  elseif(c == 'rare') then
    return '|cffff9900{R}|r '
  elseif(c == 'rareelite') then
    return '|cffff0000{R+}|r '
  elseif(c == 'elite') then
    return '|cffff6666{E}|r '
  end
end
oUF.Tags.Events["TrincaUI:classification"] = "UNIT_CLASSIFICATION_CHANGED"

oUF.Tags.Methods["TrincaUI:color"] = function(unit)
  local c = CreateColor(1, 1, 1)
  if UnitIsPlayer(unit) then
    local _, class = UnitClass(unit)
    c = RAID_CLASS_COLORS[class]
  else
    local reaction = UnitReaction(unit, "player");
    if (reaction < 4) then
      c = CreateColor(unpack(L.C.colors.reaction.harm))
    elseif (reaction == 4) then
      c = CreateColor(unpack(L.C.colors.reaction.neutral))
    elseif (reaction > 4) then
      c = CreateColor(unpack(L.C.colors.reaction.help))
    end
  end
  return '|c'..c:GenerateHexColor()
end
oUF.Tags.Events["TrincaUI:color"] = "UNIT_NAME_UPDATE"
