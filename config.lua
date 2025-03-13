local A, L = ...

L.C = {
    texture = "Interface\\Buttons\\WHITE8x8",
    font = "Interface\\AddOns\\" .. A .. "\\media\\Expressway.ttf",
    globalscale = 1,
    chat = {
        enable = true,
        dropshadow = {
            offset = { 1, -2 },
            color = { 0, 0, 0, 0.25 }
        },
        font = { STANDARD_TEXT_FONT, 13, "THINOUTLINE" }
    },
    styleTooltip = true,
    styleRollHistory = false,
    styleBag = false,
    styleBank = false,
    -- These are only recommended for ultra-wide screens.
    bagPosition = { -1600, 140 }, -- Anchored to UIParent's RIGHT so that all bags are top-aligned.
    bankPosition = { "TOPLEFT", UIParent, "TOPLEFT", 1000, -150 },
    -- Check if screen is ultrawide in order to apply bag/bank position
    --  4:3 => ~1.3
    -- 16:9 => ~1.8
    -- 21:9 => ~2.3
    -- 32:9 => ~3.5
    isUltraWide = (GetScreenWidth() / GetScreenHeight()) > 2,
    fade = {
        microMenuAndBags = false,
        expBar = false,
        actionBar1 = true,
        actionBar2 = true,
        actionBar3 = true,
        actionBar4 = true,
        actionBar5 = true,
        actionBar6 = true,
        actionBar7 = true,
        actionBar8 = true
    },
    colors = {
        disconnected = { .5, .5, .5, 1 },
        tapped = { .5, .5, .5, .7 },
        dead = { .5, 0, 0, .5 },
        mouseover = { 1, 1, 1, .5 },
        border = { 0, 0, 0 },
        equippedBorder = { 0, .7, 0 },
        hasAggroBorder = { 1, 0, 0 },
        nameplateTargetedBorder = { 0, .5, 1 },
        health = {
            default = { .2, .2, .2, .7 },
            shield = { 1, 1, 0, .45 },
            healprediction = { .7, 1, 0, .45 },
            healabsorb = { 1, 0, 0, .45 },
            background = { 1, 1, 1, 0.9 },
            border = { 0, 0, 0 }
        },
        power = {
            mana = { 0, 1, 1 },
            rage = { 1, 0, 0 },
            focus = { .965, .675, .27 },
            energy = { .96, 1, 0 },
            runic = { 0, .82, 1 },
            pain = { 1, .38, 0 },
            fury = { 1, 0, 1 },
            astral = { 0, 1, 1 },
            insanity = { .72, .5, 1 },
            maelstrom = { 0, 1, 1 },
            alternative = { .2, .4, .8 },
            holy = { .9, .88, .06 },
            combo = { .65, .63, .35 },
            vigor = { 0, .7, .9 },
            border = { 0, 0, 0 }
        },
        altpower = {
            border = { 0, 0, 0 }
        },
        cast = {
            default = { .9, 1, .61 },
            defaultBG = { .45, .5, .305 },
            shielded = { .5, .5, .5 },
            shieldedBG = { .125, .125, .125 },
            interrupted = { .3, .3, .3 },
            border = { 0, 0, 0 },
            text = { .84, .75, .65 }
        },
        debuffhighlight = {
            Magic = { r = .2, g = .6, b = 1, a = .45 },
            Curse = { r = .6, g = 0, b = 1, a = .45 },
            Disease = { r = .6, g = .4, b = 0, a = .45 },
            Poison = { r = 0, g = .6, b = 0, a = .45 },
            Bleed = { r = .6, g = 0, b = 0, a = .45 }
        },
        reaction = {
            help = { .7, 1, 0 },
            neutral = { 1, 1, 0 },
            harm = { .88, .165, .165 }
        },
        threat = { --colors for dps/heal. tanks are automatically inversed
            lowthreat = { .7, 1, 0 },
            highthreat = { 1, 1, 0 },
            unsafetanking = { 1, .5, .31 },
            tanking = { .88, .165, .165 }
        }
    }
}

L.C.auraIndicators = { --{spellid, color, anchorTo}
    enabled = true,
    iconSize = 14,
    fontSize = 10,
    DRUID = {
        { 774,    'ffcc66cc', 'TOPRIGHT' },        --rejuvenation
        { 8936,   'ff33cc33', 'BOTTOMLEFT' },      --regrowth
        { 33763,  'ff2e5d17', 'TOPLEFT' },         --life bloom
        { 188550, 'ff2e5d17', 'TOPLEFT' },         --also life bloom
        { 48438,  'ffcc6600', 'BOTTOMRIGHT' },     --wild growth
        { 102351, 'ff33cccc', 'BOTTOM' },          --cenarius ward
        { 102352, 'ff33cccc', 'BOTTOM' },          --also cenarius ward
        { 155777, 'ffcc66cc', 'RIGHT' },           --germination
        { 200389, 'ffffff66', 'LEFT' },            --cultivation
        { 203554, 'ffffff66', 'LEFT' },            --focused growth
        { 207386, 'ff6633cc', 'TOP' },             --spring blossoms
        { 325748, 'ff7c6453', 'TOPRIGHT',   -22 }, --adaptive swarm
        { 391891, 'ff7c6453', 'TOPRIGHT',   -22 }, --also adaptive swarm
        { 401186, 'ffe25c1d', 'BOTTOMLEFT', 22 }   --molten radiance (rashok's trinket hot)
    },
    PRIEST = {
        { 17,     'ffb3b3b3', 'TOPLEFT' },       --power word: shield
        { 139,    'ff66b333', 'BOTTOMLEFT' },    --renew
        { 6788,   'ffe31a1a', 'BOTTOMLEFT' },    --weakened soul
        { 33206,  'ff7859bd', 'LEFT' },          --pain suppression
        { 41635,  'ffffffa8', 'BOTTOMRIGHT' },   --prayer of mending
        { 47788,  'ffdb7300', 'TOPRIGHT' },      --guardian spirit
        --{193065, 'ff8a36c7', 'BOTTOMRIGHT'},      --masochism
        { 194384, 'ffffffa8', 'TOPRIGHT' },      --atonement
        { 214206, 'ffffffa8', 'TOPRIGHT' },      --also atonement
        { 401186, 'ffe25c1d', 'BOTTOMLEFT', 22 } --molten radiance (rashok's trinket hot)
    },
    MONK = {
        { 115175, 'ff99e6e6', 'TOP' },           --soothing mist
        { 116841, 'ff1fff87', 'RIGHT' },         --tiger's lust
        { 116849, 'ff33cc33', 'TOPLEFT' },       --life cocoon
        { 119611, 'ff4dcc99', 'TOPRIGHT' },      --renewing mist
        { 124682, 'ffcccc40', 'BOTTOMRIGHT' },   --envolving mist
        { 191840, 'ff459eb3', 'BOTTOMLEFT' },    --essence font
        { 325209, 'ff4d9999', 'BOTTOM' },        --enveloping breath
        { 401186, 'ffe25c1d', 'BOTTOMLEFT', 22 } --molten radiance (rashok's trinket hot)
    },
    SHAMAN = {
        { 974,    'ffffaa51', 'BOTTOMRIGHT' },   --earth shield
        { 383648, 'ffffaa51', 'BOTTOMRIGHT' },   --earth shield (on self)
        { 61295,  'ff3333ff', 'TOPRIGHT' },      --riptide
        { 401186, 'ffe25c1d', 'BOTTOMLEFT', 22 } --molten radiance (rashok's trinket hot)
    },
    PALADIN = {
        { 1022,   'ff3333ff', 'TOPLEFT' },       --blessing of protection
        { 1044,   'ffe37300', 'TOPLEFT' },       --blessing of freedom
        { 6940,   'ffe31a1a', 'TOPLEFT' },       --blessing of sacrifice
        { 204018, 'ff33cccc', 'TOPLEFT' },       --blessing of spellwarding
        { 53563,  'ffb34db3', 'TOPRIGHT' },      --beacon of light
        { 156910, 'ffb34db3', 'TOPRIGHT' },      --beacon of faith
        { 200025, 'ffb34db3', 'TOPRIGHT' },      --beacon of virtue
        { 157047, 'ff2693d6', 'TOP' },           --saved by the light
        { 223306, 'ffb3b34d', 'BOTTOMLEFT' },    --bestow faith
        { 431381, 'ff33cc33', 'BOTTOMRIGHT' },   --dawnlight
        { 401186, 'ffe25c1d', 'BOTTOMLEFT', 22 } --molten radiance (rashok's trinket hot)
    },
    EVOKER = {
        { 364343, 'ffceff20', 'TOPRIGHT' },         --echo
        { 366155, 'ffffffa8', 'BOTTOMRIGHT' },      --reversion
        { 367364, 'ffffffa8', 'BOTTOMRIGHT', -22 }, --reversion (echo'd)
        { 357170, 'ffdb7300', 'BOTTOM' },           --time dilation
        { 374227, 'ff7c6453', 'BOTTOMLEFT' },       --zephyr
        { 373267, 'ffe31a1a', 'TOP' },              --lifebind
        { 373268, 'ffe31a1a', 'TOP' },              --lifebind (echo'd)
        { 355941, 'ff37fc83', 'TOPLEFT' },          --dream breath
        { 376788, 'ff37fc83', 'TOPLEFT',     22 },  --dream breath (echo'd)
        { 401186, 'ffe25c1d', 'BOTTOMLEFT',  22 }   --molten radiance (rashok's trinket hot)
    }
}

L.C.player = {
    size = { 144, 45 },
    point = { "RIGHT", UIParent, "CENTER", -167, -245 },
    scale = 1 * L.C.globalscale,
    healthbar = {
        name = {
            enabled = true,
            points = {
                { "TOPLEFT",  2,  6 },
                { "TOPRIGHT", -2, 6 }
            },
            size = 12,
            tag = "[TrincaUI:leader][TrincaUI:resting]"
        },
        health = {
            enabled = true,
            point = { "CENTER", 0, 0 },
            size = 20,
            tag = "[TrincaUI:health]"
        },
        debuffHighlight = true
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    },
    debuffs = {
        enabled = true,
        point = { "BOTTOMRIGHT", "TOPRIGHT", 0, 3 },
        num = 6,
        cols = 3,
        size = 34,
        spacing = 3,
        initialAnchor = "BOTTOMRIGHT",
        growthX = "LEFT",
        growthY = "TOP",
        disableCooldown = false,
        CustomFilter = L.filters.blacklistOnly
    },
    altpowerbar = {
        enabled = true,
        size = { 144, 12 },
        point = { "TOPLEFT", "BOTTOMLEFT", 0, -3 },
        dragonriding = true
    },
    castbar = {
        enabled = true,
        size = { 200, 14 },
        point = { "CENTER", UIParent, "CENTER", 8, -227 },
        name = {
            enabled = false,
            points = {
                { "LEFT",  4,   0 },
                { "RIGHT", -14, 0 }
            },
            size = 12
        },
        timer = {
            enabled = true,
            point = { "RIGHT" },
            size = 12
        },
        icon = {
            enabled = true,
            size = 14,
            border = 1,
            point = { "RIGHT", "LEFT", 0, 0 }
        }
    }
}

L.C.pet = {
    enabled = true,
    size = { 72, 31 },
    point = { "TOPRIGHT", "TrincaUIPlayer", "TOPLEFT", -3, 0 },
    scale = 1 * L.C.globalscale,
    healthbar = {
        health = {
            enabled = true,
            points = {
                { "LEFT",  2,  0 },
                { "RIGHT", -2, 0 }
            },
            size = 12,
            align = "CENTER",
            tag = "[TrincaUI:healthpercentage]"
        },
        debuffHighlight = true
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    }
}

L.C.target = {
    enabled = true,
    size = { 144, 39 },
    point = { "LEFT", UIParent, "CENTER", 167, -245 },
    scale = 1 * L.C.globalscale,
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
                { "TOPLEFT",  2,  13 },
                { "TOPRIGHT", -2, 13 },
            },
            size = 16,
            tag = "[TrincaUI:classification][difficulty][TrincaUI:color][name]|r"
        },
        health = {
            enabled = true,
            point = { "CENTER", 0, 0 },
            size = 20,
            tag = "[TrincaUI:health]"
        },
        debuffHighlight = true
    },
    powerbar = {
        enabled = true,
        size = { 144, 6 },
        point = { "TOP", "BOTTOM", 0, -1 },
        power = {
            enabled = true,
            point = { "BOTTOMRIGHT", 0, -2 },
            size = 13,
            tag = "[powercolor][TrincaUI:power]",
        }
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    },
    castbar = {
        enabled = true,
        size = { 209, 35 },
        point = { "BOTTOMLEFT", "TOPLEFT", 35, 3 },
        name = {
            enabled = true,
            points = {
                { "LEFT",  4,  0 },
                { "RIGHT", -4, 0 }
            },
            size = 12
        },
        icon = {
            enabled = true,
            size = 35,
            border = 1,
            point = { "RIGHT", "LEFT", 0, 0 }
        }
    },
    buffs = {
        enabled = true,
        point = { "TOPLEFT", "TOPRIGHT", 3, 0 },
        num = 16,
        cols = 4,
        size = 30,
        spacing = 3,
        initialAnchor = "TOPLEFT",
        growthX = "RIGHT",
        growthY = "DOWN",
        disableCooldown = false,
        showStealableBuffs = true
    },
    debuffs = {
        enabled = true,
        point = { "TOPRIGHT", "BOTTOMRIGHT", 0, -10 },
        num = 4,
        cols = 2,
        size = 32,
        spacing = 3,
        initialAnchor = "TOPRIGHT",
        growthX = "LEFT",
        growthY = "DOWN",
        disableCooldown = false,
        CustomFilter = L.filters.blacklistOnly
    }
}

L.C.targettarget = {
    enabled = true,
    size = { 72, 31 },
    point = { "TOPLEFT", "TrincaUITarget", "BOTTOMLEFT", 0, -10 },
    scale = 1 * L.C.globalscale,
    healthbar = {
        name = {
            enabled = true,
            points = {
                { "LEFT",  2,  0 },
                { "RIGHT", -2, 0 }
            },
            size = 14,
            align = "CENTER",
            tag = "[TrincaUI:color][name]|r",
        },
        debuffHighlight = true
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    },
    debuffs = {
        enabled = true,
        point = { "TOPLEFT", "BOTTOMLEFT", 0, -3 },
        num = 4,
        cols = 2,
        size = 34,
        spacing = 3,
        initialAnchor = "TOPLEFT",
        growthX = "RIGHT",
        growthY = "DOWN",
        disableCooldown = false,
        CustomFilter = L.filters.ccBossDebuffs
    }
}

L.C.focus = {
    enabled = true,
    size = { 72, 31 },
    point = { "RIGHT", "TrincaUIPet", "LEFT", -3, 0 },
    scale = 1 * L.C.globalscale,
    healthbar = {
        name = {
            enabled = true,
            points = {
                { "LEFT",  2,  0 },
                { "RIGHT", -2, 0 }
            },
            size = 14,
            align = "CENTER",
            tag = "[TrincaUI:color][name]|r",
        },
        debuffHighlight = true
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    },
    debuffs = {
        enabled = true,
        point = { "TOPLEFT", "BOTTOMLEFT", 0, -3 },
        num = 4,
        cols = 2,
        size = 34,
        spacing = 3,
        initialAnchor = "TOPLEFT",
        growthX = "RIGHT",
        growthY = "DOWN",
        disableCooldown = false,
        CustomFilter = L.filters.bossDebuffs
    }
}

L.C.nameplate = {
    enabled = true,
    size = { 105, 30 },
    point = { "CENTER" },                               --relative to the nameplate base!
    scale = .9 * UIParent:GetScale() * L.C.globalscale, --nameplates are not part of uiparent, they must be multiplied by uiparent scale!
    targetedBorderSize = 6,
    healthbar = {
        name = {
            enabled = true,
            points = {
                { "TOPLEFT", 2,  11 },
                { "TOPLEFT", -2, 11 }
            },
            health = {
                enabled = true,
                point = { "CENTER", 0, 0 },
                size = 20,
                tag = "[TrincaUI:health]"
            },
            size = 14,
            align = "CENTER",
            tag = "[TrincaUI:classification][name]"
        },
        debuffHighlight = false
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    },
    castbar = {
        enabled = true,
        size = { 105, 8 },
        point = { "TOP", "BOTTOM", 0, -1 },
        target = {
            enabled = true,
            point = { "TOPLEFT", "BOTTOMLEFT", 0, -4 },
            align = "LEFT",
            size = 14
        },
        name = {
            enabled = true,
            points = {
                { "LEFT",  2,  0 },
                { "RIGHT", -2, 0 },
            },
            align = "CENTER",
            size = 12
        },
        icon = {
            enabled = true,
            size = 38,
            point = { "BOTTOMRIGHT", "BOTTOMLEFT", 0, 0 }
        }
    },
    buffs = {
        enabled = true,
        point = { "BOTTOM", "TOP", 0, 40 },
        num = 1,
        cols = 1,
        size = 30,
        spacing = 5,
        initialAnchor = "TOPLEFT",
        growthX = "RIGHT",
        growthY = "UP",
        disableCooldown = false,
        CustomFilter = L.filters.dispellableBuffs
    },
    debuffs = {
        enabled = true,
        point = { "BOTTOMLEFT", "TOPLEFT", 0, 12 },
        num = 4,
        cols = 4,
        size = 22,
        spacing = 5,
        initialAnchor = "TOPLEFT",
        growthX = "RIGHT",
        growthY = "UP",
        disableCooldown = false,
        filter = "HARMFUL|PLAYER|INCLUDE_NAME_PLATE_ONLY"
    }
}

L.C.boss = {
    enabled = true,
    size = { 110, 29 },
    point = { "LEFT", UIParent, "CENTER", 500, -35 }, --point of first boss frame
    scale = 1 * L.C.globalscale,
    healthbar = {
        name = {
            enabled = true,
            points = {
                { "TOPLEFT",  2,  11 },
                { "TOPRIGHT", -2, 11 },
            },
            size = 14,
            tag = "[name]"
        },
        health = {
            enabled = true,
            point = { "CENTER", 0, 0 },
            size = 18,
            tag = "[TrincaUI:healthpercentage]"
        },
        debuffHighlight = false
    },
    powerbar = {
        enabled = true,
        size = { 110, 6 },
        point = { "TOP", "BOTTOM", 0, -1 },
        power = {
            enabled = true,
            point = { "BOTTOMRIGHT", 0, -2 },
            size = 12,
            tag = "[powercolor][TrincaUI:power]",
        }
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    },
    castbar = {
        enabled = true,
        size = { 110, 16 },
        point = { "TOP", "BOTTOM", 0, -10 },
        name = {
            enabled = true,
            points = {
                { "LEFT",  2,  0 },
                { "RIGHT", -2, 0 }
            },
            size = 12
        },
        icon = {
            enabled = false,
            size = { 26, 26 },
            point = { "RIGHT", "LEFT", -6, 0 },
        }
    },
    buffs = {
        enabled = true,
        point = { "LEFT", "RIGHT", 3, 0 },
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
        point = { "RIGHT", "LEFT", -3, 0 },
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
    size = { 107, 35 },
    point = { "CENTER", -400, 0 },
    scale = 1 * L.C.globalscale,
    auraIndicators = true,
    healthbar = {
        name = {
            enabled = true,
            points = {
                { "LEFT",  2,  0 },
                { "RIGHT", -2, 0 }
            },
            size = 12,
            align = "CENTER",
            tag = "[TrincaUI:color][name]|r",
        },
        health = {
            enabled = true,
            points = {
                { "TOPLEFT",  2,  -2 },
                { "TOPRIGHT", -2, -2 }
            },
            size = 12,
            tag = "[TrincaUI:role][TrincaUI:leader]"
        },
        status = {
            enabled = true,
            point = { "BOTTOM", 0, 2 },
            size = 10,
            tag = "[offline][dead]"
        },
        debuffHighlight = true
    },
    powerbar = {
        enabled = false,
        size = { 107, 6 },
        point = { "TOP", "BOTTOM", 0, -4 },
        colorPower = true
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    },
    debuffs = {
        enabled = true,
        point = { "LEFT", "RIGHT", 3, 0 },
        num = 4,
        cols = 4,
        size = 35,
        spacing = 3,
        initialAnchor = "TOPLEFT",
        growthX = "RIGHT",
        growthY = "DOWN",
        disableCooldown = false,
        CustomFilter = L.filters.ccBossDebuffs
    },
    buffs = {
        enabled = not OmniCD,
        point = { "RIGHT", "LEFT", -3, 0 },
        num = 3,
        cols = 3,
        size = 35,
        spacing = 5,
        initialAnchor = "TOPRIGHT",
        growthX = "LEFT",
        growthY = "DOWN",
        disableCooldown = false,
        CustomFilter = L.filters.defensiveBuffs
    },
    setup = {
        template = nil,
        visibility = "custom [group:party,nogroup:raid] show; hide",
        showPlayer = true,
        showSolo = false,
        showParty = true,
        showRaid = false,
        groupBy = 'ASSIGNEDROLE',
        groupingOrder = "TANK,HEALER,DAMAGER",
        point = "TOP",
        xOffset = 0,
        yOffset = -3
    },
}

L.C.raid = {
    enabled = true,
    size = { 86, 39 },
    points = {
        { "CENTER",   -400,                  0 },
        { "TOPRIGHT", "TrincaUIRaidHeader1", "TOPLEFT", -3, 0 },
        { "TOPRIGHT", "TrincaUIRaidHeader2", "TOPLEFT", -3, 0 },
        { "TOPRIGHT", "TrincaUIRaidHeader3", "TOPLEFT", -3, 0 },
        { "TOPRIGHT", "TrincaUIRaidHeader4", "TOPLEFT", -3, 0 },
        { "TOPRIGHT", "TrincaUIRaidHeader5", "TOPLEFT", -3, 0 },
        { "TOPRIGHT", "TrincaUIRaidHeader6", "TOPLEFT", -3, 0 },
        { "TOPRIGHT", "TrincaUIRaidHeader7", "TOPLEFT", -3, 0 }
    },
    scale = 1 * L.C.globalscale,
    auraIndicators = true,
    healthbar = {
        name = {
            enabled = true,
            points = {
                { "LEFT",  2,  0 },
                { "RIGHT", -2, 0 }
            },
            size = 12,
            align = "CENTER",
            tag = "[TrincaUI:color][name]|r"
        },
        health = {
            enabled = true,
            points = {
                { "TOPLEFT",  1,  -1 },
                { "TOPRIGHT", -1, -1 }
            },
            size = 12,
            tag = "[TrincaUI:role][TrincaUI:leader]"
        },
        status = {
            enabled = true,
            point = { "BOTTOM", 0, 2 },
            size = 10,
            tag = "[offline][dead]"
        },
        debuffHighlight = true
    },
    raidmark = {
        enabled = true,
        size = { 18, 18 },
        point = { "CENTER", "TOP", 0, 0 }
    },
    debuffs = {
        enabled = true,
        point = { "CENTER", "CENTER", 0, 0 },
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
        groupBy = 'ASSIGNEDROLE',
        groupingOrder = "TANK,HEALER,DAMAGER",
        point = "TOP",
        xOffset = 0,
        yOffset = -3
    }
}
