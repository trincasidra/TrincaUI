local A, L = ...

L.filters = {
  whitelistBuffs = {
    -- Bloodlust effects
    2825, -- Bloodlust
    32182, -- Heroism
    80353, -- Time Warp
    90355, -- Ancient Hysteria
    -- Paladin
    31821, -- Aura Mastery
    1022, -- Blessing of Protection
    204018, -- Blessing of Spellwarding
    6940, -- Blessing of Sacrifice
    1044, -- Blessing of Freedom
    -- Priest
    47788, -- Guardian Spirit
    33206, -- Pain Suppression
    62618, -- Power Word: Barrier
    -- Monk
    116849, -- Life Cocoon
    -- Druid
    102342, -- Ironbark
    -- Shaman
    325174, -- Spirit Link
    20608, -- Reincarnation
    -- Other
    97462, -- Rallying Cry
    196718, -- Darkness
  },
  blacklistBuffs = {
    36900, -- Soul Split: Evil!
		36901, -- Soul Split: Good
		36893, -- Transporter Malfunction
		97821, -- Void-Touched
		36032, -- Arcane Charge
		8733, -- Blessing of Blackfathom
		25771, -- Forbearance (Pally: Divine Shield, Blessing of Protection, and Lay on Hands)
		57724, -- Sated (lust debuff)
		57723, -- Exhaustion (heroism debuff)
		80354, -- Temporal Displacement (timewarp debuff)
		95809, -- Insanity debuff (hunter pet heroism: ancient hysteria)
		58539, -- Watchers Corpse
		26013, -- Deserter
		71041, -- Dungeon Deserter
		41425, -- Hypothermia
		55711, -- Weakened Heart
		8326, -- Ghost
		23445, -- Evil Twin
		24755, -- Tricked or Treated
		96041, -- Stink Bombed
		25163, -- Oozelings Disgusting Aura
		124275, -- Stagger
		124274, -- Stagger
		124273, -- Stagger
		117870, -- Touch of The Titans
		123981, -- Perdition
		15007, -- Ress Sickness
		113942, -- Demonic: Gateway
		89140, -- Demonic Rebirth: Cooldown
		287825, -- Lethargy debuff (fight or flight)
		206662, -- Experience Eliminated (in range)
		306600, -- Experience Eliminated (oor - 5m)
		348443, -- Experience Eliminated
		206151, -- Challengers Burden
		313015, -- Recently Failed (mechagnome racial)
		195776, -- Moonfeather Fever
		322695, -- Drained
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
  	-- Racial
  		65116, -- Stoneform
  	-- Potion
  		251231, -- Steelskin Potion
  	-- Covenant
  		324867, -- Fleshcraft (Necrolord)
  },
  cooldownBuffs = {
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
  		51271, -- Pillar of Frost
  		207256, -- Obliteration
  		152279, -- Breath of Sindragosa
  		233411, -- Blood for Blood
  		212552, -- Wraith Walk
  		343294, -- Soul Reaper
  		194918, -- Blighted Rune Weapon
  		48265, -- Deaths Advance
  		49039, -- Lichborne
  		47568, -- Empower Rune Weapon
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
  		61336, -- Survival Instincts
  		210655, -- Protection of Ashamane
  		22812, -- Barkskin
  		200851, -- Rage of the Sleeper
  		234081, -- Celestial Guardian
  		202043, -- Protector of the Pack (its this one or the other)
  		201940, -- Protector of the Pack
  		201939, -- Protector of the Pack (Allies)
  		192081, -- Ironfur
  		29166, -- Innervate
  		208253, -- Essence of GHanir
  		194223, -- Celestial Alignment
  		102560, -- Incarnation: Chosen of Elune
  		102543, -- Incarnation: King of the Jungle
  		102558, -- Incarnation: Guardian of Ursoc
  		117679, -- Incarnation
  		106951, -- Berserk (Feral)
  		50334, -- Berserk (Guardian)
  		5217, -- Tigers Fury
  		1850, -- Dash
  		137452, -- Displacer Beast
  		102416, -- Wild Charge
  		77764, -- Stampeding Roar (Cat)
  		77761, -- Stampeding Roar (Bear)
  		305497, -- Thorns
  		233756, -- Moon and Stars (not used?)
  		234084, -- Moon and Stars (PvP)
  		22842, -- Frenzied Regeneration
  	-- Hunter
  		186265, -- Aspect of the Turtle
  		53480, -- Roar of Sacrifice
  		202748, -- Survival Tactics
  		62305, -- Masters Call (its this one or the other)
  		54216, -- Masters Call
  		288613, -- Trueshot
  		260402, -- Double Tap
  		193530, -- Aspect of the Wild
  		19574, -- Bestial Wrath
  		186289, -- Aspect of the Eagle
  		186257, -- Aspect of the Cheetah
  		118922, -- Posthaste
  		90355, -- Ancient Hysteria (Pet)
  		160452, -- Netherwinds (Pet)
  		266779, -- Coordinated Assault
  	-- Mage
  		45438, -- Ice Block
  		113862, -- Greater Invisibility
  		198111, -- Temporal Shield
  		198065, -- Prismatic Cloak
  		11426, -- Ice Barrier
  		235313, -- Blazing Barrier
  		235450, -- Prismatic Barrier
  		110909, -- Alter Time
  		190319, -- Combustion
  		80353, -- Time Warp
  		12472, -- Icy Veins
  		12042, -- Arcane Power
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
  		31884, -- Avenging Wrath
  		105809, -- Holy Avenger
  		231895, -- Crusade
  		200652, -- Tyrs Deliverance
  		216331, -- Avenging Crusader
  		1044, -- Blessing of Freedom
  		210256, -- Blessing of Sanctuary
  		199545, -- Steed of Glory
  		210294, -- Divine Favor
  		221886, -- Divine Steed
  		31821, -- Aura Mastery
  	-- Priest
  		81782, -- Power Word: Barrier
  		47585, -- Dispersion
  		19236, -- Desperate Prayer
  		213602, -- Greater Fade
  		27827, -- Spirit of Redemption
  		197268, -- Ray of Hope
  		47788, -- Guardian Spirit
  		33206, -- Pain Suppression
  		200183, -- Apotheosis
  		10060, -- Power Infusion
  		47536, -- Rapture
  		194249, -- Voidform
  		193223, -- Surrdender to Madness
  		197862, -- Archangel
  		197871, -- Dark Archangel
  		197874, -- Dark Archangel
  		215769, -- Spirit of Redemption
  		213610, -- Holy Ward
  		121557, -- Angelic Feather
  		214121, -- Body and Mind
  		65081, -- Body and Soul
  		197767, -- Speed of the Pious
  		210980, -- Focus in the Light
  		221660, -- Holy Concentration
  		15286, -- Vampiric Embrace
  	-- Rogue
  		5277, -- Evasion
  		31224, -- Cloak of Shadows
  		1966, -- Feint
  		199754, -- Riposte
  		45182, -- Cheating Death
  		199027, -- Veil of Midnight
  		121471, -- Shadow Blades
  		13750, -- Adrenaline Rush
  		51690, -- Killing Spree
  		185422, -- Shadow Dance
  		198368, -- Take Your Cut
  		198027, -- Turn the Tables
  		213985, -- Thiefs Bargain
  		197003, -- Maneuverability
  		212198, -- Crimson Vial
  		185311, -- Crimson Vial
  		209754, -- Boarding Party
  		36554, -- Shadowstep
  		2983, -- Sprint
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
  		2825, -- Bloodlust
  		16166, -- Elemental Mastery
  		167204, -- Feral Spirit
  		114050, -- Ascendance (Elem)
  		114051, -- Ascendance (Enh)
  		114052, -- Ascendance (Resto)
  		79206, -- Spiritwalkers Grace
  		58875, -- Spirit Walk
  		157384, -- Eye of the Storm
  		192082, -- Wind Rush
  		2645, -- Ghost Wolf
  		32182, -- Heroism
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
  		1719, -- Battle Cry
  		107574, -- Avatar
  		227847, -- Bladestorm (Arm)
  		46924, -- Bladestorm (Fury)
  		118000, -- Dragon Roar
  		199261, -- Death Wish
  		18499, -- Berserker Rage
  		202164, -- Bounding Stride
  		215572, -- Frothing Berserker
  		199203, -- Thirst for Battle
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
  		47476, -- Strangulate
  		108194, -- Asphyxiate UH
  		221562, -- Asphyxiate Blood
  		207171, -- Winter is Coming
  		206961, -- Tremble Before Me
  		207167, -- Blinding Sleet
  		212540, -- Flesh Hook (Pet)
  		91807, -- Shambling Rush (Pet)
  		204085, -- Deathchill
  		233395, -- Frozen Center
  		212332, -- Smash (Pet)
  		212337, -- Powerful Smash (Pet)
  		91800, -- Gnaw (Pet)
  		91797, -- Monstrous Blow (Pet)
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
  		81261, -- Solar Beam
  		5211, -- Mighty Bash
  		163505, -- Rake
  		203123, -- Maim
  		202244, -- Overrun
  		99, -- Incapacitating Roar
  		33786, -- Cyclone
  		45334, -- Immobilized
  		102359, -- Mass Entanglement
  		339, -- Entangling Roots
  		2637, -- Hibernate
  		102793, -- Ursols Vortex
  	-- Hunter
  		202933, -- Spider Sting (its this one or the other)
  		233022, -- Spider Sting
  		213691, -- Scatter Shot
  		19386, -- Wyvern Sting
  		3355, -- Freezing Trap
  		203337, -- Freezing Trap (Survival PvPT)
  		209790, -- Freezing Arrow
  		24394, -- Intimidation
  		117526, -- Binding Shot
  		190927, -- Harpoon
  		201158, -- Super Sticky Tar
  		162480, -- Steel Trap
  		212638, -- Trackers Net
  		200108, -- Rangers Net
  	-- Mage
  		61721, -- Rabbit (Poly)
  		61305, -- Black Cat (Poly)
  		28272, -- Pig (Poly)
  		28271, --  (Poly)
  		126819, -- Porcupine (Poly)
  		161354, -- Monkey (Poly)
  		161353, -- Polar bear (Poly)
  		61780, -- Turkey (Poly)
  		161355, -- Penguin (Poly)
  		161372, -- Peacock (Poly)
  		277787, -- Direhorn (Poly)
  		277792, -- Bumblebee (Poly)
  		118, -- Polymorph
  		82691, -- Ring of Frost
  		31661, -- Dragons Breath
  		122, -- Frost Nova
  		33395, -- Freeze
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
  		853, -- Hammer of Justice
  		20066, -- Repentance
  		105421, -- Blinding Light
  		31935, -- Avengers Shield
  		217824, -- Shield of Virtue
  		205290, -- Wake of Ashes
  	-- Priest
  		9484, -- Shackle Undead
  		200196, -- Holy Word: Chastise
  		200200, -- Holy Word: Chastise
  		226943, -- Mind Bomb
  		605, -- Mind Control
  		8122, -- Psychic Scream
  		15487, -- Silence
  		64044, -- Psychic Horror
  		453, -- Mind Soothe
  	-- Rogue
  		2094, -- Blind
  		6770, -- Sap
  		1776, -- Gouge
  		1330, -- Garrote - Silence
  		207777, -- Dismantle
  		199804, -- Between the Eyes
  		408, -- Kidney Shot
  		1833, -- Cheap Shot
  		207736, -- Shadowy Duel (Smoke effect)
  		212182, -- Smoke Bomb
  	-- Shaman
  		51514, -- Hex
  		211015, -- Hex (Cockroach)
  		211010, -- Hex (Snake)
  		211004, -- Hex (Spider)
  		210873, -- Hex (Compy)
  		196942, -- Hex (Voodoo Totem)
  		269352, -- Hex (Skeletal Hatchling)
  		277778, -- Hex (Zandalari Tendonripper)
  		277784, -- Hex (Wicker Mongrel)
  		118905, -- Static Charge
  		77505, -- Earthquake (Knocking down)
  		118345, -- Pulverize (Pet)
  		204399, -- Earthfury
  		204437, -- Lightning Lasso
  		157375, -- Gale Force
  		64695, -- Earthgrab
  	-- Warlock
  		710, -- Banish
  		6789, -- Mortal Coil
  		118699, -- Fear
  		6358, -- Seduction (Succub)
  		171017, -- Meteor Strike (Infernal)
  		22703, -- Infernal Awakening (Infernal CD)
  		30283, -- Shadowfury
  		89766, -- Axe Toss
  		233582, -- Entrenched in Flame
  	-- Warrior
  		5246, -- Intimidating Shout
  		132169, -- Storm Bolt
  		132168, -- Shockwave
  		199085, -- Warpath
  		105771, -- Charge
  		199042, -- Thunderstruck
  		236077, -- Disarm
  	-- Racial
  		20549, -- War Stomp
  		107079, -- Quaking Palm
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
  if isBossDebuff then return true end
  return false
end
L.filters.ccBossDebuffs = ccBossDebuffs

local function bossDebuffs(element, unit, button, name, texture, count, debuffType, duration, expiration, caster, isStealable, nameplateShowSelf, spellId, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,timeMod, effect1, effect2, effect3)
  if isBossDebuff then return true end
  return false
end
L.filters.bossDebuffs = bossDebuffs
