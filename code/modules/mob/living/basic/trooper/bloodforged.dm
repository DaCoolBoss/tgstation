//The Bloodforged Alliance:
//A pirate subfaction

//WHO ARE THEY:
//Bad guy space pirates.

//WHAT DO THEY DO
//

//VISUAL THEMES:
//Black and Grey, with Orange highlights
//Stripes
//Low-tech
//Crude and heavy iron equipment and armour

//GAMEPLAY THEMES:
//Synergy with enviromental hazards
//
//
//Loot is generally a bit weak

//LORE:

/mob/living/basic/trooper/bloodforged
	//Basic troopers, with melee (brute) and ranged (burn) damage
	name = "Bloodforged Soldier"
	desc = "A low-ranking member of the Shipwrecker Gang, infamous for raiding shuttles mid-transit. This one is armed with a plasma cutter and a pickaxe."
	response_help_continuous = "pushes"
	response_help_simple = "push"
	faction = list(FACTION_PIRATE, FACTION_SHIPWRECKER)
	loot = list(/datum/outfit/shipwrecker, /obj/item/gun/energy/plasmacutter/pirate, /obj/item/pickaxe)
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker
	r_hand = /obj/item/gun/energy/plasmacutter/pirate
	l_hand = /obj/item/pickaxe
	damage_coeff = list(BRUTE = 0.9, BURN = 0.6, TOX = 1, STAMINA = 0, OXY = 0.5)
	ai_controller = /datum/ai_controller/basic_controller/trooper/calls_reinforcements
	/// Sound to play when firing weapon
	var/projectilesound = 'sound/items/weapons/plasma_cutter.ogg'

/datum/outfit/bloodforged
	name = "Bloodforged Soldier"
	head = /obj/item/clothing/head/costume/pirate/bandana
	mask = /obj/item/clothing/mask/gas
	uniform = /obj/item/clothing/under/syndicate/wrecker
	suit = /obj/item/clothing/suit/armor/riot
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/pirate
	back = /obj/item/tank/jetpack/jumppack

/obj/effect/mob_spawn/corpse/human/bloodforged
	name = "Bloodforged Soldier"
	outfit = /datum/outfit/shipwrecker
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"

/mob/living/basic/trooper/bloodforged/gunner
	name = "Bloodforged Gunner"

/mob/living/basic/trooper/bloodforged/assassin
	name = "Bloodforged Assassin"

/mob/living/basic/trooper/bloodforged/slaver
	name = "Bloodforged Slavemaster"

/mob/living/basic/trooper/bloodforged/slave
	name = "Ashwalker Slave"
