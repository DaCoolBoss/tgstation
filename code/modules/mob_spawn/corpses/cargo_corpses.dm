//in this file: corpses that can be ordered at cargo, and outfits for them

/obj/effect/mob_spawn/corpse/human/medical_cadaver

/obj/effect/mob_spawn/corpse/human/medical_cadaver/Initialize(mapload)
	add_reagent(/datum/reagent/toxin/formaldehyde, 5)
	outfit = select_outfit()
	return ..()

/// Returns the outfit worn by our corpse
/obj/effect/mob_spawn/corpse/human/medical_cadaver/proc/select_outfit()
	var/funeral_outfit = pick_weight(list(
		/datum/outfit/corpse_spacefuneral = 30,
		/datum/outfit/corpse_suit = 30
		/datum/outfit/corpse_scrubs = 30,
		/datum/outfit/weddingdress = 5,
		/datum/outfit/tuxedo = 5,
	))
	return funeral_outfit

/datum/outfit/corpse_spacefuneral
	name = "Space Funeral Clothes"
	desc = "For dressing corpses in before launched out into the void. You can't just leave nude corpses floating around in space, after all."
	uniform = /obj/item/clothing/under/misc/burial
	shoes = /obj/item/clothing/shoes/sneakers/white

/datum/outfit/corpse_spacefuneral/pre_equip(visualsOnly = FALSE)
	if(prob(20))
		l_pocket = pick_weight(list(
		/obj/item/coin/iron = 2,
		/obj/item/coin/silver = 1,
		/obj/item/food/grown/poppy = 1,
		/obj/item/food/grown/harebell = 1,
		))
	if(prob(20))
		r_pocket = pick_weight(list(
		/obj/item/coin/iron = 2,
		/obj/item/coin/silver = 1,
		/obj/item/food/grown/poppy = 1,
		/obj/item/food/grown/harebell = 1,
		))

/datum/outfit/corpse_scrubs
	name = "Corpse Scrubs"
	desc = "Hopefully they didn't die of anything contagious."
	uniform = /obj/item/clothing/under/rank/medical/scrubs/coroner

/datum/outfit/corpse_suit
	name = "Dead Guy's Formalware"
	desc = "Designer suit and shoes from Dead Guy's, a boutique catering primarily to the deceased."
	uniform = /obj/item/clothing/under/suit/black
	shoes = /obj/item/clothing/shoes/laceup

/datum/outfit/corpse_suit/pre_equip(visualsOnly = FALSE)
	if(prob(20))
		l_pocket = pick_weight(list(
		/obj/item/coin/iron = 2,
		/obj/item/coin/silver = 1,
		/obj/item/food/grown/poppy = 1,
		/obj/item/food/grown/harebell = 1,
		))
	if(prob(20))
		r_pocket = pick_weight(list(
		/obj/item/coin/iron = 2,
		/obj/item/coin/silver = 1,
		/obj/item/food/grown/poppy = 1,
		/obj/item/food/grown/harebell = 1,
		))

/datum/outfit/weddingdress
	name = "Wedding Dress"
	desc = "In the space future, these are unisex."
	head = /obj/item/clothing/head/costume/weddingveil
	uniform = /obj/item/clothing/under/dress/wedding_dress
	shoes = /obj/item/clothing/shoes/sneakers/white

/datum/outfit/tuxedo
	name = "Classy Tuxedo"
	desc = "It's incredibly classy. Almost unbelievably classy."
	uniform = /obj/item/clothing/under/suit/tuxedo
	shoes = /obj/item/clothing/shoes/laceup

/datum/outfit/tuxedo/pre_equip(visualsOnly = FALSE)
	if(prob(35))
		head = /obj/item/clothing/head/hats/tophat
	if(prob(20))
		l_pocket = pick_weight(list(
		/obj/item/coin/iron = 2,
		/obj/item/coin/silver = 1,
		/obj/item/food/grown/poppy = 1,
		/obj/item/food/grown/harebell = 1,
		))
	if(prob(20))
		r_pocket = pick_weight(list(
		/obj/item/coin/iron = 2,
		/obj/item/coin/silver = 1,
		/obj/item/food/grown/poppy = 1,
		/obj/item/food/grown/harebell = 1,
		))

/obj/effect/mob_spawn/corpse/human/medical_cadaver/lizardman
		mob_type = /mob/living/carbon/human/species/lizard

/obj/effect/mob_spawn/corpse/human/medical_cadaver/lizardman/Initialize(mapload)
	add_reagent(/datum/reagent/toxin/formaldehyde, 5)
	outfit = select_outfit()
	return ..()

/obj/effect/mob_spawn/corpse/human/medical_cadaver/lizardman/proc/select_outfit()
	var/lizard_trinkets = list(
		/obj/item/clothing/accessory/talisman = 2,
		/obj/item/food/steeped_mushrooms = 1,
		/obj/item/food/meat/cutlet = 1,
		/obj/item/food/grown/harebell = 1,
	)
	var/funeral_outfit = pick_weight(list(
		/datum/outfit/corpse_caveman = 45,
		/datum/outfit/corpse_scrubs = 50,
		/datum/outfit/corpse_ashwalker_elder = 5
	))
	return lizard_funeral_outfit

/datum/outfit/corpse_caveman
	name = "caveman outfit"
	desc = "The hottest fashion in Lavaland's hermit scene."
	uniform = /obj/item/clothing/under/costume/loincloth

/datum/outfit/corpse_caveman/pre_equip(visualsOnly = FALSE)
	if(prob(20))
		gloves = /obj/item/clothing/gloves/bracer
	if(prob(5))
		l_pocket = /obj/item/knife/combat/bone
	if(prob(20))
		r_pocket = pick_weight(list(
		/obj/item/clothing/accessory/talisman = 2,
		/obj/item/food/steeped_mushrooms = 1,
		/obj/item/food/meat/cutlet = 1,
		/obj/item/food/grown/harebell = 1,
		))

/datum/outfit/corpse_ashwalker_elder
	uniform = /obj/item/clothing/under/costume/gladiator/ash_walker

/datum/outfit/corpse_caveman/pre_equip(visualsOnly = FALSE)
	if(prob(50))
		head = /obj/item/clothing/head/helmet/skull
	if(prob(40))
		gloves = /obj/item/clothing/gloves/bracer
	if(prob(20))
		accessory = /obj/item/clothing/accessory/skullcodpiece
	if(prob(40))
		l_pocket = pick_weight(list(
		/obj/item/clothing/accessory/talisman = 2,
		/obj/item/food/steeped_mushrooms = 1,
		/obj/item/food/meat/cutlet = 1,
		/obj/item/food/grown/harebell = 1,
		))
	if(prob(40))
		r_pocket = pick_weight(list(
		/obj/item/clothing/accessory/talisman = 2,
		/obj/item/food/steeped_mushrooms = 1,
		/obj/item/food/meat/cutlet = 1,
		/obj/item/flashlight/flare/torch = 1,
		))

/obj/effect/mob_spawn/corpse/human/medical_cadaver/dubious

/obj/effect/mob_spawn/corpse/human/medical_cadaver/dubious/proc/select_outfit()
	var/dumpster_funeral_outfit = pick_weight(list(
		/datum/outfit/nothing = 40
		/datum/outfit/corpse_scrubs = 10,
		/datum/outfit/corpse_greyshirt = 10,
		/datum/outfit/mafia_goon = 10,
		/datum/outfit/corpse_space_explorer = 5,
		/datum/outfit/corpse_ashwalker_elder = 8,
		/datum/outfit/lootable_syndie = 1,
		/datum/outfit/tuxedo = 1,
	))
	return dumpster_funeral_outfit

/datum/outfit/corpse_greyshirt
	name = "dead assistant outfit"
	if(prob(25))
		head = pick(list(
		/obj/item/clothing/head/cone,
		/obj/item/clothing/head/soft/grey
		/obj/item/clothing/head/utility/welding
		))
	if(prob(60))
		mask = /obj/item/clothing/mask/gas
	if(prob(10))
		glasses = pick(list(/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/welding,
		/obj/item/clothing/glasses/sunglasses,
		))
	uniform = /obj/item/clothing/under/color/grey
	if(prob(20))
		belt = pick_weight(list(
		/obj/item/storage/belt/utility = 2,
		/obj/item/storage/belt/utility/full = 2,
		/obj/item/storage/belt/utility/full/powertools = 1,
		))
	if(prob(40))
		l_pocket = pick_weight(list(
		/obj/item/coin/plastic = 2,
		/obj/item/food/pizzaslice/moldy/bacteria = 2,
		/obj/item/reagent_containers/pill/maintenance = 1,
		/obj/item/radio/off = 1,
		))
	if(prob(40))
		r_pocket = pick_weight(list(
		/obj/item/food/breadslice/moldy/bacteria = 2,
		/obj/item/stack/spacecash/c10 = 2,
		/obj/item/reagent_containers/pill/maintenance = 1,
		/obj/item/radio/off = 1,
		))
	shoes = /obj/item/clothing/shoes/sneakers/black

/datum/outfit/mafia_goon
	name = "dead mafia goon outfit"
	desc = "Boss, I got whacked!"
	if(prob(50))
		head = pick(list(/obj/item/clothing/head/hats/bowler,
		/obj/item/clothing/head/fedora,
		/obj/item/clothing/head/fedora/beige,
		/obj/item/clothing/head/flatcap,
		))
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = pick_weight(list(
	/obj/item/clothing/under/suit/checkered = 2,
	/obj/item/clothing/under/suit/black = 2,
	/obj/item/clothing/under/suit/burgundy = 2,
	/obj/item/clothing/under/suit/charcoal = 2,
	/obj/item/clothing/under/suit/navy = 2,
	/obj/item/clothing/under/syndicate/sniper = 1,
	/obj/item/clothing/under/costume/villain = 1,
	))
	shoes = pick(list(
	/obj/item/clothing/shoes/laceup,
	/obj/item/clothing/shoes/jackboots,
	))
	if(prob(30))
		l_pocket = pick_weight(list(
		/obj/item/clothing/mask/cigarette/shadyjims = 2,
		/obj/item/clothing/mask/cigarette/syndicate = 2,
		/obj/item/switchblade = 1,
		))
	if(prob(40))
		r_pocket = pick(list(
		/obj/item/virgin_mary,
		/obj/item/lighter,
		))

/datum/outfit/corpse_space_explorer
	name = "dead space explorer outfit"
	desc = "The outfit of some dead chump in space. They were prepared, but obviously not prepared enough."
	head = pick_weight(list(
		/obj/item/clothing/head/helmet/space/eva = 2,
		/obj/item/clothing/head/helmet/space = 2,
		/obj/item/clothing/head/helmet/space/nasavoid/old = 1,
	))
	if(prob(10))
		neck = /obj/item/binoculars
	uniform = pick_weight(list(
		/obj/item/clothing/under/color/black = 2,
		/obj/item/clothing/under/suit/red = 1,
	))
	suit = pick_weight(list(
		/obj/item/clothing/suit/space = 2,
		/obj/item/clothing/suit/space/eva = 2,
		/obj/item/clothing/suit/space/nasavoid/old = 1,
	))
	if(prob(20))
		belt = pick_weight(list(
		/obj/item/storage/belt/utility = 2,
		/obj/item/storage/belt/utility/full = 2,
		/obj/item/storage/belt/utility/full/powertools = 1,
	))
	shoes = pick_weight(list(
	/obj/item/clothing/shoes/laceup = 2,
	/obj/item/clothing/shoes/sneakers/black = 2,
	/obj/item/clothing/shoes/combat = 1,
	))
