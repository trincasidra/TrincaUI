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
  },
  turtleBuffs = {
    -- Death Knight
  		48707, -- Anti-Magic Shell
  		81256, -- Dancing Rune Weapon
  		55233, -- Vampiric Blood
  		193320, -- Umbilicus Eternus
  		219809, -- Tombstone
  		48792, -- Icebound Fortitude
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
  		61336, -- Survival Instincts
  		210655, -- Protection of Ashamane
  		22812, -- Barkskin
  		200851, -- Rage of the Sleeper
  		234081, -- Celestial Guardian
  		202043, -- Protector of the Pack (its this one or the other)
  		201940, -- Protector of the Pack
  		201939, -- Protector of the Pack (Allies)
  		192081, -- Ironfur
  		50334, -- Berserk (Guardian)
  	-- Hunter
  		186265, -- Aspect of the Turtle
  		53480, -- Roar of Sacrifice
  		202748, -- Survival Tactics
  	-- Mage
  		45438, -- Ice Block
  		113862, -- Greater Invisibility
  		198111, -- Temporal Shield
  		198065, -- Prismatic Cloak
  		11426, -- Ice Barrier
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
  		642, -- Divine Shield
  		498, -- Divine Protection
  		205191, -- Eye for an Eye
  		184662, -- Shield of Vengeance
  		1022, -- Blessing of Protection
  		6940, -- Blessing of Sacrifice
  		204018, -- Blessing of Spellwarding
  		199507, -- Spreading The Word: Protection
  		216857, -- Guarded by the Light
  		228049, -- Guardian of the Forgotten Queen
  		31850, -- Ardent Defender
  		86659, -- Guardian of Ancien Kings
  		212641, -- Guardian of Ancien Kings (Glyph of the Queen)
  		209388, -- Bulwark of Order
  		152262, -- Seraphim
  		132403, -- Shield of the Righteous
  	-- Priest
  		81782, -- Power Word: Barrier
  		47585, -- Dispersion
  		19236, -- Desperate Prayer
  		213602, -- Greater Fade
  		27827, -- Spirit of Redemption
  		197268, -- Ray of Hope
  		47788, -- Guardian Spirit
  		33206, -- Pain Suppression
  	-- Rogue
  		5277, -- Evasion
  		31224, -- Cloak of Shadows
  		1966, -- Feint
  		199754, -- Riposte
  		45182, -- Cheating Death
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
  		97463, -- Commanding Shout
  		213915, -- Mass Spell Reflection
  		199038, -- Leave No Man Behind
  		223658, -- Safeguard
  		147833, -- Intervene
  		198760, -- Intercept
  		12975, -- Last Stand
  		871, -- Shield Wall
  		23920, -- Spell Reflection
  		227744, -- Ravager
  		203524, -- Neltharions Fury
  		190456, -- Ignore Pain
  		132404, -- Shield Block
	-- Evoker
		363916, -- Obsidian Scales
		374348, -- Renewing Blaze
  	-- Racial
  		65116, -- Stoneform
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
  		65116, -- Stoneform
  		59547, -- Gift of the Naaru
  		20572, -- Blood Fury
  		26297, -- Berserking
  		68992, -- Darkflight
  		58984, -- Shadowmeld
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
  		5246,  -- Intimidating Shout
  		132169, -- Storm Bolt
  		132168, -- Shockwave
  		199085, -- Warpath
  		105771, -- Charge
  		199042, -- Thunderstruck
  		236077, -- Disarm
	-- Evoker
		360806,  -- Wing Buffet
		372245,  -- Terror of the Skies
		372048,  -- Oppressing Roar
  	-- Racial
  		20549,  -- War Stomp
  		107079, -- Quaking Palm
  },
  dungeonDebuffs = {
	-- M+
	209858, -- Necrotic
	226512, -- Sanguine
	240559, -- Grievous
	240443, -- Bursting
	373364, -- Vampiric Claws
	373429, -- Carrion Swarm
	373370, -- Nightmare Cloud
	373391, -- Nightmare
	373570, -- Hypnosis
	373607, -- Shadowy Barrier (Hypnosis)
	373509, -- Shadow Claws (Stacking)
	-- Tazavesh, the Veiled Market
	350804, -- Collapsing Energy
	350885, -- Hyperlight Jolt
	351101, -- Energy Fragmentation
	346828, -- Sanitizing Field
	355641, -- Scintillate
	355451, -- Undertow
	355581, -- Crackle
	349999, -- Anima Detonation
	346961, -- Purging Field
	351956, -- High-Value Target
	346297, -- Unstable Explosion
	347728, -- Flock!
	356408, -- Ground Stomp
	347744, -- Quickblade
	347481, -- Shuri
	355915, -- Glyph of Restraint
	350134, -- Infinite Breath
	350013, -- Gluttonous Feast
	355465, -- Boulder Throw
	346116, -- Shearing Swings
	356011, -- Beam Splicer
	-- Halls of Atonement
	335338, -- Ritual of Woe
	326891, -- Anguish
	329321, -- Jagged Swipe 1
	344993, -- Jagged Swipe 2
	319603, -- Curse of Stone
	319611, -- Turned to Stone
	325876, -- Curse of Obliteration
	326632, -- Stony Veins
	323650, -- Haunting Fixation
	326874, -- Ankle Bites
	340446, -- Mark of Envy
	-- Mists of Tirna Scithe
	325027, -- Bramble Burst
	323043, -- Bloodletting
	322557, -- Soul Split
	331172, -- Mind Link
	322563, -- Marked Prey
	322487, -- Overgrowth 1
	322486, -- Overgrowth 2
	328756, -- Repulsive Visage
	325021, -- Mistveil Tear
	321891, -- Freeze Tag Fixation
	325224, -- Anima Injection
	326092, -- Debilitating Poison
	325418, -- Volatile Acid
	-- Plaguefall
	336258, -- Solitary Prey
	331818, -- Shadow Ambush
	329110, -- Slime Injection
	325552, -- Cytotoxic Slash
	336301, -- Web Wrap
	322358, -- Burning Strain
	322410, -- Withering Filth
	328180, -- Gripping Infection
	320542, -- Wasting Blight
	340355, -- Rapid Infection
	328395, -- Venompiercer
	320512, -- Corroded Claws
	333406, -- Assassinate
	332397, -- Shroudweb
	330069, -- Concentrated Plague
	-- The Necrotic Wake
	321821, -- Disgusting Guts
	323365, -- Clinging Darkness
	338353, -- Goresplatter
	333485, -- Disease Cloud
	338357, -- Tenderize
	328181, -- Frigid Cold
	320170, -- Necrotic Bolt
	323464, -- Dark Ichor
	323198, -- Dark Exile
	343504, -- Dark Grasp
	343556, -- Morbid Fixation 1
	338606, -- Morbid Fixation 2
	324381, -- Chill Scythe
	320573, -- Shadow Well
	333492, -- Necrotic Ichor
	334748, -- Drain Fluids
	333489, -- Necrotic Breath
	320717, -- Blood Hunger
	-- Theater of Pain
	333299, -- Curse of Desolation 1
	333301, -- Curse of Desolation 2
	319539, -- Soulless
	326892, -- Fixate
	321768, -- On the Hook
	323825, -- Grasping Rift
	342675, -- Bone Spear
	323831, -- Death Grasp
	330608, -- Vile Eruption
	330868, -- Necrotic Bolt Volley
	323750, -- Vile Gas
	323406, -- Jagged Gash
	330700, -- Decaying Blight
	319626, -- Phantasmal Parasite
	324449, -- Manifest Death
	341949, -- Withering Blight
	-- Sanguine Depths
	326827, -- Dread Bindings
	326836, -- Curse of Suppression
	322554, -- Castigate
	321038, -- Burden Soul
	328593, -- Agonize
	325254, -- Iron Spikes
	335306, -- Barbed Shackles
	322429, -- Severing Slice
	334653, -- Engorge
	-- Spires of Ascension
	338729, -- Charged Stomp
	323195, -- Purifying Blast
	327481, -- Dark Lance
	322818, -- Lost Confidence
	322817, -- Lingering Doubt
	324205, -- Blinding Flash
	331251, -- Deep Connection
	328331, -- Forced Confession
	341215, -- Volatile Anima
	323792, -- Anima Field
	317661, -- Insidious Venom
	330683, -- Raw Anima
	328434, -- Intimidated
	-- De Other Side
	320786, -- Power Overwhelming
	334913, -- Master of Death
	325725, -- Cosmic Artifice
	328987, -- Zealous
	334496, -- Soporific Shimmerdust
	339978, -- Pacifying Mists
	323692, -- Arcane Vulnerability
	333250, -- Reaver
	330434, -- Buzz-Saw 1
	320144, -- Buzz-Saw 2
	331847, -- W-00F
	327649, -- Crushed Soul
	331379, -- Lubricate
	332678, -- Gushing Wound
	322746, -- Corrupted Blood
	323687, -- Arcane Lightning
	323877, -- Echo Finger Laser X-treme
	334535, -- Beak Slice
	-- Shriekwing
	328897, -- Exsanguinated
	330713, -- Reverberating Pain
	329370, -- Deadly Descent
	336494, -- Echo Screech
	346301, -- Bloodlight
	342077, -- Echolocation
	-- Huntsman Altimor
	335304, -- Sinseeker
	334971, -- Jagged Claws
	335111, -- Huntsman's Mark 3
	335112, -- Huntsman's Mark 2
	335113, -- Huntsman's Mark 1
	334945, -- Vicious Lunge
	334852, -- Petrifying Howl
	334695, -- Destabilize
	-- Hungering Destroyer
	334228, -- Volatile Ejection
	329298, -- Gluttonous Miasma
	-- Lady Inerva Darkvein
	325936, -- Shared Cognition
	335396, -- Hidden Desire
	324983, -- Shared Suffering
	324982, -- Shared Suffering (Partner)
	332664, -- Concentrate Anima
	325382, -- Warped Desires
	-- Sun King's Salvation
	333002, -- Vulgar Brand
	326078, -- Infuser's Boon
	325251, -- Sin of Pride
	341475, -- Crimson Flurry
	341473, -- Crimson Flurry Teleport
	328479, -- Eyes on Target
	328889, -- Greater Castigation
	-- Artificer Xy'mox
	327902, -- Fixate
	326302, -- Stasis Trap
	325236, -- Glyph of Destruction
	327414, -- Possession
	328468, -- Dimensional Tear 1
	328448, -- Dimensional Tear 2
	340860, -- Withering Touch
	-- The Council of Blood
	327052, -- Drain Essence 1
	327773, -- Drain Essence 2
	346651, -- Drain Essence Mythic
	328334, -- Tactical Advance
	330848, -- Wrong Moves
	331706, -- Scarlet Letter
	331636, -- Dark Recital 1
	331637, -- Dark Recital 2
	-- Sludgefist
	335470, -- Chain Slam
	339181, -- Chain Slam (Root)
	331209, -- Hateful Gaze
	335293, -- Chain Link
	335270, -- Chain This One!
	342419, -- Chain Them! 1
	342420, -- Chain Them! 2
	335295, -- Shattering Chain
	332572, -- Falling Rubble
	-- Stone Legion Generals
	334498, -- Seismic Upheaval
	337643, -- Unstable Footing
	334765, -- Heart Rend
	334771, -- Heart Hemorrhage
	333377, -- Wicked Mark
	334616, -- Petrified
	334541, -- Curse of Petrification
	339690, -- Crystalize
	342655, -- Volatile Anima Infusion
	342698, -- Volatile Anima Infection
	343881, -- Serrated Tear
	-- Sire Denathrius
	326851, -- Blood Price
	327796, -- Night Hunter
	327992, -- Desolation
	328276, -- March of the Penitent
	326699, -- Burden of Sin
	329181, -- Wracking Pain
	335873, -- Rancor
	329951, -- Impale
	327039, -- Feeding Time
	332794, -- Fatal Finesse
	334016, -- Unworthy
	-- The Tarragrue
	347283, -- Predator's Howl
	347286, -- Unshakeable Dread
	346986, -- Crushed Armor
	347269, -- Chains of Eternity
	346985, -- Overpower
	-- Eye of the Jailer
	350606, -- Hopeless Lethargy
	355240, -- Scorn
	355245, -- Ire
	349979, -- Dragging Chains
	348074, -- Assailing Lance
	351827, -- Spreading Misery
	355143, -- Deathlink
	350763, -- Annihilating Glare
	-- The Nine
	350287, -- Song of Dissolution
	350542, -- Fragments of Destiny
	350202, -- Unending Strike
	350475, -- Pierce Soul
	350555, -- Shard of Destiny
	350109, -- Brynja's Mournful Dirge
	350483, -- Link Essence
	350039, -- Arthura's Crushing Gaze
	350184, -- Daschla's Mighty Impact
	350374, -- Wings of Rage
	-- Remnant of Ner'zhul
	350073, -- Torment
	349890, -- Suffering
	350469, -- Malevolence
	354634, -- Spite 1
	354479, -- Spite 2
	354534, -- Spite 3
	-- Soulrender Dormazain
	353429, -- Tormented
	353023, -- Torment
	351787, -- Agonizing Spike
	350647, -- Brand of Torment
	350422, -- Ruinblade
	350851, -- Vessel of Torment
	354231, -- Soul Manacles
	348987, -- Warmonger Shackle 1
	350927, -- Warmonger Shackle 2
	-- Painsmith Raznal
	356472, -- Lingering Flames
	355505, -- Shadowsteel Chains 1
	355506, -- Shadowsteel Chains 2
	348456, -- Flameclasp Trap
	356870, -- Flameclasp Eruption
	355568, -- Cruciform Axe
	355786, -- Blackened Armor
	355526, -- Spiked
	-- Guardian of the First Ones
	352394, -- Radiant Energy
	350496, -- Threat Neutralization
	347359, -- Suppression Field
	355357, -- Obliterate
	350732, -- Sunder
	352833, -- Disintegration
	-- Fatescribe Roh-Kalo
	354365, -- Grim Portent
	350568, -- Call of Eternity
	353435, -- Overwhelming Burden
	351680, -- Invoke Destiny
	353432, -- Burden of Destiny
	353693, -- Unstable Accretion
	350355, -- Fated Conjunction
	353931, -- Twist Fate
	-- Kel'Thuzad
	346530, -- Frozen Destruction
	354289, -- Sinister Miasma
	347454, -- Oblivion's Echo 1
	347518, -- Oblivion's Echo 2
	347292, -- Oblivion's Echo 3
	348978, -- Soul Exhaustion
	355389, -- Relentless Haunt (Fixate)
	357298, -- Frozen Binds
	355137, -- Shadow Pool
	348638, -- Return of the Damned
	348760, -- Frost Blast
	-- Sylvanas Windrunner
	349458, -- Domination Chains
	347704, -- Veil of Darkness
	347607, -- Banshee's Mark
	347670, -- Shadow Dagger
	351117, -- Crushing Dread
	351870, -- Haunting Wave
	351253, -- Banshee Wail
	351451, -- Curse of Lethargy
	351092, -- Destabilize 1
	351091, -- Destabilize 2
	348064, -- Wailing Arrow
	-- Vigilant Guardian
	364447, -- Dissonance
	364904, -- Anti-Matter
	364881, -- Matter Disolution
	360415, -- Defenseless
	360412, -- Exposed Core
	366393, -- Searing Ablation
	-- Skolex, the Insatiable Ravener
	364522, -- Devouring Blood
	359976, -- Riftmaw
	359981, -- Rend
	360098, -- Warp Sickness
	366070, -- Volatile Residue
	-- Artificer Xy'mox
	364030, -- Debilitating Ray
	365681, -- System Shock
	363413, -- Forerunner Rings A
	364604, -- Forerunner Rings B
	362615, -- Interdimensional Wormhole Player 1
	362614, -- Interdimensional Wormhole Player 2
	362803, -- Glyph of Relocation
	-- Dausegne, The Fallen Oracle
	361751, -- Disintegration Halo
	364289, -- Staggering Barrage
	361018, -- Staggering Barrage Mythic 1
	360960, -- Staggering Barrage Mythic 2
	361225, -- Encroaching Dominion
	361966, -- Infused Strikes
	-- Prototype Pantheon
	365306, -- Invigorating Bloom
	361689, -- Wracking Pain
	366232, -- Animastorm
	364839, -- Sinful Projection
	360259, -- Gloom Bolt
	362383, -- Anima Bolt
	362352, -- Pinned
	-- Lihuvim, Principle Architect
	360159, -- Unstable Protoform Energy
	363681, -- Deconstructing Blast
	363676, -- Deconstructing Energy Player 1
	363795, -- Deconstructing Energy Player 2
	464312, -- Ephemeral Barrier
	-- Halondrus the Reclaimer
	361309, -- Lightshatter Beam
	361002, -- Ephemeral Fissure
	360114, -- Ephemeral Fissure II
	-- Anduin Wrynn
	365293, -- Befouled Barrier
	363020, -- Necrotic Claws
	365021, -- Wicked Star (marked)
	365024, -- Wicked Star (hit)
	365445, -- Scarred Soul
	365008, -- Psychic Terror
	366849, -- Domination Word: Pain
	-- Lords of Dread
	360148, -- Bursting Dread
	360012, -- Cloud of Carrion
	360146, -- Fearful Trepidation
	360241, -- Unsettling Dreams
	-- Rygelon
	362206, -- Event Horizon
	362137, -- Corrupted Wound
	362172, -- Corrupted Wound
	361548, -- Dark Eclipse
	-- The Jailer
	362075, -- Domination
	365150, -- Rune of Domination
	363893, -- Martyrdom
	363886, -- Imprisonment
	365219, -- Chains of Anguish
	366285, -- Rune of Compulsion
	363332, -- Unbreaking Grasp
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

local function dispellableBuffs(element, unit, button, name, texture, count, debuffType, duration, expiration, caster, isStealable, nameplateShowSelf, spellId, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,timeMod, effect1, effect2, effect3)
  if isStealable then return true end
  return false
end
L.filters.dispellableBuffs = dispellableBuffs

local function defensiveBuffs(element, unit, button, name, texture, count, debuffType, duration, expiration, caster, isStealable, nameplateShowSelf, spellId, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,timeMod, effect1, effect2, effect3)
  if isTurtle(spellId) then return true end
  return false
end
L.filters.defensiveBuffs = defensiveBuffs

local function turtleCooldownDispellableBuffs(element, unit, button, name, texture, count, debuffType, duration, expiration, caster, isStealable, nameplateShowSelf, spellId, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,timeMod, effect1, effect2, effect3)
  if isTurtle(spellId) then return true end
  if isCooldown(spellId) then return true end
  if isStealable then return true end
  return false
end
L.filters.bossDebuffs = bossDebuffs

local function blacklistOnly(element, unit, button, name, texture, count, debuffType, duration, expiration, caster, isStealable, nameplateShowSelf, spellId, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,timeMod, effect1, effect2, effect3)
  if isBlacklist(spellId) then return false end
  return true
end
L.filters.blacklistOnly = blacklistOnly

local function ccBossPlayerDebuffs(element, unit, button, name, texture, count, debuffType, duration, expiration, caster, isStealable, nameplateShowSelf, spellId, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,timeMod, effect1, effect2, effect3)
  if isCC(spellId) then return true end
  if isBossDebuff then return true end
  if isBlacklist(spellId) then return false end
  if caster == player then return true end
  return false
end
L.filters.ccBossPlayerDebuffs = ccBossPlayerDebuffs

local function ccBossDebuffs(element, unit, button, name, texture, count, debuffType, duration, expiration, caster, isStealable, nameplateShowSelf, spellId, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,timeMod, effect1, effect2, effect3)
  if isCC(spellId) then return true end
  if isDungeonDebuff(spellId) then return true end
  if isBossDebuff then return true end
  return false
end
L.filters.ccBossDebuffs = ccBossDebuffs

local function bossDebuffs(element, unit, button, name, texture, count, debuffType, duration, expiration, caster, isStealable, nameplateShowSelf, spellId, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,timeMod, effect1, effect2, effect3)
  if isBossDebuff then return true end
  return false
end
L.filters.bossDebuffs = bossDebuffs
