//THE SHIPWRECKER GANG
//"Scrap 'em."

//WHO ARE THEY:
//Scrapper - hybrid melee/ranged trooper
//Wrecker - slow & tanky melee trooper
//Officer - support ranged trooper who can summon random backup
//Shipbreaker -
//Commander -

//WHAT DO THEY DO
//

//VISUAL THEMES:
//Green, Black, Grey
//Short NPC names, indicating rank or specialty
//Round metal armour and weapons

//GAMEPLAY THEMES:
//These guys are designed to be more dangerous than regular space pirates, to have a unique gameplay pattern and to give interesting loot.
//Mix of melee and ranged capability, these guys work together and specialise to cover multiple bases.
//Skewed melee, but weak to melee. Resistant to projectiles.

//LOOT:
//Primarily variants on station gear
//A lot of junk, sorting through piles of garbage to find good items
//

//LORE:
//The Shipwrecker Gang hangs out on the "Scrapbreaker Prime", a heavily modified pirate frigate. They share this vessel with the secretive and eccentric Cult of the Singularity.
//Captain Carpheart is the leader of the Gang, and rules the ship with an iron fist. This Gang is highly militerised, disciplined and loyal.
//The Scrapbreaker is kept in a state of perpetual Warpjump by the Cult to prevent detection by corporate security forces.
//Shuttles using Warp Transit are often unprepared

/mob/living/basic/trooper/shipwrecker
	//Basic close-range troopers, with melee (brute) and ranged (burn) damage
	name = "Scrapper"
	icon_state = "wrecker"
	desc = "A low-ranking member of the Shipwrecker Gang, infamous for raiding shuttles mid-transit. This one is armed with a plasma cutter and a pickaxe."
	response_help_continuous = "pushes"
	response_help_simple = "push"
	faction = list(FACTION_PIRATE, FACTION_SHIPWRECKER)
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker
	r_hand = /obj/item/gun/energy/plasmacutter/pirate
	l_hand = /obj/item/pickaxe
	damage_coeff = list(BRUTE = 0.9, BURN = 0.6, TOX = 1, STAMINA = 0, OXY = 0)
	ai_controller = /datum/ai_controller/basic_controller/trooper/shipwrecker
	//chance we use an alternate weapon in left hand (percentage)
	var/alt_weapon_chance_left = 45
	//list of alt weapons for left hand
	var/list/alt_weapons_left = list(/obj/item/crowbar/hammer = 25,
		/obj/item/lead_pipe = 10,
		/obj/item/pickaxe/silver = 10,
		)
	//chance we use an alternate weapon in right hand (percentage)
	var/alt_weapon_chance_right = 0
	//list of alt weapons for right hand
	var/list/alt_weapons_right = list(/obj/item/gun/energy/plasmacutter/pirate = 100,)
	//chance we use an alternate loadout (percentage)
	var/alt_outfit_chance = 10

	var/list/alt_outfits = list(,)
	/// Type of bullet we use
	var/projectiletype = /obj/projectile/plasma/pirate
	/// Sound to play when firing weapon
	var/projectilesound = 'sound/items/weapons/plasma_cutter.ogg'
	/// Time between taking shots
	var/ranged_cooldown = 1.4 SECONDS

/mob/living/basic/trooper/shipwrecker/Initialize(mapload)
	if(prob(alt_weapon_chance_left))
		l_hand = pick_weight(alt_weapons_left)
	if(prob(alt_weapon_chance_right))
		r_hand = pick_weight(alt_weapons_right)
	loot = list(mob_spawner, r_hand, l_hand)
	. = ..()
	AddComponent(\
		/datum/component/ranged_attacks,\
		projectile_type = projectiletype,\
		projectile_sound = projectilesound,\
		cooldown_time = ranged_cooldown,\
	)

/datum/ai_controller/basic_controller/trooper/shipwrecker
	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk
	planning_subtrees = list(
		/datum/ai_planning_subtree/simple_find_target,
		/datum/ai_planning_subtree/attack_obstacle_in_path/trooper,
		/datum/ai_planning_subtree/basic_melee_attack_subtree/opportunistic/skirmish,
		/datum/ai_planning_subtree/basic_ranged_attack_subtree/trooper/shipwrecker,
		/datum/ai_planning_subtree/travel_to_point/and_clear_target/reinforce,
		/datum/ai_planning_subtree/random_speech/shipwrecker,
	)

/mob/living/basic/trooper/shipwrecker/heavy
	//slow melee troopers with a lot of hp, armour and damage
	name = "Wrecker"
	icon_state = "wrecker_heavy"
	desc = "A member of the infamous Shipwrecker Gang. This one is heavily armoured and brandishing a huge angle grinder."
	melee_damage_lower = 24
	melee_damage_upper = 26
	armour_penetration = 35
	attack_verb_continuous = "slashes"
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker/heavy
	r_hand = /obj/item/chainsaw/anglegrinder
	l_hand = null
	loot = list(/obj/effect/mob_spawn/corpse/human/shipwrecker/heavy, /obj/item/chainsaw/anglegrinder)
	alt_weapon_chance_left = 0
	alt_weapons_left = list(null)
	alt_weapon_chance_right = 10
	alt_weapons_right = list(/obj/item/chainsaw = 100,)

/obj/item/chainsaw/anglegrinder
	name = "saw grinder"
	desc = "A huge motorised circular saw with wicked titanium teeth. Designed to be wielded in both hands, and used to rip apart rock and scrap metal."
	icon_state = "grinder"
	tool_behaviour = TOOL_MINING
	throwforce = 10
	demolition_mod = 1.7
	custom_materials = list(/datum/material/iron= SHEET_MATERIAL_AMOUNT * 8, /datum/material/titanium= SHEET_MATERIAL_AMOUNT * 2, /datum/material/glass= SHEET_MATERIAL_AMOUNT * 0.5)

/obj/effect/mob_spawn/corpse/human/shipwrecker/heavy
	name = "Shipwrecker Heavy Wrecker"
	outfit = /datum/outfit/shipwrecker/heavy

/datum/outfit/shipwrecker/heavy
	name = "Shipwrecker Heavy Wrecker"
	head = /obj/item/clothing/head/helmet/shipwrecker/heavy
	suit = /obj/item/clothing/suit/armor/shipwrecker/heavy

/datum/outfit/shipwrecker/heavy/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	var/pocket_loot = list(/obj/item/reagent_containers/hypospray/medipen/military = 25,
	/obj/item/reagent_containers/hypospray/medipen/military/knockoff = 15,
	/obj/item/tank/internals/emergency_oxygen/engi = 10,
	/obj/effect/spawner/random/trash/deluxe_garbage = 10,
	/obj/effect/spawner/random/entertainment/coin = 5,
	/obj/item/stack/medical/bandage = 5,
	/obj/effect/spawner/random/entertainment/cigarette = 5,
	/obj/item/stack/spacecash/c50 = 5,
	/obj/item/knife/combat/survival = 5,
	/obj/item/dice/d10 = 2,
	/obj/item/reagent_containers/cup/blastoff_ampoule = 2,
	/obj/item/reagent_containers/pill/aranesp = 2,
	/obj/item/lighter = 2,
	/obj/effect/spawner/random/entertainment/cigar = 2,
	/obj/item/crowbar = 2,
	/obj/item/weldingtool/largetank = 1,
	/obj/item/shard = 1,
	/obj/item/wirecutters = 1,
	/obj/item/boxcutter = 1,
	)
	if(prob(80))
		glasses = pick_weight(
		/obj/item/clothing/glasses/welding = 25,
		/obj/item/clothing/glasses/sunglasses = 20,
		/obj/item/clothing/glasses/eyepatch = 15,
		/obj/item/clothing/glasses/night = 10,
		/obj/item/clothing/glasses/meson = 10,
		/obj/item/clothing/glasses/hud/health = 10,
		/obj/item/clothing/glasses/meson/night = 10,
		)
	if(prob(80))
		l_pocket = pick_weight(pocket_loot)
	if(prob(80))
		r_pocket = pick_weight(pocket_loot)

/mob/living/basic/trooper/shipwrecker/heavy/space

/mob/living/basic/trooper/shipwrecker/officer
	name = "Officer"
	desc = "A member of the infamous Shipwrecker Gang. Officers maintain discipline and cohesion during attacks on enemy ships. This one is armed with a scrap revolver."
	icon_state = "wrecker_officer"
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker/officer
	r_hand = /obj/item/gun/ballistic/revolver/junk
	l_hand = null
	loot = list(/obj/effect/mob_spawn/corpse/human/shipwrecker/officer, /obj/item/gun/ballistic/revolver/junk)

/obj/effect/mob_spawn/corpse/human/shipwrecker/officer
	name = "Shipwrecker Officer"
	outfit = /datum/outfit/shipwrecker/officer

/datum/action/cooldown/spell/conjure/shipwrecker_reinforcements
	name = "Shipwrecker Reinforcements"
	button_icon = 'icons/obj/clothing/masks.dmi'
	button_icon_state = "gas_alt"
	invocation = "Rise, my creations! Jump off your pages and into this realm!"
	invocation_type = INVOCATION_SHOUT
	spell_requirements = NONE
	create_summon_timer = 4 SECONDS
	cooldown_time = 15 SECONDS
	summon_type = list(
		/mob/living/basic/stickman,
		/mob/living/basic/stickman/ranged,
		/mob/living/basic/stickman/dog,
	)
	summon_radius = 1
	summon_amount = 2

/mob/living/basic/trooper/shipwrecker/boss
	name = "Commander"
	r_hand = /obj/item/claymore/cutlass
	icon_state = "officer" //change this later
	desc = "Big boss of the Shipwrecker Gang, infamous for raiding shuttles mid-transit. This one is armed with a cutlass and a ?????."
	response_help_continuous = "pushes"
	response_help_simple = "push"
	faction = list(FACTION_PIRATE, FACTION_SHIPWRECKER)
	loot = list(/obj/effect/mob_spawn/corpse/human/shipwrecker, /obj/item/gun/energy/plasmacutter/pirate, /obj/item/pickaxe)
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker
	l_hand = /obj/item/pickaxe


/mob/living/basic/trooper/shipwrecker/boss/blackskull
	name = "\improper Commodore Blackskull"
