extends Node

func register(codex):
	
	codex.moveset["YAuricDash"].desc = "Costs 1 charge. Free when Tyrant's Might is active"
	codex.moveset["YShoot"].desc = "Costs 1 charge. Fires a persistent, slow moving orb of lightning. only two orbs can be out at a time. allows Yharim to cancel his state on second hit, can only be blocked 8 times before exploding"
	codex.moveset["YShootInstall"].desc = "Costs 1 charge. Requires Tyrant's Might to be active. Fires a stronger orb of lightning. only two orbs can be out at a time. allows Yharim to cancel his state on third hit, can only be blocked 10 times before exploding"
	codex.moveset["YShootAir"].desc = "Costs 1 charge. Fires a persistent, slow moving orb of lightning at a downwards angle. only two orbs can be out at a time. allows Yharim to cancel his state on second hit"
	codex.moveset["YShootAirInstall"].desc = "Costs 1 charge. Requires Tyrant's Might to be active. Fires a stronger orb of lightning at a downwards angle. only two orbs can be out at a time. allows Yharim to cancel his state on third hit"
	codex.moveset["YAuricGutPunch"].desc = "Costs 1 charge and 1 bar. Extreme hitstun. Has an alternative uppercut variant."
	codex.moveset["YAuricPiston"].desc = "Costs 1 charge and 1 bar. Extreme hitstun. An alternative variant of Haymaker with more vertical reach."
	codex.moveset["YAuricGrab"].desc = "Costs 1 charge and 2 bars. This move is a hit grab. If it connects, it refunds 1 charge. No refund occurs if it is blocked."
	codex.moveset["YAirGrab"].desc = "Costs 1 charge and no super meter. This move is a hit grab. If it connects or is blocked, it refunds 1 charge."
	codex.moveset["YInstall"].desc = "Requires 3 charges and 4 bars. Activates the Tyrant's Might install permanently. Gives 1 charge on use."
	codex.moveset["YOverCharge"].desc = "Costs 5 charges. Temporarily enhances special moves with red lightning on hit for 300 ticks. You only get one opportunity to use this move at 5 charges. If you use an Auric Charge at 5 charges, you cannot Overcharge for the rest of the match."
	codex.moveset["YGodSlayingPunch"].desc = "requires 1 or more red charges, costs 2 charges and 2 bar. Requires Tyrant's Might to be active. Becomes much stronger when Overcharge is active."
	codex.moveset["YAirSpin"].desc = "Costs 1 charge and 2 bars. Drags the opponent slightly with the attack."
	codex.moveset["YRoll"].desc = "A roll with a distance slider. Has an alternative variant with a hitbox on frame 14 and no frame 1 projectile immunity."
	codex.moveset["YCharge"].desc = "Trades 1 bar for 1 charge. Can only be used once in neutral. You must start and finish a combo to use this move again."
	codex.moveset["YSnap"].desc = "Places a delayed lightning strike which hits in 48 frames. Can spend 1 charge to make it strike sooner. If you hit yourself, you gain 1 charge. Fizzles when Yharim is hit and has a 120 tick cooldown after use"
	codex.moveset["YBeam"].desc = "Costs 5 charges and 6 bars. Requires Tyrant's Might to be active. Cinematic finisher."
	codex.moveset["YAirKnee"].desc = "an air knee with a sweetspot on the foot that spikes and hits low"
	codex.moveset["YAirFSlsh"].desc = "A forward air chop with his sword with a sweetspot on the tip of the slice that knocks down"
	codex.moveset["YAurAirKnee"].desc = "Costs 1 charge and 1 bar. Has a precise sweetspot with extreme hitstun that wears off with continuously. Mobility is increased during Tyrant's Might."
	codex.moveset["YPalmMid"].desc = "If this move strikes an enemy projectile, it deletes that projectile and you become actionable."
	codex.moveset["YPalmUp"].desc = "If this move strikes an enemy projectile, it deletes that projectile and you become actionable."
	codex.moveset["YImpaleTry"].desc = "Throws the opponent behind you. The alternative variant sends the opponent high up and does hard knockdown."
	codex.moveset["YAirFall"].desc = "Yharim spins and falls straight down until he hits the ground. He is not interruptible until he lands or gets hit. Has a landing hitbox. Landing an Auric Orb during this move allows it to be Burst Canceled."
	codex.moveset["Taunt"].desc = "Such majestic creatures..."
	codex.moveset["YDshSlash"].desc = "Lure has frame 3 movement in neutral and during combo has f2 movement"
	codex.moveset["YAirSlash"].desc = "Yharim throws himself in the air slashing twice, uses an air option if in air before use"
	codex.moveset["YUAirKick"].visible = false
	codex.moveset["YAirSlash2"].visible = false
	codex.set_summary("""Yharim, the Godseeker, also known as Tyrant King Yharim, from the Terraria Calamity Mod.

Yharim is a high speed, limited mobility, brutal rushdown character. He amplifies his savage blows with both his fists and his menacing blade using Auric lightning to overwhelm opponents with offensive pressure and excessive damage.

In addition to the standard super meter, Yharim has a unique resource: Auric Charges.
- Hitting combo count thresholds (4, 7, 9, 11, 13, 15, 17) gives Auric Charge.
- Striking opponents who are blocking gives Auric Charge.
- Landing guard breaks against opponents who are blocking gives Auric Charge.
- Yharim can convert super meter into Auric Charge using Empower.
- Yharim can normally store up to 3 Auric Charges. When Tyrant's Might is active, he can store up to 5.

Yharim can consume Auric Charges either for mobility or to enable supercharged attacks with staggering lethality.

Yharim has two installs which overlap and can be used simultaneously:

- Tyrant's Might: Requires 3 Auric Charges and 4 bars of super meter. Permanently buffs Yharim, making Auric Dash free, empowers all normals, enabling his strongest moves, and empowering several other moves.
- Overcharge: Requires 5 Auric Charges and Tyrant's Might active. Temporarily enhances all attacks to deliver aftershocks of red lightning on hit. Makes God Slaying Punch even more powerful.

Yharim's weaknesses come from having few defensive tricks, almost no ranged options, and having limited continuous pressure without having Tyrant's Might active.

His opponents can beat him by applying their own zoning and pressure, baiting out his riskier moves, and exploiting his limited movement options. Yharim struggles against foes that can present threats from multiple angles. When he is out of Auric Charge, he is very vulnerable.""")

	codex.add_custom_scene_tab("Info & Etc", load("res://Yharim/Characters/Yharim/UI/Codex/YharimInfo.tscn"))
	
func setup_achievements(list):
	list.default_locked_icon = "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments14.png"

	list.set_title("taunt", "Such majestic creatures")
	list.set_desc("taunt", "Admire a majestic creature.")
	list.set_icon("taunt", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments1.png")

	list.set_title("OC", "A Dreadful Forecast")
	list.set_desc("OC", """Activate "Overcharge" once in a match.""")
	list.set_icon("OC", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments4.png")

	list.set_title("intimidation", "Tyrannical Intimidation")
	list.set_desc("intimidation", "Get a round 1 perfect parry as Yharim.")
	list.set_icon("intimidation", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments3.png")

	list.set_title("Install", "The might to crush a God")
	list.set_desc("Install", """Activate "Tyrant's Might" once in a match.""")
	list.set_icon("Install", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments8.png")
	list.define("Install", { "highlight_color": Color("#ffea77") })

	list.set_title("Auric", "Ground and Pound")
	list.set_desc("Auric", "Win a match without using any Auric Charge.")
	list.set_icon("Auric", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments19.png")
	list.define("Auric", { "highlight_color": Color("#ffea77") })

	list.set_title("Beam", "Purified")
	list.set_desc("Beam", "Slay an opponent using the God Slaying Beam.")
	list.set_icon("Beam", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments6.png")
	list.define("Beam", { "highlight_color": Color("#ffea77") })

	list.set_title("Devourer", "Essence Devourer")
	list.set_desc("Devourer", "Slay an opponent using the God Slaying Punch.")
	list.set_icon("Devourer", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments18.png")
	list.define("Devourer", { "highlight_color": Color("#ffea77") })

	list.set_title("combo10", "The air is getting warmer")
	list.set_desc("combo10", "Reach a combo count of 10 using Yharim.")
	list.set_icon("combo10", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments23.png")

	list.set_title("combo15", "Dragon's Rage")
	list.set_desc("combo15", "Reach a combo count of 15 using Yharim.")
	list.set_icon("combo15", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments2.png")
	list.define("combo15", { "highlight_color": Color("#ffea77") })

	list.set_title("Combo25", "Unspeakable Brutality")
	list.set_desc("Combo25", "Reach a combo count of 20 using Yharim.")
	list.set_icon("Combo25", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments9.png")
	list.define("Combo25", { "highlight_color": Color("#36f6ff") })

	list.set_title("Win10", "Meek, Ingratiated Swine")
	list.set_desc("Win10", "Win ten multiplayer matches as Yharim.")
	list.set_icon("Win10", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments5.png")
	list.assign_counter("Win10", "Win", 10)

	list.set_title("Win20", "A Grand Crusade")
	list.set_desc("Win20", "Win twenty multiplayer matches as Yharim.")
	list.set_icon("Win20", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments12.png")
	list.define("Win20", { "highlight_color": Color("#ffea77") })
	list.assign_counter("Win20", "Win", 20)

	list.set_title("Win50", "Their Gore Glistens...")
	list.set_desc("Win50", "Win thirty multiplayer matches as Yharim.")
	list.set_icon("Win50", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments22.png")
	list.define("Win50", { "highlight_color": Color("#36f6ff") })
	list.assign_counter("Win50", "Win", 30)

	list.set_title("Win502", "Destiny is for the Weak")
	list.set_desc("Win502", "Win fifty multiplayer matches as Yharim.")
	list.set_icon("Win502", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments13.png")
	list.define("Win502", { "highlight_color": Color("#ff0000") })
	list.assign_counter("Win502", "Win", 50)
	list.mark_secret("Win502")

	list.set_title("Catbox", "The one who dared to seek me out")
	list.set_desc("Catbox", "Using Yharim, play a multiplayer match against either Catbox or Ozzatron.")
	list.set_icon("Catbox", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments10.png")
	list.define("Catbox", { "highlight_color": Color("#ffea77") })
	list.mark_secret("Catbox")

	list.set_title("LORDE?", "Como toda la sangre se derrite en la lluvia")
	list.set_desc("LORDE?", "Use the LORDE skin.")
	list.set_icon("LORDE?", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments11.png")
	list.define("LORDE?", { "highlight_color": Color("#ffea77") })
	list.mark_secret("LORDE?")

	list.set_title("Dreadon", "Draedon...")
	list.set_desc("Dreadon", """Fight one of your clones.
	(Yharim or Syrim)""")
	list.set_icon("Dreadon", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments7.png")
	list.define("Dreadon", { "highlight_color": Color("#ffea77") })
	list.mark_secret("Dreadon")

	list.set_title("All", "A Worthy Cause")
	list.set_desc("All", "Unlock all non secret achievements.")
	list.set_icon("All", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments20.png")
	list.define("All", { "highlight_color": Color("#ff0000") })

	list.set_title("AllX", "Cynosure")
	list.set_desc("AllX", "Unlock all achievements, including secret ones.")
	list.set_icon("AllX", "res://Yharim/Characters/Yharim/Icons/Achievement Icons/YharimAchivments21.png")
	list.define("AllX", { "highlight_color": Color("#ff0000") })
	list.mark_secret("AllX")

func modify_style_data(style, params):
	var codex_lib = params.codex_library
	var char_path = params.char_path
	var achievements = codex_lib.get_achievement_list(char_path)
	var totals = achievements.get_totals()
	var options_data = codex_lib.load_all_char_options(char_path)

	style.AchSkin = options_data.get("AchSkin")
	style.AltMusic = options_data.get("AltMusic")
	style.AchNumbNorm = totals.unlocked_visible
	style.AchNumbSp = totals.unlocked_secret

func setup_options(options, params):
	options.add_label("When you unlock all non secret achievements, you can use Yharim's aura.")
	var codex_lib = params.codex_library
	var char_path = params.char_path
	var achievements = codex_lib.get_achievement_list(char_path)
	var totals = achievements.get_totals()
	
	if totals.unlocked_visible >= 13:
		options.add_toggle("AchSkin", "Use Achievement Aura")
		options.add_label("Toggle to use Yharim's aura. Will cancel if other auras are used.")
	options.add_seperator()
	options.add_label("When you unlock 5 achievements, you can use Yharim's alternate music.")
	if totals.unlocked_visible >= 5:
		options.add_toggle("AltMusic", "Use Alternate Install Music")
		options.add_label("Replaces Yharim's install music with with his interlude theme.")


