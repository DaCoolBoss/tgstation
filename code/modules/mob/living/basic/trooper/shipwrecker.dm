/mob/living/basic/trooper/shipwrecker
	name = "Scrapper"
	desc = "A low-ranking member of the Shipwrecker Gang, infamous for raiding shuttles mid-transit. This one is armed with a plasma cutter and a pickaxe."
	response_help_continuous = "pushes"
	response_help_simple = "push"
	faction = list(FACTION_PIRATE, FACTION_SHIPWRECKER)
	loot = list(/datum/outfit/shipwrecker, /obj/item/gun/energy/plasmacutter/pirate, /obj/item/pickaxe)
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker
	r_hand = /obj/item/gun/energy/plasmacutter/pirate
	l_hand = /obj/item/pickaxe
	damage_coeff = list(BRUTE = 0.9, BURN = 0.6, TOX = 1, STAMINA = 0, OXY = 0.5)

/datum/outfit/shipwrecker
	name = "Shipwrecker Pirate"
	head = /obj/item/clothing/head/costume/pirate/bandana
	mask = /obj/item/clothing/mask/gas
	uniform = /obj/item/clothing/under/color/lightbrown
	suit = /obj/item/clothing/suit/armor/vest/alt
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/pirate
	back = /obj/item/tank/jetpack/jumppack

/obj/effect/mob_spawn/corpse/human/shipwrecker
	name = "Shipwrecker Pirate"
	outfit = /datum/outfit/shipwrecker
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"

/mob/living/basic/trooper/shipwrecker/space
	unsuitable_atmos_damage = 0
	minimum_survivable_temperature = 0
	mob_spawner = /obj/effect/mob_spawn/corpse/human/shipwrecker/space

/datum/outfit/shipwrecker/space
	name = "Shipwrecker Pirate (Spacesuit)"
	head = /obj/item/clothing/head/helmet/space/pirate/bandana
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
	name = "Wrecker"
	desc = "A member of the infamous Shipwrecker Gang. Wreckers are heavily armored pirates and brandishing a huge axe."
	melee_damage_lower = 30
	melee_damage_upper = 30
	armour_penetration = 35
	attack_verb_continuous = "slashes"

/mob/living/basic/trooper/shipwrecker/heavy/space

/mob/living/basic/trooper/shipwrecker/officer

/mob/living/basic/trooper/shipwrecker/officer/space

/mob/living/basic/trooper/shipwrecker/bigboss

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

/obj/effect/mob_spawn/corpse/human/pirate/scrapper
	name = "Scrapper Pirate"
	skin_tone = "caucasian1" //all pirates are white because it's easier that way
	outfit = /datum/outfit/scrapper
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"

/datum/outfit/scrapper
	name = "Scrapper Gang"
	head = /obj/item/clothing/head/costume/pirate/bandana
	mask = /obj/item/clothing/mask/gas
	uniform = /obj/item/clothing/under/color/lightbrown
	suit = /obj/item/clothing/suit/armor/vest/alt
	shoes = /obj/item/clothing/shoes/pirate
	back = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/scrapper/elite
	name = "Scrapper Gang Wrecker"
	head = /obj/item/clothing/head/utility/welding
	uniform = /obj/item/clothing/under/costume/pirate
	suit = /obj/item/clothing/suit/armor/heavy
	shoes = /obj/item/clothing/shoes/pirate/armored

/datum/outfit/scrapper/officer
	name = "Scrapper Gang Officer"
	uniform = /obj/item/clothing/under/costume/pirate
	shoes = /obj/item/clothing/shoes/jackboots

/datum/outfit/scrapper/officer

/mob/living/basic/trooper/scrapper/boss

/datum/outfit/scrapper/boss

	uniform = /obj/item/clothing/under/suit/carpskin
	shoes = /obj/item/clothing/shoes/pirate/armored

/mob/living/basic/trooper/scrapper/boss/captain


/datum/outfit/scrapper/boss/captain
	name = "Scrapper Captain"
	uniform = /obj/item/clothing/under/costume/dutch
	back = /obj/item/storage/backpack/satchel/leather
	mask = /obj/item/clothing/mask/gas/ninja

