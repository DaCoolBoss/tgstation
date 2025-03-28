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
	/obj/item/knife/shiv = 1,
	/obj/item/wirecutters = 1,
	/obj/item/boxcutter = 1,
	)
	if(prob(50))
		ears = /obj/item/radio/headset
	if(prob(60))
		glasses = pick_weight(
		/obj/item/clothing/glasses/eyepatch = 45,
		/obj/item/clothing/glasses/sunglasses = 25,
		/obj/item/clothing/glasses/meson = 25,
		/obj/item/clothing/glasses/night = 5,
		)
	if(prob(70))
		l_pocket = pick_weight(pocket_loot)
	if(prob(70))
		r_pocket = pick_weight(pocket_loot)

/datum/outfit/shipwrecker/post_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	if(visuals_only)
		return
	if(prob(25))
		var/obj/item/organ/heart/cybernetic/newheart = new()
		newheart.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(30))
		var/obj/item/organ/cyberimp/eyes/hud/diagnostic/newvision = new()
		newvision.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(35))
		var/obj/item/organ/eyes/robotic/basic/neweyes = new()
		neweyes.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(20))
		var/obj/item/organ/stomach/cybernetic/newgut = new()
		newgut.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(20))
		var/obj/item/organ/lungs/cybernetic/newlungs = new()
		newlungs.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(5))
		var/obj/item/organ/tongue/robot/newtongue = new()
		newtongue.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(15))
		var/obj/item/bodypart/leg/right/robot/newrightleg = new()
		newrightleg.try_attach_limb(scrapper)
	if(prob(15))
		var/obj/item/bodypart/leg/right/robot/newleftleg = new()
		newleftleg.try_attach_limb(scrapper)
	if(prob(15))
		var/obj/item/bodypart/arm/right/robot/newrightarm = new()
		newrightarm.try_attach_limb(scrapper)
	if(prob(15))
		var/obj/item/bodypart/arm/right/robot/newleftarm = new()
		newleftarm.try_attach_limb(scrapper)

/datum/outfit/shipwrecker/looter
	name = "Shipwrecker Scrapper (extra loot)"
	belt = /obj/item/storage/belt/military

/datum/outfit/shipwrecker/looter/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	. = ..()
	for(var/counter in 1 to rand(1,5))
		belt_contents += pick_weight(list(
			/obj/item/stack/sheet/iron/ten = 10,
			/obj/item/stack/sheet/iron/five = 10,
			/obj/item/stack/sheet/mineral/plasma/five = 10,
			/obj/item/stack/sheet/mineral/plasma = 10,
			/obj/effect/spawner/random/food_or_drink/donkpockets_single = 20,
			/obj/item/weldingtool/hugetank = 10,
			/obj/item/grenade/frag = 10,
			/obj/item/knife/combat = 10,
			/obj/item/assembly/flash = 10,
		))

/datum/outfit/shipwrecker/looter/medical
	name = "Shipwrecker Scrapper (extra stims/healing items)"
	suit = /obj/item/clothing/suit/armor/shipwrecker
	belt = /obj/item/storage/belt/military

/datum/outfit/shipwrecker/badass
	name = "Shipwrecker Scrapper (extra augments, better loot)"

/datum/outfit/shipwrecker/badass/post_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	. = ..()
	if(prob(20))
		var/obj/item/organ/heart/cybernetic/tier2/newheart = new()
		newheart.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(30))
		var/obj/item/organ/cyberimp/eyes/hud/diagnostic/newvision = new()
		newvision.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(15))
		var/obj/item/organ/eyes/robotic/shield/neweyes = new()
		neweyes.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(20))
		var/obj/item/organ/stomach/cybernetic/tier2/newgut = new()
		newgut.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(20))
		var/obj/item/organ/stomach/cybernetic/newgut = new()
		newgut.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)
	if(prob(5))
		var/obj/item/organ/tongue/robot/newtongue = new()
		newtongue.Insert(scrapper, movement_flags = DELETE_IF_REPLACED)

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
	outfit = /datum/outfit/shipwrecker/space

/datum/outfit/shipwrecker/officer
	name = "Shipwrecker Officer"
	head = /obj/item/clothing/head/helmet/shipwrecker/officer
	suit = /obj/item/clothing/suit/armor/shipwrecker/officer

/datum/outfit/shipwrecker/officer/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	var/pocket_loot = list(/obj/item/reagent_containers/hypospray/medipen/military = 30,
	/obj/item/reagent_containers/hypospray/medipen/military/knockoff = 10,
	/obj/item/tank/internals/emergency_oxygen/engi = 10,
	/obj/effect/spawner/random/trash/deluxe_garbage = 10,
	/obj/effect/spawner/random/entertainment/coin = 5,
	/obj/item/stack/medical/mesh/advanced = 5,
	/obj/effect/spawner/random/entertainment/cigar = 5,
	/obj/item/stack/spacecash/c100 = 5,
	/obj/item/knife/combat/survival = 5,
	/obj/item/dice/d12 = 2,
	/obj/item/food/drug/moon_rock = 2,
	/obj/item/reagent_containers/pill/aranesp = 2,
	/obj/item/stack/medical/suture = 2,
	/obj/effect/spawner/random/entertainment/cigar = 2,
	/obj/item/crowbar = 2,
	/obj/item/lighter = 1,
	/obj/item/lighter/skull = 1,
	/obj/item/reagent_containers/pill/zoom = 1,
	/obj/item/spess_knife = 1,
	/obj/item/grenade/syndieminibomb/concussion = 5,
	)
	if(prob(80))
		glasses = pick_weight(
		/obj/item/clothing/glasses/sunglasses = 40,
		/obj/item/clothing/glasses/night = 25,
		/obj/item/clothing/glasses/hud/health/sunglasses = 15,
		/obj/item/clothing/glasses/eyepatch = 10,
		/obj/item/clothing/glasses/meson/night = 10,
		)
	if(prob(90))
		l_pocket = pick_weight(pocket_loot)
	if(prob(90))
		r_pocket = pick_weight(pocket_loot)

