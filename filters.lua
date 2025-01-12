local A, L = ...

L.filters = {
    whitelistBuffs = {
        -- Lust
        2825,   -- Bloodlust
        32182,  -- Heroism
        80353,  -- Time Warp
        90355,  -- Ancient Hysteria
        390386, -- Fury of the Aspects
        -- Paladin
        31821,  -- Aura Mastery
        1022,   -- Blessing of Protection
        204018, -- Blessing of Spellwarding
        6940,   -- Blessing of Sacrifice
        1044,   -- Blessing of Freedom
        -- Priest
        47788,  -- Guardian Spirit
        33206,  -- Pain Suppression
        62618,  -- Power Word: Barrier
        -- Monk
        116849, -- Life Cocoon
        -- Druid
        102342, -- Ironbark
        -- Shaman
        325174, -- Spirit Link
        20608,  -- Reincarnation
        -- Evoker
        357170, -- Time dilation
        -- Other
        97462,  -- Rallying Cry
        196718, -- Darkness
    },
    blacklistBuffs = {
        8326,   -- Ghost
        8733,   -- Blessing of Blackfathom
        15007,  -- Ress Sickness
        23445,  -- Evil Twin
        24755,  -- Tricked or Treated
        25163,  -- Oozeling's Disgusting Aura
        25771,  -- Forbearance (Pally: Divine Shield, Blessing of Protection, and Lay on Hands)
        26013,  -- Deserter
        36032,  -- Arcane Charge
        36893,  -- Transporter Malfunction
        36900,  -- Soul Split: Evil!
        36901,  -- Soul Split: Good
        41425,  -- Hypothermia
        55711,  -- Weakened Heart
        57723,  -- Exhaustion (heroism debuff)
        57724,  -- Sated (lust debuff)
        58539,  -- Watcher's Corpse
        71041,  -- Dungeon Deserter
        80354,  -- Temporal Displacement (timewarp debuff)
        89140,  -- Demonic Rebirth: Cooldown
        95809,  -- Insanity debuff (hunter pet heroism: ancient hysteria)
        96041,  -- Stink Bombed
        97821,  -- Void-Touched
        113942, -- Demonic: Gateway
        117870, -- Touch of The Titans
        123981, -- Perdition
        124273, -- Stagger
        124274, -- Stagger
        124275, -- Stagger
        195776, -- Moonfeather Fever
        206150, -- Challenger's Burden SL
        206151, -- Challenger's Burden BfA
        206662, -- Experience Eliminated (in range)
        287825, -- Lethargy debuff (fight or flight)
        306600, -- Experience Eliminated (oor - 5m)
        313015, -- Recently Failed (Mechagnome racial)
        322695, -- Drained
        328891, -- A Gilded Perspective
        348443, -- Experience Eliminated
        234143, -- Temptation (Upper Karazhan Ring Debuff)
        287825, -- Lethargy debuff (fight or flight)
        306600, -- Experience Eliminated (oor - 5m)
        313015, -- Recently Failed (Mechagnome racial)
        322695, -- Drained
        328891, -- A Gilded Perspective
        348443, -- Experience Eliminated
        374037, -- Overwhelming Rage
        383600, -- Surrounding Storm (Strunraan)
        390106, -- Riding Along
        392960, -- Waygate Travel
        392992, -- Silent Lava
        393798, -- Activated Defense Systems
        418990, -- Wicker Men's Curse
        426790, -- Call of the Elder druid
        430191, -- Mentor exp
        455020  -- Wow anniversary
    },
    turtleBuffs = {
        -- Death Knight
        48707,  -- Anti-Magic Shell
        81256,  -- Dancing Rune Weapon
        55233,  -- Vampiric Blood
        193320, -- Umbilicus Eternus
        219809, -- Tombstone
        48792,  -- Icebound Fortitude
        207319, -- Corpse Shield
        194844, -- BoneStorm
        145629, -- Anti-Magic Zone
        194679, -- Rune Tap
        -- Demon Hunter
        207811, -- Nether Bond (DH)
        207810, -- Nether Bond (Target)
        187827, -- Metamorphosis
        263648, -- Soul Barrier
        209426, -- Darkness
        196555, -- Netherwalk
        212800, -- Blur
        188499, -- Blade Dance
        203819, -- Demon Spikes
        -- Druid
        102342, -- Ironbark
        61336,  -- Survival Instincts
        210655, -- Protection of Ashamane
        22812,  -- Barkskin
        200851, -- Rage of the Sleeper
        234081, -- Celestial Guardian
        202043, -- Protector of the Pack (its this one or the other)
        201940, -- Protector of the Pack
        201939, -- Protector of the Pack (Allies)
        192081, -- Ironfur
        50334,  -- Berserk (Guardian)
        -- Hunter
        186265, -- Aspect of the Turtle
        53480,  -- Roar of Sacrifice
        202748, -- Survival Tactics
        -- Mage
        45438,  -- Ice Block
        113862, -- Greater Invisibility
        198111, -- Temporal Shield
        198065, -- Prismatic Cloak
        11426,  -- Ice Barrier
        235313, -- Blazing Barrier
        235450, -- Prismatic Barrier
        110909, -- Alter Time
        -- Monk
        122783, -- Diffuse Magic
        122278, -- Dampen Harm
        125174, -- Touch of Karma
        201318, -- Fortifying Elixir
        202248, -- Guided Meditation
        120954, -- Fortifying Brew
        116849, -- Life Cocoon
        202162, -- Guard
        215479, -- Ironskin Brew
        353319, -- Peaceweaver (PvP)
        353362, -- Dematerialize (PvP)
        -- Paladin
        642,    -- Divine Shield
        498,    -- Divine Protection
        205191, -- Eye for an Eye
        184662, -- Shield of Vengeance
        1022,   -- Blessing of Protection
        6940,   -- Blessing of Sacrifice
        204018, -- Blessing of Spellwarding
        199507, -- Spreading The Word: Protection
        216857, -- Guarded by the Light
        228049, -- Guardian of the Forgotten Queen
        31850,  -- Ardent Defender
        86659,  -- Guardian of Ancien Kings
        212641, -- Guardian of Ancien Kings (Glyph of the Queen)
        209388, -- Bulwark of Order
        152262, -- Seraphim
        132403, -- Shield of the Righteous
        -- Priest
        81782,  -- Power Word: Barrier
        47585,  -- Dispersion
        19236,  -- Desperate Prayer
        213602, -- Greater Fade
        27827,  -- Spirit of Redemption
        197268, -- Ray of Hope
        47788,  -- Guardian Spirit
        33206,  -- Pain Suppression
        -- Rogue
        5277,   -- Evasion
        31224,  -- Cloak of Shadows
        1966,   -- Feint
        199754, -- Riposte
        45182,  -- Cheating Death
        199027, -- Veil of Midnight
        -- Shaman
        325174, -- Spirit Link
        204288, -- Earth Shield
        210918, -- Ethereal Form
        207654, -- Servant of the Queen
        108271, -- Astral Shift
        207498, -- Ancestral Protection
        -- Warlock
        108416, -- Dark Pact
        104773, -- Unending Resolve
        221715, -- Essence Drain
        212295, -- Nether Ward
        -- Warrior
        118038, -- Die by the Sword
        184364, -- Enraged Regeneration
        209484, -- Tactical Advance
        97463,  -- Commanding Shout
        213915, -- Mass Spell Reflection
        199038, -- Leave No Man Behind
        223658, -- Safeguard
        147833, -- Intervene
        198760, -- Intercept
        12975,  -- Last Stand
        871,    -- Shield Wall
        23920,  -- Spell Reflection
        227744, -- Ravager
        203524, -- Neltharions Fury
        190456, -- Ignore Pain
        132404, -- Shield Block
        -- Evoker
        363916, -- Obsidian Scales
        374348, -- Renewing Blaze
        -- Racial
        65116,  -- Stoneform
        -- Potion
        251231, -- Steelskin Potion
        -- Covenant
        324867, -- Fleshcraft (Necrolord)
    },
    cooldownBuffs = {
        -- Death Knight
        48707,  -- Anti-Magic Shell
        81256,  -- Dancing Rune Weapon
        55233,  -- Vampiric Blood
        193320, -- Umbilicus Eternus
        219809, -- Tombstone
        48792,  -- Icebound Fortitude
        207319, -- Corpse Shield
        194844, -- BoneStorm
        145629, -- Anti-Magic Zone
        194679, -- Rune Tap
        51271,  -- Pillar of Frost
        207256, -- Obliteration
        152279, -- Breath of Sindragosa
        233411, -- Blood for Blood
        212552, -- Wraith Walk
        343294, -- Soul Reaper
        194918, -- Blighted Rune Weapon
        48265,  -- Deaths Advance
        49039,  -- Lichborne
        47568,  -- Empower Rune Weapon
        -- Demon Hunter
        207811, -- Nether Bond (DH)
        207810, -- Nether Bond (Target)
        187827, -- Metamorphosis
        263648, -- Soul Barrier
        209426, -- Darkness
        196555, -- Netherwalk
        212800, -- Blur
        188499, -- Blade Dance
        203819, -- Demon Spikes
        206804, -- Rain from Above
        211510, -- Solitude
        162264, -- Metamorphosis
        205629, -- Demonic Trample
        188501, -- Spectral Sight
        -- Druid
        102342, -- Ironbark
        61336,  -- Survival Instincts
        210655, -- Protection of Ashamane
        22812,  -- Barkskin
        200851, -- Rage of the Sleeper
        234081, -- Celestial Guardian
        202043, -- Protector of the Pack (its this one or the other)
        201940, -- Protector of the Pack
        201939, -- Protector of the Pack (Allies)
        192081, -- Ironfur
        29166,  -- Innervate
        208253, -- Essence of GHanir
        194223, -- Celestial Alignment
        102560, -- Incarnation: Chosen of Elune
        102543, -- Incarnation: King of the Jungle
        102558, -- Incarnation: Guardian of Ursoc
        117679, -- Incarnation
        106951, -- Berserk (Feral)
        50334,  -- Berserk (Guardian)
        5217,   -- Tigers Fury
        1850,   -- Dash
        137452, -- Displacer Beast
        102416, -- Wild Charge
        77764,  -- Stampeding Roar (Cat)
        77761,  -- Stampeding Roar (Bear)
        305497, -- Thorns
        233756, -- Moon and Stars (not used?)
        234084, -- Moon and Stars (PvP)
        22842,  -- Frenzied Regeneration
        -- Hunter
        186265, -- Aspect of the Turtle
        53480,  -- Roar of Sacrifice
        202748, -- Survival Tactics
        62305,  -- Masters Call (its this one or the other)
        54216,  -- Masters Call
        288613, -- Trueshot
        260402, -- Double Tap
        193530, -- Aspect of the Wild
        19574,  -- Bestial Wrath
        186289, -- Aspect of the Eagle
        186257, -- Aspect of the Cheetah
        118922, -- Posthaste
        90355,  -- Ancient Hysteria (Pet)
        160452, -- Netherwinds (Pet)
        266779, -- Coordinated Assault
        -- Mage
        45438,  -- Ice Block
        113862, -- Greater Invisibility
        198111, -- Temporal Shield
        198065, -- Prismatic Cloak
        11426,  -- Ice Barrier
        235313, -- Blazing Barrier
        235450, -- Prismatic Barrier
        110909, -- Alter Time
        190319, -- Combustion
        80353,  -- Time Warp
        12472,  -- Icy Veins
        12042,  -- Arcane Power
        116014, -- Rune of Power
        198144, -- Ice Form
        108839, -- Ice Floes
        205025, -- Presence of Mind
        198158, -- Mass Invisibility
        221404, -- Burning Determination
        -- Monk
        122783, -- Diffuse Magic
        122278, -- Dampen Harm
        125174, -- Touch of Karma
        201318, -- Fortifying Elixir
        202248, -- Guided Meditation
        120954, -- Fortifying Brew
        116849, -- Life Cocoon
        202162, -- Guard
        215479, -- Ironskin Brew
        152173, -- Serenity
        137639, -- Storm, Earth, and Fire
        213664, -- Nimble Brew
        201447, -- Ride the Wind
        195381, -- Healing Winds
        116841, -- Tigers Lust
        119085, -- Chi Torpedo
        199407, -- Light on Your Feet
        209584, -- Zen Focus Tea
        -- Paladin
        642,    -- Divine Shield
        498,    -- Divine Protection
        205191, -- Eye for an Eye
        184662, -- Shield of Vengeance
        1022,   -- Blessing of Protection
        6940,   -- Blessing of Sacrifice
        204018, -- Blessing of Spellwarding
        199507, -- Spreading The Word: Protection
        216857, -- Guarded by the Light
        228049, -- Guardian of the Forgotten Queen
        31850,  -- Ardent Defender
        86659,  -- Guardian of Ancien Kings
        212641, -- Guardian of Ancien Kings (Glyph of the Queen)
        209388, -- Bulwark of Order
        152262, -- Seraphim
        132403, -- Shield of the Righteous
        31884,  -- Avenging Wrath
        105809, -- Holy Avenger
        231895, -- Crusade
        200652, -- Tyrs Deliverance
        216331, -- Avenging Crusader
        1044,   -- Blessing of Freedom
        210256, -- Blessing of Sanctuary
        199545, -- Steed of Glory
        210294, -- Divine Favor
        221886, -- Divine Steed
        31821,  -- Aura Mastery
        -- Priest
        81782,  -- Power Word: Barrier
        47585,  -- Dispersion
        19236,  -- Desperate Prayer
        213602, -- Greater Fade
        27827,  -- Spirit of Redemption
        197268, -- Ray of Hope
        47788,  -- Guardian Spirit
        33206,  -- Pain Suppression
        200183, -- Apotheosis
        10060,  -- Power Infusion
        47536,  -- Rapture
        194249, -- Voidform
        193223, -- Surrdender to Madness
        197862, -- Archangel
        197871, -- Dark Archangel
        197874, -- Dark Archangel
        215769, -- Spirit of Redemption
        213610, -- Holy Ward
        121557, -- Angelic Feather
        214121, -- Body and Mind
        65081,  -- Body and Soul
        197767, -- Speed of the Pious
        210980, -- Focus in the Light
        221660, -- Holy Concentration
        15286,  -- Vampiric Embrace
        -- Rogue
        5277,   -- Evasion
        31224,  -- Cloak of Shadows
        1966,   -- Feint
        199754, -- Riposte
        45182,  -- Cheating Death
        199027, -- Veil of Midnight
        121471, -- Shadow Blades
        13750,  -- Adrenaline Rush
        51690,  -- Killing Spree
        185422, -- Shadow Dance
        198368, -- Take Your Cut
        198027, -- Turn the Tables
        213985, -- Thiefs Bargain
        197003, -- Maneuverability
        212198, -- Crimson Vial
        185311, -- Crimson Vial
        209754, -- Boarding Party
        36554,  -- Shadowstep
        2983,   -- Sprint
        202665, -- Curse of the Dreadblades (Self Debuff)
        -- Shaman
        325174, -- Spirit Link
        204288, -- Earth Shield
        210918, -- Ethereal Form
        207654, -- Servant of the Queen
        108271, -- Astral Shift
        207498, -- Ancestral Protection
        204366, -- Thundercharge
        209385, -- Windfury Totem
        208963, -- Skyfury Totem
        204945, -- Doom Winds
        205495, -- Stormkeeper
        208416, -- Sense of Urgency
        2825,   -- Bloodlust
        16166,  -- Elemental Mastery
        167204, -- Feral Spirit
        114050, -- Ascendance (Elem)
        114051, -- Ascendance (Enh)
        114052, -- Ascendance (Resto)
        79206,  -- Spiritwalkers Grace
        58875,  -- Spirit Walk
        157384, -- Eye of the Storm
        192082, -- Wind Rush
        2645,   -- Ghost Wolf
        32182,  -- Heroism
        108281, -- Ancestral Guidance
        -- Warlock
        108416, -- Dark Pact
        113860, -- Dark Soul: Misery
        104773, -- Unending Resolve
        221715, -- Essence Drain
        212295, -- Nether Ward
        212284, -- Firestone
        196098, -- Soul Harvest
        221705, -- Casting Circle
        111400, -- Burning Rush
        196674, -- Planeswalker
        -- Warrior
        118038, -- Die by the Sword
        184364, -- Enraged Regeneration
        209484, -- Tactical Advance
        97463,  -- Commanding Shout
        213915, -- Mass Spell Reflection
        199038, -- Leave No Man Behind
        223658, -- Safeguard
        147833, -- Intervene
        198760, -- Intercept
        12975,  -- Last Stand
        871,    -- Shield Wall
        23920,  -- Spell Reflection
        227744, -- Ravager
        203524, -- Neltharions Fury
        190456, -- Ignore Pain
        132404, -- Shield Block
        1719,   -- Battle Cry
        107574, -- Avatar
        227847, -- Bladestorm (Arm)
        46924,  -- Bladestorm (Fury)
        118000, -- Dragon Roar
        199261, -- Death Wish
        18499,  -- Berserker Rage
        202164, -- Bounding Stride
        215572, -- Frothing Berserker
        199203, -- Thirst for Battle
        -- Evoker
        357170, -- Time Dilation
        374227, -- Zephyr
        357214, -- Wing Buffet
        368970, -- Tail Swipe
        372048, -- Opressing Roar
        370960, -- Emerald Communion
        370537, -- Stasis
        359816, -- Dream Flight
        370553, -- Tip the Scale
        363534, -- Rewind
        374968, -- Time Spiral
        368432, -- Unravel
        357210, -- Deep Breath
        382411, -- Eternity Surge
        370452, -- Shattering Star
        375087, -- Dragonrage
        -- Racials
        65116,  -- Stoneform
        59547,  -- Gift of the Naaru
        20572,  -- Blood Fury
        26297,  -- Berserking
        68992,  -- Darkflight
        58984,  -- Shadowmeld
        -- Consumables
        251231, -- Steelskin Potion (BfA Armor)
        251316, -- Potion of Bursting Blood (BfA Melee)
        269853, -- Potion of Rising Death (BfA Caster)
        279151, -- Battle Potion of Intellect (BfA Intellect)
        279152, -- Battle Potion of Agility (BfA Agility)
        279153, -- Battle Potion of Strength (BfA Strength)
        178207, -- Drums of Fury
        230935, -- Drums of the Mountain (Legion)
        256740, -- Drums of the Maelstrom (BfA)
        298155, -- Superior Steelskin Potion
        298152, -- Superior Battle Potion of Intellect
        298146, -- Superior Battle Potion of Agility
        298154, -- Superior Battle Potion of Strength
        298153, -- Superior Battle Potion of Stamina
        298836, -- Greater Flask of the Currents
        298837, -- Greater Flask of Endless Fathoms
        298839, -- Greater Flask of the Vast Horizon
        298841, -- Greater Flask of the Undertow
        -- Shadowlands Consumables
        307159, -- Potion of Spectral Agility
        307160, -- Potion of Hardened Shadows
        307161, -- Potion of Spiritual Clarity
        307162, -- Potion of Spectral Intellect
        307163, -- Potion of Spectral Stamina
        307164, -- Potion of Spectral Strength
        307165, -- Spiritual Anti-Venom
        307185, -- Spectral Flask of Power
        307187, -- Spectral Flask of Stamina
        307195, -- Potion of Hidden Spirit
        307196, -- Potion of Shaded Sight
        307199, -- Potion of Soul Purity
        307494, -- Potion of Empowered Exorcisms
        307495, -- Potion of Phantom Fire
        307496, -- Potion of Divine Awakening
        307497, -- Potion of Deathly Fixation
        307501, -- Potion of Specter Swiftness
        308397, -- Butterscotch Marinated Ribs
        308402, -- Surprisingly Palatable Feast
        308404, -- Cinnamon Bonefish Stew
        308412, -- Meaty Apple Dumplings
        308425, -- Sweet Silvergrill Sausages
        308434, -- Phantasmal Souffle and Fries
        308488, -- Tenebrous Crown Roast Aspic
        308506, -- Crawler Ravioli with Apple Sauce
        308514, -- Steak a la Mode
        308525, -- Banana Beef Pudding
        308637, -- Smothered Shank
        322302, -- Potion of Sacrificial Anima
        327708, -- Feast of Gluttonous Hedonism
        327715, -- Fried Bonefish
        327851, -- Seraph Tenders
    },
    ccDebuffs = {
        -- Death Knight
        47476,  -- Strangulate
        108194, -- Asphyxiate (Unholy)
        221562, -- Asphyxiate (Blood)
        207171, -- Winter is Coming
        206961, -- Tremble Before Me
        207167, -- Blinding Sleet
        212540, -- Flesh Hook (Pet)
        91807,  -- Shambling Rush (Pet)
        204085, -- Deathchill
        233395, -- Frozen Center
        212332, -- Smash (Pet)
        212337, -- Powerful Smash (Pet)
        91800,  -- Gnaw (Pet)
        91797,  -- Monstrous Blow (Pet)
        210141, -- Zombie Explosion
        -- Demon Hunter
        207685, -- Sigil of Misery
        217832, -- Imprison
        221527, -- Imprison (Banished version)
        204490, -- Sigil of Silence
        179057, -- Chaos Nova
        211881, -- Fel Eruption
        205630, -- Illidans Grasp
        208618, -- Illidans Grasp (Afterward)
        213491, -- Demonic Trample (its this one or the other)
        208645, -- Demonic Trample
        -- Druid
        81261,  -- Solar Beam
        5211,   -- Mighty Bash
        163505, -- Rake
        203123, -- Maim
        202244, -- Overrun
        99,     -- Incapacitating Roar
        33786,  -- Cyclone
        45334,  -- Immobilized
        102359, -- Mass Entanglement
        339,    -- Entangling Roots
        2637,   -- Hibernate
        102793, -- Ursols Vortex
        -- Hunter
        202933, -- Spider Sting (its this one or the other)
        233022, -- Spider Sting
        213691, -- Scatter Shot
        19386,  -- Wyvern Sting
        3355,   -- Freezing Trap
        203337, -- Freezing Trap (Survival PvPT)
        209790, -- Freezing Arrow
        24394,  -- Intimidation
        117526, -- Binding Shot
        190927, -- Harpoon
        201158, -- Super Sticky Tar
        162480, -- Steel Trap
        212638, -- Trackers Net
        200108, -- Rangers Net
        -- Mage
        61721,  -- Rabbit (Poly)
        61305,  -- Black Cat (Poly)
        28272,  -- Pig (Poly)
        28271,  --  (Poly)
        126819, -- Porcupine (Poly)
        161354, -- Monkey (Poly)
        161353, -- Polar bear (Poly)
        61780,  -- Turkey (Poly)
        161355, -- Penguin (Poly)
        161372, -- Peacock (Poly)
        277787, -- Direhorn (Poly)
        277792, -- Bumblebee (Poly)
        118,    -- Polymorph
        82691,  -- Ring of Frost
        31661,  -- Dragons Breath
        122,    -- Frost Nova
        33395,  -- Freeze
        157997, -- Ice Nova
        228600, -- Glacial Spike
        198121, -- Forstbite
        -- Monk
        119381, -- Leg Sweep
        202346, -- Double Barrel
        115078, -- Paralysis
        198909, -- Song of Chi-Ji
        202274, -- Incendiary Brew
        233759, -- Grapple Weapon
        123407, -- Spinning Fire Blossom
        116706, -- Disable
        232055, -- Fists of Fury (its this one or the other)
        -- Paladin
        853,    -- Hammer of Justice
        20066,  -- Repentance
        105421, -- Blinding Light
        31935,  -- Avengers Shield
        217824, -- Shield of Virtue
        205290, -- Wake of Ashes
        -- Priest
        9484,   -- Shackle Undead
        200196, -- Holy Word: Chastise
        200200, -- Holy Word: Chastise
        226943, -- Mind Bomb
        605,    -- Mind Control
        8122,   -- Psychic Scream
        15487,  -- Silence
        64044,  -- Psychic Horror
        453,    -- Mind Soothe
        -- Rogue
        2094,   -- Blind
        6770,   -- Sap
        1776,   -- Gouge
        1330,   -- Garrote - Silence
        207777, -- Dismantle
        199804, -- Between the Eyes
        408,    -- Kidney Shot
        1833,   -- Cheap Shot
        207736, -- Shadowy Duel (Smoke effect)
        212182, -- Smoke Bomb
        -- Shaman
        51514,  -- Hex
        211015, -- Hex (Cockroach)
        211010, -- Hex (Snake)
        211004, -- Hex (Spider)
        210873, -- Hex (Compy)
        196942, -- Hex (Voodoo Totem)
        269352, -- Hex (Skeletal Hatchling)
        277778, -- Hex (Zandalari Tendonripper)
        277784, -- Hex (Wicker Mongrel)
        118905, -- Static Charge
        77505,  -- Earthquake (Knocking down)
        118345, -- Pulverize (Pet)
        204399, -- Earthfury
        204437, -- Lightning Lasso
        157375, -- Gale Force
        64695,  -- Earthgrab
        -- Warlock
        710,    -- Banish
        6789,   -- Mortal Coil
        118699, -- Fear
        6358,   -- Seduction (Succub)
        171017, -- Meteor Strike (Infernal)
        22703,  -- Infernal Awakening (Infernal CD)
        30283,  -- Shadowfury
        89766,  -- Axe Toss
        233582, -- Entrenched in Flame
        -- Warrior
        5246,   -- Intimidating Shout
        132169, -- Storm Bolt
        132168, -- Shockwave
        199085, -- Warpath
        105771, -- Charge
        199042, -- Thunderstruck
        236077, -- Disarm
        -- Evoker
        360806, -- Wing Buffet
        372245, -- Terror of the Skies
        372048, -- Oppressing Roar
        355689, -- Landslide
        370898, -- Permeating Chill
        -- Racial
        20549,  -- War Stomp
        107079, -- Quaking Palm
    },
    dungeonDebuffs = {
        --[[
            M+
        ]]
        209858, -- Necrotic
        226512, -- Sanguine
        240443, -- Bursting
        240559, -- Grievous
        373364, -- Vampiric Claws
        373370, -- Nightmare Cloud
        373391, -- Nightmare
        373429, -- Carrion Swarm
        373509, -- Shadow Claws (Stacking)
        373570, -- Hypnosis
        373607, -- Shadowy Barrier (Hypnosis)
        396364, -- Mark of Wind
        396369, -- Mark of Lightning
        409492, -- Afflicted Cry
        440313, -- Void Rift (Xalatath dispel)
        --[[
            Cataclysm
        ]]
        -- Throne of the Tides
        75992,  -- Lightning Surge
        76363,  -- Wave of Corruption
        76516,  -- Poisoned Spear
        76820,  -- Hex
        426608, -- Null Blast
        426660, -- Razor Jaws
        426663, -- Ravenous Pursuit
        426688, -- Volatile Acid
        426727, -- Acid Barrage
        426741, -- Shellbreaker
        426783, -- Mind Flay
        427559, -- Bubbling Ooze
        427668, -- Festering Shockwave
        427670, -- Crushing Claw
        428103, -- Frostbolt
        428403, -- Grimy
        428404, -- Blotting Darkness
        428407, -- Blotting Barrage
        428542, -- Crushing Depths
        428868, -- Putrid Roar
        429048, -- Flame Shock
        -- Vortex Pinnacle
        76622,  -- Sunder Armor
        86292,  -- Cyclone Shield
        87618,  -- Static Cling
        87759,  -- Shockwave
        87771,  -- Crusader Strike
        88171,  -- Hurricane
        88182,  -- Lethargic Poison
        88282,  -- Upwind of Altairus
        88286,  -- Downwind of Altairus
        88314,  -- Twisting Winds
        410870, -- Cyclone
        410997, -- Rushing Wind
        411003, -- Turbulence
        -- Grim Batol
        449885, -- Shadow Gale 1
        461513, -- Shadow Gale 2
        449474, -- Molten Spark
        456773, -- Twilight Wind
        448953, -- Rumbling Earth
        447268, -- Skullsplitter
        449536, -- Molten Pool
        450095, -- Curse of Entropy
        448057, -- Abyssal Corruption
        451871, -- Mass Temor
        451613, -- Twilight Flame
        451378, -- Rive
        76711,  -- Sear Mind
        462220, -- Blazing Shadowflame
        451395, -- Corrupt
        82850,  -- Flaming Fixate
        451241, -- Shadowflame Slash
        451965, -- Molten Wake
        451224, -- Enveloping Shadowflame
        --[[
            Mists of Pandaria
        ]]
        -- Temple of the Jade Serpent
        106113, -- Touch of Nothingness
        106823, -- Serpent Strike
        110125, -- Shattered Resolve
        374037, -- Overwhelming Rage
        395859, -- Haunting Scream
        396093, -- Savage Leap
        396150, -- Feeling of Superiority
        396152, -- Feeling of Inferiority
        397878, -- Tainted Ripple
        397904, -- Setting Sun Kick
        397911, -- Touch of Ruin
        397914, -- Defiling Mist
        --[[
            Warlords of Draenor
        ]]
        -- Everbloom
        164294, -- Unchecked Growth
        164302, -- Unchecked Growth
        164886, -- Dreadpetal Pollen
        164965, -- Choking Vines
        165123, -- Venom Burst
        169179, -- Colossal Blow
        169445, -- Noxious Eruption
        169658, -- Poisonous Claws
        169839, -- Pyroblast
        169840, -- Frostbolt II
        426991, -- Blazing Cinders
        427510, -- Noxious Charge
        427513, -- Noxious Discharge
        427863, -- Frostbolt I
        428084, -- Glacial Fusion
        428834, -- Verdant Eruption
        -- Grimrail Depot
        156357, -- Blackrock Shrapnel
        160681, -- Suppressive Fire
        160702, -- Blackrock Mortar Shells
        161588, -- Diffused Energy
        162057, -- Spinning Spear
        162065, -- Freezing Snare
        162491, -- Acquiring Targets
        162507, -- Acquiring Targets
        164218, -- Double Slash
        166570, -- Slag Blast (Stacking)
        -- Iron Docks
        158341, -- Gushing Wounds
        162415, -- Time to Feed
        163276, -- Shredded Tendons
        164504, -- Intimidated
        167240, -- Leg Shot
        168398, -- Rapid Fire Targeting
        169341, -- Demoralizing Roar
        172631, -- Knocked Down
        172636, -- Slippery Grease
        172771, -- Incendiary Slug
        172889, -- Charging Slash
        173105, -- Whirling Chains
        173307, -- Serrated Spear
        173324, -- Jagged Caltrops
        -- Shadowmoon Burial Grounds
        152979, -- Soul Shred
        153501, -- Void Blast
        153524, -- Plague Spit
        153692, -- Necrotic Pitch
        154442, -- Malevolence
        154469, -- Ritual of Bones
        156776, -- Rending Voidlash
        158061, -- Blessed Waters of Purity
        162652, -- Lunar Purity
        164907, -- Void Cleave
        --[[
            Legion
        ]]
        -- Black Rook Hold
        194966, -- Soul Echoes
        197478, -- Dark Rush
        197521, -- Blazing Trail
        197546, -- Brutal Glaive
        197821, -- Felblazed Ground
        197974, -- Bonecrushing Strike
        198079, -- Hateful Gaze
        198446, -- Fel Vomit
        198501, -- Fel Vomitus
        198635, -- Unerring Shear
        199097, -- Cloud of Hypnosis
        199168, -- Itchy!
        199368, -- Legacy of the Ravencrest
        200084, -- Soul Blade
        200261, -- Bonecrushing Strike
        201733, -- Stinging Swarm
        202019, -- Shadow Bolt Volley
        203163, -- Sic Bats!
        204896, -- Drain Life
        214002, -- Raven's Dive
        224188, -- Hateful Charge
        225732, -- Strike Down
        225909, -- Soul Venom
        225963, -- Bloodthirsty Leap
        -- Return to Karazhan: Upper
        227465, -- Power Discharge
        227502, -- Unstable Mana
        227592, -- Frostbite
        228249, -- Inferno Bolt
        228252, -- Shadow Rend
        228261, -- Flame Wreath
        228958, -- Inferno Bolt
        229083, -- Burning Blast (Stacking)
        229159, -- Chaotic Shadows
        229241, -- Acquiring Target
        229248, -- Fel Beam
        230083, -- Nullification
        230221, -- Absorbed Mana
        -- Return to Karazhan: Lower
        29574,  -- Rend
        29690,  -- Drunken Skull Crack
        32752,  -- Summoning Disorientation
        227404, -- Intangible Presence
        227493, -- Mortal Strike
        227508, -- Mass Repentance
        227742, -- Garrote (Stacking)
        227832, -- Coat Check
        227848, -- Sacred Ground (Stacking)
        227851, -- Coat Check
        227917, -- Poetry Slam
        228164, -- Hammer Down
        228215, -- Severe Dusting
        228221, -- Severe Dusting
        228280, -- Oath of Fealty
        228526, -- Flirt
        228559, -- Charming Perfume
        228576, -- Allured
        228610, -- Burning Brand
        230297, -- Brittle Bones
        238606, -- Arcane Eruption
        241774, -- Shield Smash
        -- Court of Stars
        207278, -- Arcane Lockdown
        207979, -- Shockwave
        207980, -- Disintegration Beam
        207981, -- Disintegration Beam
        208165, -- Withering Soul
        209027, -- Quelling Strike
        209413, -- Suppress
        209512, -- Disrupting Energy
        209516, -- Mana Fang
        211464, -- Fel Detonation
        211473, -- Shadow Slash
        -- Halls of Valor
        193260, -- Static Field
        193743, -- Aegis of Aggramar Wielder
        193783, -- Aegis of Aggramar Up
        196838, -- Scent of Blood
        197963, -- Runic Brand Purple
        197964, -- Runic Brand Orange
        197965, -- Runic Brand Yellow
        197966, -- Runic Brand Blue
        197967, -- Runic Brand Green
        198944, -- Breach Armor
        199652, -- Sever
        199674, -- Wicked Dagger
        203963, -- Eye of the Storm
        215429, -- Thunderstrike
        215430, -- Thunderstrike
        -- Neltharion's Lair
        183407, -- Acid Splatter
        183465, -- Viscid Bile
        188494, -- Rancid Maw
        192800, -- Choking Dust
        193941, -- Impaling Shard
        199178, -- Spiked Tongue
        199705, -- Devouring
        200154, -- Burning Hatred
        210166, -- Toxic Retch
        215898, -- Crystalline Ground
        217851, -- Toxic Retch
        226296, -- Piercing Shards
        226388, -- Rancid Ooze
        --[[
            Battle for Azeroth
        ]]
        -- Freehold
        256363, -- Ripper Punch
        257436, -- Poisoning Strike
        257775, -- Plague Step
        257908, -- Oiled Blade
        258323, -- Infected Wound
        258875, -- Blackout Barrel
        274389, -- Rat Traps
        274555, -- Scabrous Bites
        -- Shrine of the Storm
        264166, -- Undertow
        264526, -- Grasp of the Depths
        264560, -- Choking Brine
        267034, -- Whispers of Power
        267818, -- Slicing Blast
        268104, -- Explosive Void
        268214, -- Carving Flesh
        268233, -- Electrifying Shock
        268309, -- Unending Darkness
        268317, -- Rip Mind
        268322, -- Touch of the Drowned
        268391, -- Mental Assault
        268896, -- Mind Rend
        274633, -- Sundering Blow
        274720, -- Abyssal Strike
        276268, -- Heaving Blow
        -- Siege of Boralus
        256897, -- Clamping Jaws
        257168, -- Cursed Slash
        257169, -- Terrifying Roar
        257292, -- Heavy Slash
        261428, -- Hangman's Noose
        272571, -- Choking Waters
        272588, -- Rotting Wounds
        272713, -- Crushing Slam
        272834, -- Viscous Slobber
        272874, -- Trample
        273470, -- Gut Shot
        273930, -- Hindering Cut
        274991, -- Putrid Waters
        275835, -- Stinging Venom Coating
        -- Tol Dagor
        256044, -- Deadeye
        256101, -- Explosive Burst (mythic)
        256105, -- Explosive Burst (mythic+)
        256198, -- Azerite Rounds: Incendiary
        256474, -- Heartstopper Venom
        257028, -- Fuselighter
        257119, -- Sand Trap
        257777, -- Crippling Shiv
        257791, -- Howling Fear
        258058, -- Squeeze
        258079, -- Massive Chomp
        258128, -- Debilitating Shout
        258313, -- Handcuff
        258864, -- Suppression Fire
        258917, -- Righteous Flames
        259711, -- Lockdown
        260016, -- Itchy Bite
        260067, -- Vicious Mauling
        265889, -- Torch Strike
        -- Waycrest Manor
        260569, -- Wildfire
        260703, -- Unstable Runic Mark
        260741, -- Jagged Nettles
        260900, -- Soul Manipulation
        260926, -- Soul Manipulation
        261140, -- Virulent Pathogen
        261438, -- Wasting Strike
        263943, -- Etch
        264040, -- Uprooted Thorns
        264050, -- Infected Thorn
        264105, -- Runic Mark
        264378, -- Fragment Soul
        264520, -- Severing Serpent
        264712, -- Rotten Expulsion
        265407, -- Dinner Bell
        265761, -- Thorned Barrage
        265880, -- Dread Mark
        265881, -- Decaying Touch
        265882, -- Lingering Dread
        267907, -- Soul Thorns
        268080, -- Aura of Apathy
        268086, -- Aura of Dread
        268125, -- Aura of Thorns
        271178, -- Ravaging Leap
        278444, -- Infest
        278456, -- Infest
        -- Atal'Dazar
        250036, -- Shadowy Remains
        250372, -- Lingering Nausea
        250585, -- Toxic Pool
        252687, -- Venomfang Strike
        253562, -- Wildfire
        254959, -- Soulburn
        255041, -- Terrifying Screech
        255371, -- Terrifying Visage
        255434, -- Serrated Teeth
        255558, -- Tainted Blood
        255567, -- Frenzied Charge
        255582, -- Molten Gold
        255814, -- Rending Maul
        255835, -- Transfusion Boss
        255836, -- Transfusion Boss
        257407, -- Pursuit
        257483, -- Pile of Bones
        258723, -- Grotesque Pool
        260666, -- Transfusion
        260668, -- Transfusion
        -- King's Rest
        265773, -- Spit Gold
        266191, -- Whirling Axes
        266231, -- Severing Axe
        266238, -- Shattered Defenses
        267273, -- Poison Nova
        267618, -- Drain Fluids
        267626, -- Dessication
        267763, -- Wretched Discharge
        268419, -- Gale Slash
        268796, -- Impaling Spear
        269932, -- Gust Slash
        270003, -- Suppression Slam
        270084, -- Axe Barrage
        270487, -- Severing Blade
        270492, -- Hex
        270507, -- Poison Barrage
        270865, -- Hidden Blade
        270920, -- Seduction
        271564, -- Embalming Fluid
        271640, -- Dark Revelation
        272388, -- Shadow Barrage
        276031, -- Pit of Despair
        -- Motherlode
        257337, -- Shocking Claw
        257371, -- Tear Gas
        257544, -- Jagged Cut
        259856, -- Chemical Burn
        260829, -- Homing Missle (travelling)
        260838, -- Homing Missle (exploded)
        262513, -- Azerite Heartseeker
        262794, -- Energy Lash
        263074, -- Festering Bite
        263637, -- Clothesline
        268797, -- Transmute: Enemy to Goo
        268846, -- Echo Blade
        269302, -- Toxic Blades
        270882, -- Blazing Azerite
        280604, -- Iced Spritzer
        280605, -- Brain Freeze
        -- Temple of Sethraliss
        263371, -- Conduction
        263914, -- Blinding Sand
        263958, -- A Knot of Snakes
        266923, -- Galvanize
        267027, -- Cytotoxin
        268007, -- Heart Attack
        268008, -- Snake Charm
        268013, -- Flame Shock
        269686, -- Plague
        272655, -- Scouring Sand
        272657, -- Noxious Breath
        272699, -- Venomous Spit
        273563, -- Neurotoxin
        -- Underrot
        259714, -- Decaying Spores
        260455, -- Serrated Fangs
        260685, -- Taint of G'huun
        265019, -- Savage Cleave
        265377, -- Hooked Snare
        265468, -- Withering Curse
        265533, -- Blood Maw
        265625, -- Dark Omen
        266107, -- Thirst for Blood
        269301, -- Putrid Blood
        272180, -- Death Bolt
        272609, -- Maddening Gaze
        278961, -- Decaying Mind
        -- Operation Mechagon
        285443, -- 'Hidden' Flame Cannon
        291914, -- Cutting Beam
        291928, -- Giga-Zap
        291972, -- Explosive Leap
        291974, -- Obnoxious Monologue
        292267, -- Giga-Zap
        293670, -- Chain Blade
        294195, -- Arcing Zap
        294855, -- Blossom Blast
        294929, -- Blazing Chomp
        295445, -- Wreck
        296150, -- Vent Blast
        296560, -- Clinging Static
        297257, -- Electrical Charge
        297283, -- Cave In
        298602, -- Smoke Cloud
        298669, -- Taze
        299475, -- B.O.R.K
        299572, -- Shrink
        300650, -- Suffocating Smog
        300659, -- Consuming Slime
        301712, -- Pounce
        302274, -- Fulminating Zap
        302384, -- Static Discharge
        --[[
            Shadowlands
        ]]
        -- Tazavesh, the Veiled Market
        346116, -- Shearing Swings
        346297, -- Unstable Explosion
        346828, -- Sanitizing Field
        346961, -- Purging Field
        347481, -- Shuri
        347728, -- Flock!
        347744, -- Quickblade
        349999, -- Anima Detonation
        350013, -- Gluttonous Feast
        350134, -- Infinite Breath
        350804, -- Collapsing Energy
        350885, -- Hyperlight Jolt
        351101, -- Energy Fragmentation
        351956, -- High-Value Target
        355451, -- Undertow
        355465, -- Boulder Throw
        355581, -- Crackle
        355641, -- Scintillate
        355915, -- Glyph of Restraint
        356011, -- Beam Splicer
        356408, -- Ground Stomp
        -- Halls of Atonement
        319603, -- Curse of Stone
        319611, -- Turned to Stone
        323650, -- Haunting Fixation
        325876, -- Curse of Obliteration
        326632, -- Stony Veins
        326874, -- Ankle Bites
        326891, -- Anguish
        329321, -- Jagged Swipe 1
        335338, -- Ritual of Woe
        340446, -- Mark of Envy
        344993, -- Jagged Swipe 2
        -- Mists of Tirna Scithe
        321891, -- Freeze Tag Fixation
        322486, -- Overgrowth 2
        322487, -- Overgrowth 1
        322557, -- Soul Split
        322563, -- Marked Prey
        323043, -- Bloodletting
        325021, -- Mistveil Tear
        325027, -- Bramble Burst
        325224, -- Anima Injection
        325418, -- Volatile Acid
        326092, -- Debilitating Poison
        328756, -- Repulsive Visage
        331172, -- Mind Link
        -- Plaguefall
        320512, -- Corroded Claws
        320542, -- Wasting Blight
        322358, -- Burning Strain
        322410, -- Withering Filth
        325552, -- Cytotoxic Slash
        328180, -- Gripping Infection
        328395, -- Venompiercer
        329110, -- Slime Injection
        330069, -- Concentrated Plague
        331818, -- Shadow Ambush
        332397, -- Shroudweb
        333406, -- Assassinate
        336258, -- Solitary Prey
        336301, -- Web Wrap
        340355, -- Rapid Infection
        -- The Necrotic Wake
        320170, -- Necrotic Bolt
        320573, -- Shadow Well
        320717, -- Blood Hunger
        321821, -- Disgusting Guts
        323198, -- Dark Exile
        323365, -- Clinging Darkness
        323464, -- Dark Ichor
        324381, -- Chill Scythe
        328181, -- Frigid Cold
        333485, -- Disease Cloud
        333489, -- Necrotic Breath
        333492, -- Necrotic Ichor
        334748, -- Drain Fluids
        338353, -- Goresplatter
        338357, -- Tenderize
        338606, -- Morbid Fixation 2
        343504, -- Dark Grasp
        343556, -- Morbid Fixation 1
        -- Theater of Pain
        319539, -- Soulless
        319626, -- Phantasmal Parasite
        321768, -- On the Hook
        323406, -- Jagged Gash
        323750, -- Vile Gas
        323825, -- Grasping Rift
        323831, -- Death Grasp
        324449, -- Manifest Death
        326892, -- Fixate
        330608, -- Vile Eruption
        330700, -- Decaying Blight
        330868, -- Necrotic Bolt Volley
        333299, -- Curse of Desolation 1
        333301, -- Curse of Desolation 2
        341949, -- Withering Blight
        342675, -- Bone Spear
        -- Sanguine Depths
        321038, -- Burden Soul
        322429, -- Severing Slice
        322554, -- Castigate
        325254, -- Iron Spikes
        326827, -- Dread Bindings
        326836, -- Curse of Suppression
        328593, -- Agonize
        334653, -- Engorge
        335306, -- Barbed Shackles
        -- Spires of Ascension
        317661, -- Insidious Venom
        322817, -- Lingering Doubt
        322818, -- Lost Confidence
        323195, -- Purifying Blast
        323792, -- Anima Field
        324205, -- Blinding Flash
        327481, -- Dark Lance
        328331, -- Forced Confession
        328434, -- Intimidated
        330683, -- Raw Anima
        331251, -- Deep Connection
        338729, -- Charged Stomp
        341215, -- Volatile Anima
        -- De Other Side
        320144, -- Buzz-Saw 2
        320786, -- Power Overwhelming
        322746, -- Corrupted Blood
        323687, -- Arcane Lightning
        323692, -- Arcane Vulnerability
        323877, -- Echo Finger Laser X-treme
        325725, -- Cosmic Artifice
        327649, -- Crushed Soul
        328987, -- Zealous
        330434, -- Buzz-Saw 1
        331379, -- Lubricate
        331847, -- W-00F
        332678, -- Gushing Wound
        333250, -- Reaver
        334496, -- Soporific Shimmerdust
        334535, -- Beak Slice
        334913, -- Master of Death
        339978, -- Pacifying Mists
        -- Shriekwing
        328897, -- Exsanguinated
        329370, -- Deadly Descent
        330713, -- Reverberating Pain
        336494, -- Echo Screech
        342077, -- Echolocation
        346301, -- Bloodlight
        -- Huntsman Altimor
        334695, -- Destabilize
        334852, -- Petrifying Howl
        334945, -- Vicious Lunge
        334971, -- Jagged Claws
        335111, -- Huntsman's Mark 3
        335112, -- Huntsman's Mark 2
        335113, -- Huntsman's Mark 1
        335304, -- Sinseeker
        -- Hungering Destroyer
        329298, -- Gluttonous Miasma
        334228, -- Volatile Ejection
        -- Lady Inerva Darkvein
        324982, -- Shared Suffering (Partner)
        324983, -- Shared Suffering
        325382, -- Warped Desires
        325936, -- Shared Cognition
        332664, -- Concentrate Anima
        335396, -- Hidden Desire
        -- Sun King's Salvation
        325251, -- Sin of Pride
        326078, -- Infuser's Boon
        328479, -- Eyes on Target
        328889, -- Greater Castigation
        333002, -- Vulgar Brand
        341473, -- Crimson Flurry Teleport
        341475, -- Crimson Flurry
        -- Artificer Xy'mox
        325236, -- Glyph of Destruction
        326302, -- Stasis Trap
        327414, -- Possession
        327902, -- Fixate
        328448, -- Dimensional Tear 2
        328468, -- Dimensional Tear 1
        340860, -- Withering Touch
        -- The Council of Blood
        327052, -- Drain Essence 1
        327773, -- Drain Essence 2
        328334, -- Tactical Advance
        330848, -- Wrong Moves
        331636, -- Dark Recital 1
        331637, -- Dark Recital 2
        331706, -- Scarlet Letter
        346651, -- Drain Essence Mythic
        -- Sludgefist
        331209, -- Hateful Gaze
        332572, -- Falling Rubble
        335270, -- Chain This One!
        335293, -- Chain Link
        335295, -- Shattering Chain
        335470, -- Chain Slam
        339181, -- Chain Slam (Root)
        342419, -- Chain Them! 1
        342420, -- Chain Them! 2
        -- Stone Legion Generals
        333377, -- Wicked Mark
        334498, -- Seismic Upheaval
        334541, -- Curse of Petrification
        334616, -- Petrified
        334765, -- Heart Rend
        334771, -- Heart Hemorrhage
        337643, -- Unstable Footing
        339690, -- Crystalize
        342655, -- Volatile Anima Infusion
        342698, -- Volatile Anima Infection
        343881, -- Serrated Tear
        -- Sire Denathrius
        326699, -- Burden of Sin
        326851, -- Blood Price
        327039, -- Feeding Time
        327796, -- Night Hunter
        327992, -- Desolation
        328276, -- March of the Penitent
        329181, -- Wracking Pain
        329951, -- Impale
        332794, -- Fatal Finesse
        334016, -- Unworthy
        335873, -- Rancor
        -- The Tarragrue
        346985, -- Overpower
        346986, -- Crushed Armor
        347269, -- Chains of Eternity
        347283, -- Predator's Howl
        347286, -- Unshakeable Dread
        -- Eye of the Jailer
        348074, -- Assailing Lance
        349979, -- Dragging Chains
        350606, -- Hopeless Lethargy
        350763, -- Annihilating Glare
        351827, -- Spreading Misery
        355143, -- Deathlink
        355240, -- Scorn
        355245, -- Ire
        -- The Nine
        350039, -- Arthura's Crushing Gaze
        350109, -- Brynja's Mournful Dirge
        350184, -- Daschla's Mighty Impact
        350202, -- Unending Strike
        350287, -- Song of Dissolution
        350374, -- Wings of Rage
        350475, -- Pierce Soul
        350483, -- Link Essence
        350542, -- Fragments of Destiny
        350555, -- Shard of Destiny
        -- Remnant of Ner'zhul
        349890, -- Suffering
        350073, -- Torment
        350469, -- Malevolence
        354479, -- Spite
        354534, -- Spite
        354634, -- Spite
        -- Soulrender Dormazain
        348987, -- Warmonger Shackle
        350422, -- Ruinblade
        350647, -- Brand of Torment
        350851, -- Vessel of Torment
        350927, -- Warmonger Shackle
        351787, -- Agonizing Spike
        353023, -- Torment
        353429, -- Tormented
        354231, -- Soul Manacles
        -- Painsmith Raznal
        348456, -- Flameclasp Trap
        355505, -- Shadowsteel Chains
        355506, -- Shadowsteel Chains
        355526, -- Spiked
        355568, -- Cruciform Axe
        355786, -- Blackened Armor
        356472, -- Lingering Flames
        356870, -- Flameclasp Eruption
        -- Guardian of the First Ones
        347359, -- Suppression Field
        350496, -- Threat Neutralization
        350732, -- Sunder
        352394, -- Radiant Energy
        352833, -- Disintegration
        355357, -- Obliterate
        -- Fatescribe Roh-Kalo
        350355, -- Fated Conjunction
        350568, -- Call of Eternity
        351680, -- Invoke Destiny
        353432, -- Burden of Destiny
        353435, -- Overwhelming Burden
        353693, -- Unstable Accretion
        353931, -- Twist Fate
        354365, -- Grim Portent
        -- Kel'Thuzad
        346530, -- Frozen Destruction
        347292, -- Oblivion's Echo
        347454, -- Oblivion's Echo
        347518, -- Oblivion's Echo
        348638, -- Return of the Damned
        348760, -- Frost Blast
        348978, -- Soul Exhaustion
        354289, -- Sinister Miasma
        355137, -- Shadow Pool
        355389, -- Relentless Haunt (Fixate)
        357298, -- Frozen Binds
        -- Sylvanas Windrunner
        347607, -- Banshee's Mark
        347670, -- Shadow Dagger
        347704, -- Veil of Darkness
        348064, -- Wailing Arrow
        349458, -- Domination Chains
        351091, -- Destabilize
        351092, -- Destabilize
        351117, -- Crushing Dread
        351253, -- Banshee Wail
        351451, -- Curse of Lethargy
        351870, -- Haunting Wave
        -- Vigilant Guardian
        360412, -- Exposed Core
        360415, -- Defenseless
        364447, -- Dissonance
        364881, -- Matter Disolution
        364904, -- Anti-Matter
        366393, -- Searing Ablation
        -- Skolex, the Insatiable Ravener
        359976, -- Riftmaw
        359981, -- Rend
        360098, -- Warp Sickness
        364522, -- Devouring Blood
        366070, -- Volatile Residue
        -- Artificer Xy'mox
        362614, -- Interdimensional Wormhole
        362615, -- Interdimensional Wormhole
        362803, -- Glyph of Relocation
        363413, -- Forerunner Rings A
        364030, -- Debilitating Ray
        364604, -- Forerunner Rings B
        365681, -- System Shock
        -- Dausegne, The Fallen Oracle
        360960, -- Staggering Barrage Mythic
        361018, -- Staggering Barrage Mythic
        361225, -- Encroaching Dominion
        361751, -- Disintegration Halo
        361966, -- Infused Strikes
        364289, -- Staggering Barrage
        -- Prototype Pantheon
        360259, -- Gloom Bolt
        361689, -- Wracking Pain
        362352, -- Pinned
        362383, -- Anima Bolt
        364839, -- Sinful Projection
        365306, -- Invigorating Bloom
        366232, -- Animastorm
        -- Lihuvim, Principle Architect
        360159, -- Unstable Protoform Energy
        363676, -- Deconstructing Energy
        363681, -- Deconstructing Blast
        363795, -- Deconstructing Energy
        464312, -- Ephemeral Barrier
        -- Halondrus the Reclaimer
        360114, -- Ephemeral Fissure
        361002, -- Ephemeral Fissure
        361309, -- Lightshatter Beam
        -- Anduin Wrynn
        363020, -- Necrotic Claws
        365008, -- Psychic Terror
        365021, -- Wicked Star (marked)
        365024, -- Wicked Star (hit)
        365293, -- Befouled Barrier
        365445, -- Scarred Soul
        366849, -- Domination Word: Pain
        -- Lords of Dread
        360012, -- Cloud of Carrion
        360146, -- Fearful Trepidation
        360148, -- Bursting Dread
        360241, -- Unsettling Dreams
        -- Rygelon
        361548, -- Dark Eclipse
        362137, -- Corrupted Wound
        362172, -- Corrupted Wound
        362206, -- Event Horizon
        -- The Jailer
        362075, -- Domination
        363332, -- Unbreaking Grasp
        363886, -- Imprisonment
        363893, -- Martyrdom
        365150, -- Rune of Domination
        365219, -- Chains of Anguish
        366285, -- Rune of Compulsion
        --[[
            Dragonflight
        ]]
        -- Ruby Life Pools
        372047, -- Flurry
        372682, -- Primal Chill
        372697, -- Jagged Earth
        372820, -- Scorched Earth
        372858, -- Searing Blows
        372860, -- Searing Wounds
        372963, -- Chillstorm
        373589, -- Primal Chill
        373692, -- Inferno
        373693, -- Living Bomb
        373869, -- Burning Touch
        381515, -- Stormslam
        381518, -- Winds of Change
        381862, -- Infernocore
        384773, -- Flaming Embers
        384823, -- Inferno
        385536, -- Flame Dance
        392406, -- Thunderclap
        392451, -- Flashfire
        392924, -- Shock Blast
        396411, -- Primal Overload
        372047, -- Flurry
        372682, -- Primal Chill
        -- The Nokhud Offensive
        375937, -- Rending Strike
        376634, -- Iron Spear
        376730, -- Stormwinds
        376827, -- Conductive Strike
        376864, -- Static Spear
        376894, -- Crackling Upheaval
        376899, -- Crackling Cloud
        381692, -- Swift Stab
        382628, -- Surge of Power
        384134, -- Pierce
        384492, -- Hunter's Mark
        386025, -- Tempest
        386912, -- Stormsurge Cloud
        387615, -- Grasp of the Dead
        387629, -- Rotting Wind
        388446, -- Also Stormcaller's Fury
        388451, -- Stormcaller's Fury
        388801, -- Mortal Strike
        395035, -- Shatter Soul
        395669, -- Aftershock
        -- The Azure Vault
        370764, -- Piercing Shards
        371007, -- Splintering Shards
        374523, -- Arcane Roots
        374567, -- Explosive Brand
        374789, -- Infused Strike
        375591, -- Sappy Burst
        375596, -- Erratic Growth Channel
        375602, -- Erratic Growth
        375649, -- Infused Ground
        377488, -- Icy Bindings
        384978, -- Dragon Strike
        385267, -- Crackling Vortex
        385409, -- Ouch, ouch, ouch!
        386640, -- Tear Flesh
        386881, -- Frost Bomb
        387150, -- Frozen Ground
        387151, -- Icy Devastator
        387564, -- Mystic Vapors
        388777, -- Oppressive Miasma
        -- Algeth'ar Academy
        376997, -- Savage Peck
        377008, -- Deafening Screech
        377344, -- Peck
        386181, -- Mana Bomb
        386201, -- Corrupted Mana
        387932, -- Astral Whirlwind
        388544, -- Barkbreaker
        388866, -- Mana Void
        388912, -- Severing Slash
        388984, -- Vicious Ambush
        389011, -- Overwhelming Power
        389033, -- Lasher Toxin
        391977, -- Oversurge
        396716, -- Splinterbark
        -- Brackenhide Hollow
        367481, -- Bloody Bite
        367484, -- Vicious Clawmangle
        367521, -- Bone Bolt
        368081, -- Withering
        368091, -- Infected Bite
        368299, -- Toxic Trap
        373896, -- Withering Rot
        373912, -- Decaystrike
        373917, -- Decaystrike
        374245, -- Rotting Creek
        376149, -- Choking Rotcloud
        376933, -- Grasping Vines
        377844, -- Bladestorm
        377864, -- Infectious Spit
        378020, -- Gash Frenzy
        378229, -- Marked for Butchery
        381835, -- Bladestorm
        382723, -- Crushing Smash
        382787, -- Decay Claws
        382808, -- Withering Contagion
        383087, -- Withering Contagion
        383399, -- Rotting Surge
        384425, -- Smell Like Meat
        384725, -- Feeding Frenzy
        384970, -- Scented Meat
        384974, -- Scented Meat
        385058, -- Withering Poison
        385185, -- Disoriented
        385303, -- Teeth Trap
        385356, -- Ensnaring Trap
        385361, -- Rotting Sickness
        387210, -- Decaying Strength
        -- Halls of Infusion
        257274, -- Vile Coating
        374020, -- Containment Beam
        374339, -- Demoralizing Shout
        374389, -- Gulp Swog Toxin
        374563, -- Dazzle
        374615, -- Cheap Shot
        374706, -- Pyretic Burst
        374724, -- Molten Subduction
        375384, -- Rumbling Earth
        383935, -- Spark Volley
        384524, -- Titanic Fist
        385168, -- Thunderstorm
        385555, -- Gulp
        385963, -- Frost Shock
        386743, -- Polar Winds
        387359, -- Waterlogged
        387571, -- Focused Deluge
        389179, -- Power Overload
        389181, -- Power Field
        389443, -- Purifying Blast
        389446, -- Nullifying Pulse
        391610, -- Blinding Winds
        391613, -- Creeping Mold
        391634, -- Deep Chill
        393444, -- Gushing Wound
        -- Neltharus
        372208, -- Djaradin Lava
        372224, -- Dragonbone Axe
        372459, -- Burning
        372461, -- Imbued Magma
        372570, -- Bold Ambush
        372971, -- Reverberating Slam
        373089, -- Scorching Fusillade
        373735, -- Dragon Strike
        374451, -- Burning Chain
        374482, -- Grounding Chain
        374534, -- Heated Swings
        374842, -- Blazing Aegis
        374854, -- Erupted Ground
        375204, -- Liquid Hot Magma
        375890, -- Magma Eruption
        376784, -- Flame Vulnerability
        377018, -- Molten Gold
        377522, -- Burning Pursuit
        377542, -- Burning Ground
        378818, -- Magma Conflagration
        384161, -- Mote of Combustion
        389059, -- Slag Eruption
        392666, -- Blazing Aegis
        396332, -- Fiery Focus
        -- Uldaman: Legacy of Tyr
        368996, -- Purging Flames
        369006, -- Burning Heat
        369110, -- Unstable Embers
        369337, -- Difficult Terrain
        369365, -- Curse of Stone
        369366, -- Trapped in Stone
        369411, -- Sonic Burst
        369419, -- Venomous Fangs
        369792, -- Skullcracker
        369811, -- Brutal Slam
        369818, -- Diseased Bite
        369828, -- Chomp
        372652, -- Resonating Orb
        372718, -- Earthen Shards
        375286, -- Searing Cannonfire
        376325, -- Eternity Zone
        376333, -- Temporal Zone
        377405, -- Time Sink
        377486, -- Time Blade
        377510, -- Stolen Time
        377732, -- Jagged Bite
        377825, -- Burning Pitch
        382071, -- Resonating Orb
        382576, -- Scorn of Tyr
        -- Dawn of the Infinite
        400681, -- Spark of Tyr
        401420, -- Sand Stomp
        401667, -- Time Stasis
        403910, -- Decaying Time
        403912, -- Accelerating Time
        404141, -- Chrono-faded
        407147, -- Blight Seep
        407406, -- Corrosion
        408084, -- Necrofrost
        409266, -- Extinction Blast
        410497, -- Mortal Wounds
        412027, -- Chronal Burn
        413013, -- Chronoshear
        413041, -- Sheared Lifespan
        413142, -- Eon Shatter
        413208, -- Sand Buffeted
        414300, -- Extinction Blast
        416716, -- Sheared Lifespan
        418009, -- Serrated Arrows
        -- Eranog
        370597, -- Kill Order
        370648, -- Primal Flow
        390715, -- Primal Rifts
        -- Terros
        381253, -- Awakened Earth
        382458, -- Resonant Aftermath
        382776, -- Awakened Earth
        386352, -- Rock Blast
        -- The Primal Council
        371624, -- Conductive Mark
        372027, -- Slashing Blaze
        374039, -- Meteor Axe
        -- Sennarth, the Cold Breath
        371976, -- Chilling Blast
        372082, -- Enveloping Webs
        373048, -- Suffocating Webs
        374104, -- Wrapped in Webs Slow
        374503, -- Wrapped in Webs Stun
        374659, -- Rush
        -- Dathea, Ascended
        388290, -- Cyclone
        391686, -- Conductive Mark
        -- Kurog Grimtotem
        372458, -- Below Zero
        372514, -- Frost Bite
        374023, -- Searing Carnage
        374427, -- Ground Shatter
        374554, -- Lava Pool
        374709, -- Seismic Rupture
        377780, -- Skeletal Fractures
        390920, -- Shocking Burst
        -- Broodkeeper Diurna
        375578, -- Flame Sentry
        375620, -- Ionizing Charge
        378782, -- Mortal Wounds
        378787, -- Crushing Stoneclaws
        388920, -- Frozen Shroud
        -- Raszageth the Storm-Eater
        377467, -- Fulminating Charge
        381615, -- Static Charge
        385073, -- Ball Lightning
        399713, -- Magnetic Charge
        -- Kazzara
        402253, -- Ray of Anguish
        402420, -- Molten Scar
        404743, -- Terror Claws
        406525, -- Dread Rift
        406530, -- Riftburn
        -- Molgoth
        401809, -- Corrupting Shadow
        402617, -- Blazing Heat
        405084, -- Lingering Umbra
        405394, -- Shadowflame
        405642, -- Blistering Twilight
        405645, -- Engulfing Heat
        -- Experimentation of Dracthyr
        405392, -- Disintegrate
        405423, -- Disintegrate
        406233, -- Deep Breath
        406313, -- Infused Strikes
        406317, -- Mutilation
        406365, -- Mutilation
        407302, -- Infused Explosion
        407327, -- Unstable Essence
        -- Zaqali Invasion
        401407, -- Blazing Spear
        401452, -- Blazing Spear
        407017, -- Vigorous Gale
        408873, -- Heavy Cudgel
        409275, -- Magma Flow
        410353, -- Flaming Cudgel
        -- Rashok
        405819, -- Searing Slam
        407547, -- Flaming Upsurge
        407597, -- Earthen Crush
        408857, -- Doom Flame
        -- Zskarn
        403978, -- Blast Wave
        404010, -- Unstable Embers
        404942, -- Searing Claws
        404955, -- Shrapnel Bomb
        405462, -- Dragonfire Traps
        405592, -- Salvage Parts
        409942, -- Elimination Protocol
        -- Magmorax
        402994, -- Molten Spittle
        403747, -- Igniting Roar
        404846, -- Incinerating Maws
        408955, -- Incinerating Maws
        -- Echo of Neltharion
        401130, -- Wild Magic (Mage)
        401131, -- Wild Summoning (Warlock)
        401133, -- Wildshift (Druid)
        401135, -- Wild Breath (Evoker)
        401998, -- Calamitous Strike
        402120, -- Collapsed Earth
        403846, -- Sweeping Shadows
        405484, -- Surrendering to Corruption
        407182, -- Rushing Shadows
        407220, -- Rushing Shadows
        407728, -- Sundered Shadow
        408071, -- Shapeshifter's Fervor
        408160, -- Shadow Strike
        409058, -- Seeping Lava
        409373, -- Disrupt Earth
        -- Scalecommander Sarkareth
        401383, -- Oppressing Howl
        401951, -- Oblivion
        403520, -- Embrace of Nothingness
        407496, -- Infinite Duress
        -- Gnarlroot
        421038, -- Ember-Charred II
        421972, -- Controlled Burn
        424734, -- Uprooted Agony
        425002, -- Ember-Charred I
        426106, -- Dreadfire Barrage
        -- Igira the Cruel
        414367, -- Gathering Torment
        414888, -- Blistering Spear
        416056, -- Wracking Skever II
        424065, -- Wracking Skewer I
        -- Volcoross
        419054, -- Molten Venom
        421207, -- Coiling Flames
        423494, -- Tidal Blaze
        423759, -- Serpent's Crucible
        -- Council of Dreams
        418589, -- Polymorph Bomb
        420858, -- Poisonous Javelin
        420948, -- Barreling Charge
        421031, -- Song of the Dragon
        421032, -- Captivating Finale
        426390, -- Corrosive Pollen
        -- Larodar, Keeper of the Flame
        421594, -- Smoldering Suffocation
        425888, -- Igniting Growth
        426249, -- Blazing Coalescence
        427299, -- Flash Fire
        428901, -- Ashen Devastation
        -- Nymue, Weaver of the Cycle
        426520, -- Weaver's Burden
        427137, -- Threads of Life
        427138, -- Threads of Life
        428273, -- Woven Resonance
        -- Smolderon
        421455, -- Overheated
        421643, -- Emberscar's Mark
        421656, -- Cauterizing Wound
        425574, -- Lingering Burn
        426018, -- Seeking Inferno
        -- Tindral Sageswift, Seer of the Flame
        424495, -- Mass Entanblement
        424578, -- Blazing Mushroom
        424579, -- Suppressive Ember
        424580, -- Falling Stars
        424581, -- Fiery Growth
        424665, -- Seed of Flame
        427297, -- Flame Surge
        --[[
            The War Within
        ]]
        -- The Stonevault
        427329, -- Void Corruption
        435813, -- Void Empowerment
        423572, -- Void Empowerment
        424889, -- Seismic Reverberation
        424795, -- Refracting Beam
        457465, -- Entropy
        425974, -- Ground Pound
        445207, -- Piercing Wail
        428887, -- Smashed
        427382, -- Concussive Smash
        449154, -- Molten Mortar
        427361, -- Fracture
        443494, -- Crystalline Eruption
        424913, -- Volatile Explosion
        443954, -- Exhaust Vents
        426308, -- Void Infection
        429999, -- Flaming Scrap
        429545, -- Censoring Gear
        428819, -- Exhaust Vents
        -- City of Threads
        434722, -- Subjugate
        439341, -- Splice
        440437, -- Shadow Shunpo
        448561, -- Shadows of Doubt
        440107, -- Knife Throw
        439324, -- Umbral Weave
        442285, -- Corrupted Coating
        440238, -- Ice Sickles
        461842, -- Oozing Smash
        434926, -- Lingering Influence
        440310, -- Chains of Oppression
        439646, -- Process of Elimination
        448562, -- Doubt
        441391, -- Dark Paranoia
        461989, -- Oozing Smash
        441298, -- Freezing Blood
        441286, -- Dark Paranoia
        452151, -- Rigorous Jab
        451239, -- Brutal Jab
        443509, -- Ravenous Swarm
        443437, -- Shadows of Doubt
        451295, -- Void Rush
        443427, -- Web Bolt
        461630, -- Venomous Spray
        445435, -- Black Blood
        443401, -- Venom Strike
        443430, -- Silk Binding
        443438, -- Doubt
        443435, -- Twist Thoughts
        443432, -- Silk Binding
        448047, -- Web Wrap
        451426, -- Gossamer Barrage
        446718, -- Umbral Weave
        450055, -- Gutburst
        450783, -- Perfume Toss
        -- The Dawnbreaker
        463428, -- Lingering Erosion
        426736, -- Shadow Shroud
        434096, -- Sticky Webs
        453173, -- Collapsing Night
        426865, -- Dark Orb
        434090, -- Spinneret's Strands
        434579, -- Corrosion
        426735, -- Burning Shadows
        434576, -- Acidic Stupor
        452127, -- Animate Shadows
        438957, -- Acid Pools
        434441, -- Rolling Acid
        451119, -- Abyssal Blast
        453345, -- Abyssal Rot
        449332, -- Encroaching Shadows
        431333, -- Tormenting Beam
        431309, -- Ensnaring Shadows
        451107, -- Bursting Cocoon
        434406, -- Rolling Acid
        431491, -- Tainted Slash
        434113, -- Spinneret's Strands
        431350, -- Tormenting Eruption
        431365, -- Tormenting Ray
        434668, -- Sparking Arathi Bomb
        460135, -- Dark Scars
        451098, -- Tacky Nova
        450855, -- Dark Orb
        431494, -- Black Edge
        451115, -- Terrifying Slam
        432448, -- Stygian Seed
        -- Ara-Kara, City of Echoes
        461487, -- Cultivated Poisons
        432227, -- Venom Volley
        432119, -- Faded
        433740, -- Infestation
        439200, -- Voracious Bite
        433781, -- Ceaseless Swarm
        432132, -- Erupting Webs
        434252, -- Massive Slam
        432031, -- Grasping Blood
        438599, -- Bleeding Jab
        438618, -- Venomous Spit
        436401, -- AUGH!
        434830, -- Vile Webbing
        436322, -- Poison Bolt
        434083, -- Ambush
        433843, -- Erupting Webs
        -- Ulgrax the Devourer
        434705, -- Tenderized
        435138, -- Digestive Acid
        439037, -- Disembowel
        439419, -- Stalker Netting
        434778, -- Brutal Lashings
        435136, -- Venomous Lash
        438012, -- Hungering Bellows
        -- The Bloodbound Horror
        442604, -- Goresplatter
        445570, -- Unseeming Blight
        443612, -- Baneful Shift
        443042, -- Grasp From Beyond
        -- Sikran
        435410, -- Phase Lunge
        458277, -- Shattering Sweep
        438845, -- Expose
        433517, -- Phase Blades 1
        434860, -- Phase Blades 2
        459785, -- Cosmic Residue
        459273, -- Cosmic Shards
        -- Rasha'nan
        439785, -- Corrosion
        439786, -- Rolling Acid 1
        439790, -- Rolling Acid 2
        439787, -- Acidic Stupor
        458067, -- Savage Wound
        456170, -- Spinneret's Strands 1
        439783, -- Spinneret's Strands 2
        439780, -- Sticky Webs
        439776, -- Acid Pool
        455287, -- Infested Bite
        -- Eggtender Ovi'nax
        442257, -- Infest
        442799, -- Sanguine Overflow
        441362, -- Volatile Concotion
        442660, -- Rupture
        440421, -- Experimental Dosage
        442250, -- Fixate
        442437, -- Violent Discharge
        443274, -- Reverberation
        -- Nexus-Princess Ky'veza
        440377, -- Void Shredders
        436870, -- Assassination
        440576, -- Chasmal Gash
        437343, -- Queensbane
        436664, -- Regicide 1
        436666, -- Regicide 2
        436671, -- Regicide 3
        435535, -- Regicide 4
        436665, -- Regicide 5
        436663, -- Regicide 6
        -- The Silken Court
        450129, -- Entropic Desolation
        449857, -- Impaled
        438749, -- Scarab Fixation
        438708, -- Stinging Swarm
        438218, -- Piercing Strike
        454311, -- Barbed Webs
        438773, -- Shattered Shell
        438355, -- Cataclysmic Entropy
        438656, -- Venomous Rain
        441772, -- Void Bolt
        441788, -- Web Vortex
        440001, -- Binding Webs
    }
}

local function isBlacklist(spellId)
    for i, v in ipairs(L.filters.blacklistBuffs) do
        if v == spellId then
            return true
        end
    end
    return false
end

local function isWhitelist(spellId)
    for i, v in ipairs(L.filters.whitelistBuffs) do
        if v == spellId then
            return true
        end
    end
    return false
end

local function isCooldown(spellId)
    for i, v in ipairs(L.filters.cooldownBuffs) do
        if v == spellId then
            return true
        end
    end
    return false
end

local function isTurtle(spellId)
    for i, v in ipairs(L.filters.turtleBuffs) do
        if v == spellId then
            return true
        end
    end
    return false
end

local function isCC(spellId)
    for i, v in ipairs(L.filters.ccDebuffs) do
        if v == spellId then
            return true
        end
    end
    return false
end

local function isDungeonDebuff(spellId)
    for i, v in ipairs(L.filters.dungeonDebuffs) do
        if v == spellId then
            return true
        end
    end
    return false
end

local function dispellableBuffs(self, unit, data)
    if data.isStealable then return true end
    return false
end
L.filters.dispellableBuffs = dispellableBuffs

local function defensiveBuffs(self, unit, data)
    if isTurtle(data.spellId) then return true end
    return false
end
L.filters.defensiveBuffs = defensiveBuffs

local function turtleCooldownDispellableBuffs(self, unit, data)
    if isTurtle(spellId) then return true end
    if isCooldown(spellId) then return true end
    if data.isStealable then return true end
    return false
end
L.filters.bossDebuffs = bossDebuffs

local function blacklistOnly(self, unit, data)
    if isBlacklist(data.spellId) then return false end
    return true
end
L.filters.blacklistOnly = blacklistOnly

local function ccBossPlayerDebuffs(self, unit, data)
    if isCC(data.spellId) then return true end
    if data.isBossDebuff then return true end
    if isBlacklist(data.spellId) then return false end
    if data.isPlayerAura then return true end
    return false
end
L.filters.ccBossPlayerDebuffs = ccBossPlayerDebuffs

local function ccBossDebuffs(self, unit, data)
    if isCC(data.spellId) then return true end
    if isDungeonDebuff(data.spellId) then return true end
    if data.isBossDebuff then return true end
    return false
end
L.filters.ccBossDebuffs = ccBossDebuffs

local function bossDebuffs(self, unit, data)
    if data.isBossDebuff then return true end
    return false
end
L.filters.bossDebuffs = bossDebuffs
