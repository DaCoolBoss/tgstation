//SHIPWRECKER GANG:
//A pirate subfaction

//WHO ARE THEY:
//Violent criminals who launch themselves on shuttles and kill everyone and smash everything.
//A highly varied bunch of NPCs designed to challenge players combat skills on multiple fronts.
//2 ranks of basic trooper (Scrapper, Wrecker)
//1 specialist (Ganger)
//1 boss (Commander) (plus a unique named variant)

//WHAT DO THEY DO
//

//VISUAL THEMES:
//Primarily Greys, Greens, Olives. Warm Browns and Reds used for detailing.
//Short NPC names, indicating rank or specialty
//

//GAMEPLAY THEMES:
//These guys are designed to be more dangerous than regular space pirates, to have a unique gameplay pattern and to give interesting loot.
//Mix of melee and ranged capability, these guys work together and specialise to cover multiple bases.
//

//LOOT:
//Primarily variants on station gear
//A lot of junk, sorting through piles of garbage to find good items
//

//LORE:
//The Shipwrecker Gang hangs out on the "Scrapmaker", a heavily modified pirate frigate. They share this vessel with the secretive and eccentric Cult of the Singularity.
//Captain Carpheart is the leader of the Gang, and rules the ship with an iron fist. This Gang is highly militerised, disciplined and loyal.
//The Scrapmaker is kept in a state of perpetual Warp by the Cult to prevent detection by corporate security forces.
//Shuttles using Warp Transit are often unprepared

/mob/living/basic/trooper/shipwrecker
	//Basic close-range troopers, with melee (brute) and ranged (burn) damage
	name = "Scrapper"
	icon_state = "wrecker"
	desc = "A low-ranking member of the Shipwrecker Gang, infamous for raiding shuttles mid-transit. This one is armed with a plasma cutter and a pickaxe."
	response_help_continuous = "pushes"
	response_help_simple = "push"
	faction = list(FACTION_PIRATE, FACTION_SHIPWRECKER)
	loot = list(/obj/effect/mob_spawn/corpse/human/shipwrecker, /obj/item/gun/energy/plasmacutter/pirate, /obj/item/pickaxe)
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker
	r_hand = /obj/item/gun/energy/plasmacutter/pirate
	l_hand = /obj/item/pickaxe
	damage_coeff = list(BRUTE = 0.9, BURN = 0.6, TOX = 1, STAMINA = 0, OXY = 0)
	ai_controller = /datum/ai_controller/basic_controller/trooper/calls_reinforcements
	/// Sound to play when firing weapon
	var/projectilesound = 'sound/items/weapons/plasma_cutter.ogg'

/datum/ai_controller/basic_controller/trooper/shipwrecker
	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk
	planning_subtrees = list(
		/datum/ai_planning_subtree/simple_find_target,
		/datum/ai_planning_subtree/attack_obstacle_in_path/trooper,
		/datum/ai_planning_subtree/basic_ranged_attack_subtree/trooper/shipwrecker,
		/datum/ai_planning_subtree/basic_melee_attack_subtree,
		/datum/ai_planning_subtree/travel_to_point/and_clear_target/reinforce,
	)

/datum/ai_planning_subtree/basic_ranged_attack_subtree/trooper/shipwrecker
	ranged_attack_behavior = /datum/ai_behavior/basic_ranged_attack/trooper/shipwrecker

/datum/ai_behavior/basic_ranged_attack/trooper/shipwrecker
	action_cooldown = 1.2 SECONDS
	required_distance = 3

/datum/ai_controller/basic_controller/trooper/shipwrecker
	planning_subtrees = list(
		/datum/ai_planning_subtree/simple_find_target,
		/datum/ai_planning_subtree/basic_ranged_attack_subtree/trooper_shotgun,
		/datum/ai_planning_subtree/travel_to_point/and_clear_target/reinforce,
	)

/datum/ai_planning_subtree/basic_ranged_attack_subtree/troop
	ranged_attack_behavior = /datum/ai_behavior/basic_ranged_attack/trooper_shotgun

/datum/ai_behavior/basic_ranged_attack/trooper_shotgun
	action_cooldown = 3 SECONDS
	required_distance = 3
	avoid_friendly_fire = TRUE

/datum/outfit/shipwrecker
	name = "Shipwrecker Scrapper"
	head = /obj/item/clothing/head/helmet/shipwrecker
	mask = /obj/item/clothing/mask/gas
	uniform = /obj/item/clothing/under/syndicate/wrecker
	suit = /obj/item/clothing/suit/armor/shipwrecker
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/tank/jetpack/jumppack

/datum/outfit/shipwrecker/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	var/pocket_loot = list(/obj/item/reagent_containers/hypospray/medipen/military/knockoff = 20,
	/obj/item/reagent_containers/hypospray/medipen/military = 15,
	/obj/item/tank/internals/emergency_oxygen/engi = 10,
	/obj/effect/spawner/random/trash/garbage = 10,
	/obj/item/lighter/greyscale = 5,
	/obj/effect/spawner/random/entertainment/coin = 5,
	/obj/item/stack/medical/bandage/makeshift = 5,
	/obj/effect/spawner/random/entertainment/cigarette = 5,
	/obj/item/stack/spacecash/c20 = 5,
	/obj/item/knife/combat/survival = 5,
	/obj/item/dice/d6 = 2,
	/obj/item/reagent_containers/pill/happy = 2,
	/obj/item/reagent_containers/pill/aranesp = 2,
	/obj/item/match = 2,
	/obj/item/stack/sheet/mineral/plasma/five = 2,
	/obj/item/crowbar = 1,
	/obj/item/boxcutter = 1,
	/obj/item/shard = 1,
	/obj/item/wirecutters = 1,
	/obj/item/boxcutter = 1,
	)
	if(prob(80))
		glasses = pick(/obj/item/clothing/glasses/meson, /obj/item/clothing/glasses/eyepatch, /obj/item/clothing/glasses/sunglasses, /obj/item/clothing/glasses/night,)
	if(prob(70))
		l_pocket = pick_weight(pocket_loot)
	if(prob(70))
		r_pocket = pick_weight(pocket_loot)

/obj/effect/mob_spawn/corpse/human/shipwrecker
	name = "Shipwrecker Pirate"
	outfit = /datum/outfit/shipwrecker

/mob/living/basic/trooper/shipwrecker/space
	unsuitable_atmos_damage = 0
	minimum_survivable_temperature = 0
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker/space

/datum/outfit/shipwrecker/space
	name = "Shipwrecker Pirate (Spacesuit)"
	head = /obj/item/clothing/head/helmet/shipwrecker
	mask = /obj/item/clothing/mask/gas
	suit = /obj/item/clothing/suit/space/pirate
	suit_store = /obj/item/tank/internals/oxygen/red

/obj/effect/mob_spawn/corpse/human/shipwrecker/space
	name = "Shipwrecker Pirate (Spacesuit)"
	outfit = /datum/outfit/shipwrecker
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"

/mob/living/basic/trooper/syndicate/space/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_SPACEWALK, INNATE_TRAIT)
	set_light(4)

/mob/living/basic/trooper/shipwrecker/heavy
	//slow melee troopers with a lot of hp, armour and damage
	name = "Wrecker"
	icon_state = "wrecker_heavy"
	desc = "A member of the infamous Shipwrecker Gang. This one is heavily armoured and brandishing a huge axe."
	melee_damage_lower = 30
	melee_damage_upper = 30
	armour_penetration = 35
	attack_verb_continuous = "slashes"

/datum/outfit/shipwrecker/heavy
	name = "Shipwrecker Wrecker" //oof that's a lil awkward
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
	/obj/item/boxcutter = 1,
	/obj/item/shard = 1,
	/obj/item/wirecutters = 1,
	/obj/item/boxcutter = 1,
	)
	if(prob(80))
		l_pocket = pick_weight(pocket_loot)
	if(prob(80))
		r_pocket = pick_weight(pocket_loot)

/mob/living/basic/trooper/shipwrecker/heavy/space

/mob/living/basic/trooper/shipwrecker/officer
	name = "Ganger"
	desc = "A member of the infamous Shipwrecker Gang. Gangers are officers who maintain discipline and cohesion during attacks on enemy ships."

/datum/outfit/shipwrecker/officer
	name = "Shipwrecker Ganger"
	head = /obj/item/clothing/head/costume/pirate/bandana
	mask = /obj/item/clothing/mask/gas
	uniform = /obj/item/clothing/under/syndicate/wrecker
	suit = /obj/item/clothing/suit/armor/vest
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/combat
	back = /obj/item/tank/jetpack/jumppack

/datum/outfit/shipwrecker/officer/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	var/pocket_loot = list(/obj/item/reagent_containers/hypospray/medipen/military = 35,
	/obj/item/reagent_containers/hypospray/medipen/military/knockoff = 5,
	/obj/item/tank/internals/emergency_oxygen/double = 10,
	/obj/effect/spawner/random/trash/deluxe_garbage = 10,
	/obj/effect/spawner/random/entertainment/coin = 5,
	/obj/item/stack/medical/bandage = 5,
	/obj/effect/spawner/random/entertainment/cigarette = 5,
	/obj/item/stack/spacecash/c100 = 5,
	/obj/item/knife/combat/survival = 5,
	/obj/item/dice/d12 = 2,
	/obj/item/reagent_containers/cup/blastoff_ampoule = 2,
	/obj/item/reagent_containers/pill/aranesp = 2,
	/obj/item/lighter = 2,
	/obj/effect/spawner/random/entertainment/cigar = 2,
	/obj/item/crowbar = 2,
	/obj/item/lighter = 1,
	/obj/item/lighter/skull = 1,
	/obj/item/wirecutters = 1,
	/obj/item/spess_knife = 1,
	)
	if(prob(80))
		l_pocket = pick_weight(pocket_loot)
	if(prob(80))
		r_pocket = pick_weight(pocket_loot)
	l_pocket = pick_weight(list(/obj/item/reagent_containers/hypospray/medipen/military = 40,
	/obj/item/reagent_containers/hypospray/medipen/military/knockoff = 10,
	/obj/item/storage/wallet/random = 10,
	/obj/item/stack/spacecash/c100 = 5,
	/obj/item/spess_knife = 1,
	))

/mob/living/basic/trooper/shipwrecker/officer/space

/mob/living/basic/trooper/shipwrecker/boss
	name = "Commander"

/mob/living/basic/trooper/shipwrecker/boss/blackskull
	name = "\improper Commodore Blackskull"


/mob/living/basic/trooper/pirate/melee
	name = "Pirate Swashbuckler"
	melee_damage_lower = 30
	melee_damage_upper = 30
	armour_penetration = 35

	attack_vis_effect = ATTACK_EFFECT_SLASH
	loot = list(/obj/effect/mob_spawn/corpse/human/pirate/melee)
	light_range = 2
	light_power = 2.5
	light_color = COLOR_SOFT_RED
	loot = list(
		/obj/effect/mob_spawn/corpse/human/pirate/melee,
		/obj/item/melee/energy/sword/pirate,
	)
	mob_spawner = /obj/effect/mob_spawn/corpse/human/pirate/melee
	r_hand = /obj/item/melee/energy/sword/pirate
