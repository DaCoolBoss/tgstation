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
	var/pocket_loot = list(/obj/item/reagent_containers/hypospray/medipen/military/unreliable = 20,
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
	belt = /obj/item/storage/belt/military/army

/datum/outfit/shipwrecker/looter/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	. = ..()
	for(var/counter in 1 to rand(1,5))
		belt_contents += pick_weight(list(
			/obj/item/stack/sheet/iron/ten = 10,
			/obj/item/stack/sheet/iron/five = 10,
			/obj/item/stack/sheet/mineral/plasma/five = 10,
			/obj/item/stack/sheet/mineral/plasma = 10,
			/obj/effect/spawner/random/food_or_drink/donkpockets_single = 10,
			/obj/item/weldingtool/hugetank = 10,
			/obj/item/grenade/frag = 10,
			/obj/item/knife/combat = 10,
			/obj/item/stack/circuit_stack/full = 10,
			/obj/item/assembly/flash = 5,
			/obj/item/grenade/frag = 5,
		))

/datum/outfit/shipwrecker/looter/medical
	name = "Shipwrecker Scrapper (extra stims/healing items)"


/datum/outfit/shipwrecker/looter/medical/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	. = ..()
	for(var/counter in 1 to rand(1,3))
		belt_contents += pick_weight(list(
			/obj/item/stack/sheet/iron/ten = 10,
			/obj/item/stack/sheet/iron/five = 10,
			/obj/item/stack/sheet/mineral/plasma/five = 10,
			/obj/item/stack/sheet/mineral/plasma = 10,
			/obj/effect/spawner/random/food_or_drink/donkpockets_single = 10,
			/obj/item/weldingtool/hugetank = 10,
			/obj/item/grenade/frag = 10,
			/obj/item/knife/combat = 10,
			/obj/item/hatchet = 10,
			/obj/item/assembly/flash = 5,
			/obj/item/grenade/frag = 5,
		))

/datum/outfit/shipwrecker/badass
	name = "Shipwrecker Scrapper (extra augments, better loot)"

/datum/outfit/shipwrecker/badass/post_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	. = ..()
	var/pocket_loot = pick_weight(list(/obj/item/grenade/frag = 25,
	/obj/item/knife/combat = 25,
	/obj/item/assembly/flash = 20,
	/obj/item/assembly/flash = 20,
	/obj/item/assembly/flash = 10,
	))
	if(l_pocket == null)
		l_pocket = pocket_loot
	if(r_pocket == null)
		r_pocket = pocket_loot
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

/obj/effect/mob_spawn/corpse/human/shipwrecker/space
	name = "Shipwrecker Pirate (Spacesuit)"
	outfit = /datum/outfit/shipwrecker/space

/datum/outfit/shipwrecker/space
	name = "Shipwrecker Pirate (Spacesuit)"
	head = /obj/item/clothing/head/helmet/space/pirate/shipwrecker
	suit = /obj/item/clothing/suit/space/pirate/shipwrecker
	suit_store = /obj/item/tank/internals/oxygen/red

/obj/effect/mob_spawn/corpse/human/shipwrecker/heavy
	name = "Shipwrecker Heavy Wrecker"
	outfit = /datum/outfit/shipwrecker/heavy

/datum/outfit/shipwrecker/heavy
	name = "Shipwrecker Heavy Wrecker"
	head = /obj/item/clothing/head/helmet/shipwrecker/heavy
	suit = /obj/item/clothing/suit/armor/shipwrecker/heavy

/datum/outfit/shipwrecker/heavy/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	var/pocket_loot = list(/obj/item/reagent_containers/hypospray/medipen/military = 25,
	/obj/item/reagent_containers/hypospray/medipen/military/unreliable = 15,
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

/datum/outfit/shipwrecker/heavy/post_equip(mob/living/carbon/human/wrecker, visuals_only = FALSE)
	. = ..()
	if(prob(40))
		var/obj/item/organ/heart/cybernetic/tier2/newheart = new()
		newheart.Insert(wrecker, movement_flags = DELETE_IF_REPLACED)
	if(prob(20))
		var/obj/item/organ/eyes/robotic/shield/neweyes = new()
		neweyes.Insert(wrecker, movement_flags = DELETE_IF_REPLACED)
	if(prob(30))
		var/obj/item/organ/stomach/cybernetic/tier2/newgut = new()
		newgut.Insert(wrecker, movement_flags = DELETE_IF_REPLACED)
	if(prob(25))
		var/obj/item/organ/tongue/robot/newtongue = new()
		newtongue.Insert(wrecker, movement_flags = DELETE_IF_REPLACED)
	if(prob(10))
		var/obj/item/bodypart/chest/robot/newchest = new()
		newchest.try_attach_limb(wrecker)
	if(prob(20))
		var/obj/item/bodypart/leg/right/robot/advanced/newrightleg = new()
		newrightleg.try_attach_limb(wrecker)
	if(prob(20))
		var/obj/item/bodypart/leg/right/robot/advanced/newleftleg = new()
		newleftleg.try_attach_limb(wrecker)
	if(prob(25))
		var/obj/item/bodypart/arm/right/robot/advanced/newrightarm = new()
		newrightarm.try_attach_limb(wrecker)
	if(prob(25))
		var/obj/item/bodypart/arm/right/robot/advanced/newleftarm = new()
		newleftarm.try_attach_limb(wrecker)

/datum/outfit/shipwrecker/heavy/badass
	name = "Shipwrecker Wrecker (extra augments, better loot)"



/obj/effect/mob_spawn/corpse/human/shipwrecker/officer
	name = "Shipwrecker Officer"
	outfit = /datum/outfit/shipwrecker/officer

/datum/outfit/shipwrecker/officer
	name = "Shipwrecker Officer"
	head = /obj/item/clothing/head/helmet/shipwrecker/officer
	suit = /obj/item/clothing/suit/armor/shipwrecker/officer
	belt = /obj/item/storage/belt/military

/datum/outfit/shipwrecker/officer/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	var/pocket_loot = list(/obj/item/reagent_containers/hypospray/medipen/military = 30,
	/obj/item/reagent_containers/hypospray/medipen/military/unreliable = 10,
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

/obj/effect/mob_spawn/corpse/human/shipwrecker/boss
	name = "Shipwrecker Commander"
	outfit = /datum/outfit/shipwrecker/officer/boss

/datum/outfit/shipwrecker/officer/boss //subtype of officer to inherit their augments mostly
	name = "Shipwrecker Commander"
	head = /obj/item/clothing/head/helmet/shipwrecker/officer
	suit = /obj/item/clothing/suit/armor/shipwrecker/officer

/datum/outfit/shipwrecker/officer/boss/pre_equip(mob/living/carbon/human/scrapper, visuals_only = FALSE)
	var/pocket_loot = list(/obj/item/reagent_containers/hypospray/medipen/military = 40,
	/obj/item/tank/internals/emergency_oxygen/double = 10,
	/obj/item/tank/internals/emergency_oxygen/engi = 10,
	/obj/effect/spawner/random/trash/deluxe_garbage = 10,
	/obj/effect/spawner/random/entertainment/coin = 5,
	/obj/item/stack/medical/mesh/advanced = 5,
	/obj/item/trench_tool = 5,
	/obj/item/stack/spacecash/c1000 = 5,
	/obj/item/knife/combat = 5,
	/obj/item/flashlight/lantern = 2,
	/obj/item/megaphone = 2,
	/obj/item/switchblade = 2,
	/obj/item/reagent_containers/medigel/libital = 2,
	/obj/item/reagent_containers/medigel/aiuri = 2,
	/obj/item/lighter/skull = 1,
	/obj/item/weldingtool/abductor = 1,
	/obj/item/multitool/abductor = 1,
	/obj/item/crowbar/abductor = 1,
	/obj/item/dice/d20 = 1, //can't win em all, kid
	/obj/item/grenade/syndieminibomb/concussion = 5,
	)
	if(!glasses)
		glasses = pick_weight(
		/obj/item/clothing/glasses/sunglasses = 40,
		/obj/item/clothing/glasses/night = 25,
		/obj/item/clothing/glasses/hud/health/sunglasses = 15,
		/obj/item/clothing/glasses/eyepatch = 10,
		/obj/item/clothing/glasses/meson/night = 10,
		)
	l_pocket = pick_weight(pocket_loot)
	r_pocket = pick_weight(pocket_loot)

/obj/effect/mob_spawn/corpse/human/shipwrecker/boss
	name = "Shipwrecker Commander"
	outfit = /datum/outfit/shipwrecker/officer/boss/blackskull

/datum/outfit/shipwrecker/officer/boss/blackskull
	head = /obj/item/clothing/head/helmet/shipwrecker/officer
	suit = /obj/item/clothing/suit/armor/shipwrecker/officer

/datum/outfit/shipwrecker/officer/boss/blackskull/post_equip(mob/living/carbon/human/wrecker, visuals_only = FALSE)
	if(visuals_only)
		return
	var/obj/item/organ/heart/cybernetic/tier2/newheart = new()
	newheart.Insert(wrecker, movement_flags = DELETE_IF_REPLACED)
	var/obj/item/organ/eyes/robotic/shield/neweyes = new()
	neweyes.Insert(wrecker, movement_flags = DELETE_IF_REPLACED)
	var/obj/item/organ/stomach/cybernetic/tier2/newgut = new()
	newgut.Insert(wrecker, movement_flags = DELETE_IF_REPLACED)
	var/obj/item/organ/tongue/robot/newtongue = new()
	newtongue.Insert(wrecker, movement_flags = DELETE_IF_REPLACED)
	var/obj/item/bodypart/leg/right/robot/advanced/newrightleg = new()
	newrightleg.try_attach_limb(wrecker)
	var/obj/item/bodypart/arm/right/robot/advanced/newrightarm = new()
	newrightarm.try_attach_limb(wrecker)

