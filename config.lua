local A, L = ...

L.C = {
  texture = "Interface\\Buttons\\WHITE8x8",
  font = "Interface\\AddOns\\"..A.."\\media\\Expressway.ttf",
  globalscale = 1,
  colors = {
    disconnected = {.5, .5, .5, 1},
    tapped = {.5, .5, .5, .7},
    dead = {.5, 0, 0, .5},
    mouseover = {1, 1, 1, .5},
    border = {0, 0, 0},
    equippedBorder = {0, .7, 0},
    hasAggroBorder = {1, 0, 0},
    nameplateTargetedBorder = {0, .5, 1},
    health = {
      default = {.2, .2, .2, .7},
      shield = {1, 1, 0, .45},
      healprediction = {.7, 1, 0, .45},
      healabsorb = {1, 0, 0, .45},
      background = {1, 1, 1, 0.9},
      border = {0, 0, 0}
    },
    power = {
      mana = {0, 1, 1},
      rage = {1, 0, 0},
      focus = {.965, .675, .27},
      energy = {.96, 1, 0},
      runic = {0, .82, 1},
      pain = {1, .38, 0},
      fury = {1, 0, 1},
      astral = {0, 1, 1},
      insanity = {.72, .5, 1},
      maelstrom = {0, 1, 1},
      alternative = {.2, .4, .8},
      holy = {.9, .88, .06},
      combo = {.65, .63, .35},
      border = {0, 0, 0}
    },
    cast = {
      default = {.9, 1, .61},
      defaultBG = {.45, .5, .305},
      shielded = {1, .4, .25},
      shieldedBG = {.5, .2, .125},
      interrupted = {.3, .3, .3},
      border = {0, 0, 0},
      text = {.84, .75, .65}
    },
    debuffhighlight = {
      Magic = {r=.2, g=.6, b=1, a=.45},
      Curse = {r=.6, g=0, b=1, a=.45},
      Disease = {r=.6, g=.4, b=0, a=.45},
      Poison = {r=0, g=.6, b=0, a=.45}
    },
    reaction = {
      help = {.7, 1, 0},
      neutral = {1, 1, 0},
      harm = {.88, .165, .165}
    },
    threat = { --colors for dps/heal. tanks are automatically inversed
      lowthreat = {.7, 1, 0},
      highthreat = {1, 1, 0},
      unsafetanking = {1, .5, .31},
      tanking = {.88, .165, .165}
    }
  },
  minimapPoint = {"BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -10, 10},
  objectiveTrackerPoint = {"TOPRIGHT", UIParent, "TOPRIGHT", -10, -10},
  vehicleSeatIndicatorPoint = {"RIGHT", MinimapCluster, "LEFT", -120, 0},
  durabilityFramePoint = {"RIGHT", MinimapCluster, "LEFT", -50, 00},
  tooltipPoint = {"BOTTOMRIGHT", MinimapCluster, "TOPRIGHT", 0, 20},
  enableBuffFrame = true --disable if using other buff frame addons like Raven
}

L.C.player = {
  size = {144, 45},
  point = {"RIGHT", UIParent, "CENTER", -167, -245},
  scale = 1*L.C.globalscale,
  healthbar = {
    name = {
      enabled = true,
      points = {
        {"TOPLEFT", 2, 6},
        {"TOPRIGHT", -2, 6}
      },
      size = 12,
      tag = "[TrincaUI:leader][TrincaUI:status]"
    },
    health = {
      enabled = true,
      point = {"CENTER", 0, 0},
      size = 20,
      tag = "[TrincaUI:health]"
    },
    debuffHighlight = true
  },
  raidmark = {
    enabled = true,
    size = {18, 18},
    point = {"CENTER", "TOP", 0, 0}
  },
  debuffs = {
    enabled = true,
    point = {"BOTTOMRIGHT", "TOPRIGHT", 0, 3},
    num = 6,
    cols = 3,
    size = 34,
    spacing = 3,
    initialAnchor = "BOTTOMRIGHT",
    growthX = "LEFT",
    growthY = "TOP",
    disableCooldown = false,
  },
  altpowerbar = {
    enabled = true,
    size = {144, 12},
    point = {"TOPLEFT", "BOTTOMLEFT", 0, -3}
  }
}

L.C.pet = {
  enabled = true,
  size = {72, 31},
  point = {"TOPRIGHT", "TrincaUIPlayer", "TOPLEFT", -3, 0},
  scale = 1*L.C.globalscale,
  healthbar = {
    health = {
      enabled = true,
      points = {
        {"LEFT", 2, 0},
        {"RIGHT", -2, 0}
      },
      size = 12,
      align = "CENTER",
      tag = "[TrincaUI:healthpercentage]"
    },
    debuffHighlight = true
  },
  raidmark = {
    enabled = true,
    size = {18, 18},
    point = {"CENTER", "TOP", 0, 0}
  }
}

L.C.target = {
  enabled = true,
  size = {144, 39},
  point = {"LEFT", UIParent, "CENTER", 167, -245},
  scale = 1*L.C.globalscale,
  fader = {
    fadeInAlpha = 1,
    fadeInDuration = 0.3,
    fadeInSmooth = "OUT",
    fadeOutAlpha = 0,
    fadeOutDuration = 0.9,
    fadeOutSmooth = "OUT",
    fadeOutDelay = 0,
    trigger = "OnShow"
  },
  healthbar = {
    name = {
      enabled = true,
      points = {
        {"TOPLEFT", 2, 11},
        {"TOPRIGHT", -2, 11},
      },
      size = 16,
      tag = "[TrincaUI:classification][difficulty][TrincaUI:color][name]|r"
    },
    health = {
      enabled = true,
      point = {"CENTER", 0, 0},
      size = 20,
      tag = "[TrincaUI:health]"
    },
    debuffHighlight = true
  },
  powerbar = {
    enabled = true,
    size = {144, 6},
    point = {"TOP", "BOTTOM", 0, -1},
    power = {
      enabled = true,
      point = {"BOTTOMRIGHT",0,-2},
      size = 13,
      tag = "[powercolor][TrincaUI:power]",
    }
  },
  raidmark = {
    enabled = true,
    size = {18, 18},
    point = {"CENTER", "TOP", 0, 0}
  },
  castbar = {
    enabled = true,
    size = {209, 35},
    point = {"BOTTOMLEFT", "TOPLEFT", 35, 3},
    name = {
      enabled = true,
      points = {
        {"LEFT", 4, 0},
        {"RIGHT", -4, 0}
      },
      size = 12
    },
    icon = {
      enabled = true,
      size = 35,
      border = 1,
      point = {"RIGHT", "LEFT", 0, 0}
    }
  },
  buffs = {
    enabled = true,
    point = {"TOPLEFT", "TOPRIGHT", 3, 0},
    num = 16,
    cols = 4,
    size = 30,
    spacing = 3,
    initialAnchor = "TOPLEFT",
    growthX = "RIGHT",
    growthY = "DOWN",
    disableCooldown = false
  },
  debuffs = {
    enabled = true,
    point = {"TOPRIGHT", "BOTTOMRIGHT", 0, -10},
    num = 4,
    cols = 2,
    size = 32,
    spacing = 3,
    initialAnchor = "TOPRIGHT",
    growthX = "LEFT",
    growthY = "DOWN",
    disableCooldown = false
  }
}

L.C.targettarget = {
  enabled = true,
  size = {72, 31},
  point = {"TOPLEFT", "TrincaUITarget", "BOTTOMLEFT", 0, -10},
  scale = 1*L.C.globalscale,
  healthbar = {
    name = {
      enabled = true,
      points = {
        {"LEFT",2,0},
        {"RIGHT",-2,0}
      },
      size = 14,
      align = "CENTER",
      tag = "[TrincaUI:color][name]|r",
    },
    debuffHighlight = true
  },
  raidmark = {
    enabled = true,
    size = {18, 18},
    point = {"CENTER", "TOP", 0, 0}
  },
  debuffs = {
    enabled = true,
    point = {"TOPLEFT", "BOTTOMLEFT", 0, -3},
    num = 4,
    cols = 2,
    size = 34,
    spacing = 3,
    initialAnchor = "TOPLEFT",
    growthX = "RIGHT",
    growthY = "DOWN",
    disableCooldown = false
  }
}

L.C.focus = {
  enabled = true,
  size = {72, 31},
  point = {"RIGHT", "TrincaUIPet", "LEFT", -3, 0},
  scale = 1*L.C.globalscale,
  healthbar = {
    name = {
      enabled = true,
      points = {
        {"LEFT",2,0},
        {"RIGHT",-2,0}
      },
      size = 14,
      align = "CENTER",
      tag = "[TrincaUI:color][name]|r",
    },
    debuffHighlight = true
  },
  raidmark = {
    enabled = true,
    size = {18, 18},
    point = {"CENTER", "TOP", 0, 0}
  },
  debuffs = {
    enabled = true,
    point = {"TOPLEFT", "BOTTOMLEFT", 0, -3},
    num = 4,
    cols = 2,
    size = 34,
    spacing = 3,
    initialAnchor = "TOPLEFT",
    growthX = "RIGHT",
    growthY = "DOWN",
    disableCooldown = false
  }
}

L.C.nameplate = {
  enabled = true,
  size = {105, 30},
  point = {"CENTER"}, --relative to the nameplate base!
  scale = .9*UIParent:GetScale()*L.C.globalscale,--nameplates are not part of uiparent, they must be multiplied by uiparent scale!
  targetedBorderSize = 6,
  healthbar = {
    name = {
      enabled = true,
      points = {
        {"TOPLEFT", 2, 11},
        {"TOPLEFT", -2, 11}
      },
      size = 14,
      align = "CENTER",
      tag = "[TrincaUI:classification][name]"
    },
    debuffHighlight = true
  },
  raidmark = {
    enabled = true,
    size = {18, 18},
    point = {"CENTER", "TOP", 0, 0}
  },
  castbar = {
    enabled = true,
    size = {105, 8},
    point = {"TOP", "BOTTOM", 0, -1},
    name = {
      enabled = true,
      points = {
        {"LEFT", 2, 0},
        {"RIGHT", -2, 0},
      },
      align = "CENTER",
      size = 12
    },
    icon = {
      enabled = true,
      size = 38,
      point = {"BOTTOMRIGHT", "BOTTOMLEFT", 0, 0}
    }
  },
  debuffs = {
    enabled = true,
    point = {"BOTTOMLEFT", "TOPLEFT", 0, 12},
    num = 4,
    cols = 4,
    size = 22,
    spacing = 5,
    initialAnchor = "TOPLEFT",
    growthX = "RIGHT",
    growthY = "UP",
    disableCooldown = false,
    filter = "HARMFUL|PLAYER|INCLUDE_NAME_PLATE_ONLY",
    CustomFilter = CustomFilter
  }
}

L.C.boss = {
  enabled = true,
  size = {110, 29},
  point = {"LEFT", UIParent, "CENTER", 300, -35}, --point of first boss frame
  scale = 1*L.C.globalscale,
  healthbar = {
    name = {
      enabled = true,
      points = {
        {"TOPLEFT", 2, 11},
        {"TOPRIGHT", -2, 11},
      },
      size = 14,
      tag = "[name]"
    },
    health = {
      enabled = true,
      point = {"CENTER", 0, 0},
      size = 18,
      tag = "[TrincaUI:healthpercentage]"
    },
    debuffHighlight = true
  },
  powerbar = {
    enabled = true,
    size = {110, 6},
    point = {"TOP", "BOTTOM", 0, -1},
    power = {
      enabled = true,
      point = {"BOTTOMRIGHT", 0, -2},
      size = 12,
      tag = "[powercolor][TrincaUI:power]",
    }
  },
  raidmark = {
    enabled = true,
    size = {18, 18},
    point = {"CENTER", "TOP", 0, 0}
  },
  castbar = {
    enabled = true,
    size = {130, 6},
    point = {"TOP","BOTTOM",0,-14},
    name = {
      enabled = true,
      points = {
        {"LEFT",2,0},
        {"RIGHT",-2,0}
      },
      size = 12
    },
    icon = {
      enabled = false,
      size = {26,26},
      point = {"RIGHT","LEFT",-6,0},
    }
  },
  buffs = {
    enabled = true,
    point = {"LEFT", "RIGHT", 3, 0},
    num = 3,
    cols = 3,
    size = 22,
    spacing = 3,
    initialAnchor = "TOPLEFT",
    growthX = "RIGHT",
    growthY = "DOWN",
    disableCooldown = false
  },
  debuffs = {
    enabled = true,
    point = {"RIGHT", "LEFT", -3, 0},
    num = 3,
    cols = 3,
    size = 22,
    spacing = 3,
    initialAnchor = "TOPRIGHT",
    growthX = "LEFT",
    growthY = "DOWN",
    disableCooldown = false
  },
  setup = {
    point = "BOTTOM",
    relativePoint = "TOP", --relativeTo will be the boss frame preceding
    xOffset = 0,
    yOffset = 30,
  },
}

L.C.party = {
  enabled = true,
  size = {107, 35},
  point = {"CENTER", -400, 0},
  scale = 1*L.C.globalscale,
  healthbar = {
    name = {
      enabled = true,
      points = {
        {"LEFT",2,0},
        {"RIGHT",-2,0}
      },
      size = 14,
      align = "CENTER",
      tag = "[TrincaUI:color][name]|r",
    },
    health = {
      enabled = true,
      points = {
        {"TOPLEFT", 2, -2},
        {"TOPRIGHT", -2, -2}
      },
      size = 12,
      tag = "[TrincaUI:leader][TrincaUI:role]"
    },
    debuffHighlight = true
  },
  powerbar = {
    enabled = false,
    size = {107, 6},
    point = {"TOP", "BOTTOM", 0, -4},
    colorPower = true,
  },
  raidmark = {
    enabled = true,
    size = {18, 18},
    point = {"CENTER", "TOP", 0, 0}
  },
  debuffs = {
    enabled = true,
    point = {"LEFT", "RIGHT", 3, 0},
    num = 3,
    cols = 3,
    size = 35,
    spacing = 3,
    initialAnchor = "TOPLEFT",
    growthX = "RIGHT",
    growthY = "DOWN",
    disableCooldown = false,
    filter = "RAID|HARMFUL"
  },
  buffs = {
    enabled = true,
    point = {"RIGHT", "LEFT", -3, 0},
    num = 3,
    cols = 3,
    size = 35,
    spacing = 5,
    initialAnchor = "TOPRIGHT",
    growthX = "LEFT",
    growthY = "DOWN",
    disableCooldown = false,
    filter = "HELPFUL|PLAYER"
  },
  setup = {
    template = nil,
    visibility = "custom [group:party,nogroup:raid] show; hide",
    showPlayer = true,
    showSolo = false,
    showParty = true,
    showRaid = false,
    groupBy = 'ROLE',
    groupingOrder = "TANK, HEALER, DAMAGER, DAMAGER, DAMAGER",
    point = "TOP",
    xOffset = 0,
    yOffset = -3
  },
}

L.C.raid = {
  enabled = true,
  size = {86, 39},
  points = {
    {"CENTER", -400, 0},
    {"TOPRIGHT", "TrincaUIRaidHeader1", "TOPLEFT", -3, 0},
    {"TOPRIGHT", "TrincaUIRaidHeader2", "TOPLEFT", -3, 0},
    {"TOPRIGHT", "TrincaUIRaidHeader3", "TOPLEFT", -3, 0},
    {"TOPRIGHT", "TrincaUIRaidHeader4", "TOPLEFT", -3, 0},
    {"TOPRIGHT", "TrincaUIRaidHeader5", "TOPLEFT", -3, 0},
    {"TOPRIGHT", "TrincaUIRaidHeader6", "TOPLEFT", -3, 0},
    {"TOPRIGHT", "TrincaUIRaidHeader7", "TOPLEFT", -3, 0}
  },
  scale = 1*L.C.globalscale,
  healthbar = {
    name = {
      enabled = true,
      points = {
        {"LEFT", 2, 0},
        {"RIGHT", -2, 0}
      },
      size = 14,
      align = "CENTER",
      tag = "[TrincaUI:color][name]|r"
    },
    health = {
      enabled = true,
      points = {
        {"TOPLEFT", 1, -1},
        {"TOPRIGHT", -1, -1}
      },
      size = 12,
      tag = "[TrincaUI:role][TrincaUI:leader]"
    },
    debuffHighlight = true
  },
  raidmark = {
    enabled = true,
    size = {18,18},
    point = {"CENTER", "TOP", 0, 0}
  },
  debuffs = {
    enabled = true,
    point = {"CENTER", "CENTER", 0, 0},
    num = 1,
    cols = 1,
    size = 30,
    spacing = 3,
    initialAnchor = "TOPLEFT",
    growthX = "RIGHT",
    growthY = "DOWN",
    disableCooldown = false,
    filter = "RAID"
  },
  setup = {
    template = nil,
    visibility = "custom [group:raid] show; hide",
    showPlayer = false,
    showSolo = false,
    showParty = false,
    showRaid = true,
    groupBy = 'ROLE',
    groupingOrder = "TANK, HEALER, DAMAGER, DAMAGER, DAMAGER",
    point = "TOP",
    xOffset = 0,
    yOffset = -3
  }
}
