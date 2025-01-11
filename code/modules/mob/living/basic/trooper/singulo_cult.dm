//CULT OF THE SINGULARITY:
//A pirate subfaction

//WHO ARE THEY:
//NPCs who

//WHAT DO THEY DO
//

//VISUAL THEMES:
//Purple, Pink, Black.
//Spirals and circles
//High-tech

//GAMEPLAY THEMES:
//Heavy use of enviromental hazards and traps
//
//
//Loot is variants of good quality station gear, with upsides and downsides.

//LORE:

/mob/living/basic/trooper/singulo_cultist
	//
	name = "Singularity Acolyte"
	desc = ""
	response_help_continuous = "pushes"
	response_help_simple = "push"
	faction = list(FACTION_PIRATE, FACTION_SHIPWRECKER)
	loot = list(/datum/outfit/shipwrecker, /obj/item/gun/energy/plasmacutter/pirate, /obj/item/pickaxe)
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker
	r_hand = /obj/item/gun/energy/plasmacutter/pirate
	l_hand = /obj/item/pickaxe
	damage_coeff = list(BRUTE = 1, BURN = 0.5, TOX = 0.2, STAMINA = 0, OXY = 0)
	ai_controller = /datum/ai_controller/basic_controller/trooper/calls_reinforcements
	projectilesound = 'sound/items/weapons/plasma_cutter.ogg'

/datum/outfit/singulo_cultist
	name = "Singularity Acolyte"
	head = /obj/item/clothing/head/costume/pirate/bandana
	glasses = /obj/item/clothing/glasses/meson
	mask = /obj/item/clothing/mask/bandana/purple
	uniform = /obj/item/clothing/under/syndicate/wrecker
	suit = /obj/item/clothing/suit/armor/vest/alt
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/pirate
	back = /obj/item/tank/jetpack/jumppack

/obj/effect/mob_spawn/corpse/human/singulo_cultist
	name = "Singularity Acolyte"
	outfit = /datum/outfit/shipwrecker
