

/datum/outfit/echolocator
	name = "Bitrunning Echolocator"
	glasses = /obj/item/clothing/glasses/blindfold
	ears = /obj/item/radio/headset/psyker //Navigating without these is horrible.
	uniform = /obj/item/clothing/under/abductor
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/jacket/trenchcoat
	id = /obj/item/card/id/advanced


/datum/outfit/echolocator/post_equip(mob/living/carbon/human/user, visualsOnly)
	. = ..()
	user.psykerize()


/datum/outfit/bitductor
	name = "Bitrunning Abductor"
	uniform = /obj/item/clothing/under/abductor
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots


/datum/outfit/beachbum_combat
	name = "Beachbum: Island Combat"
	id = /obj/item/card/id/advanced
	l_pocket = null
	r_pocket = null
	shoes = /obj/item/clothing/shoes/sandal
	uniform = /obj/item/clothing/under/pants/jeans
	/// Available ranged weapons
	var/list/ranged_weaps = list(
		/obj/item/gun/ballistic/automatic/pistol,
		/obj/item/gun/ballistic/rifle/boltaction,
		/obj/item/gun/ballistic/automatic/mini_uzi,
		/obj/item/gun/ballistic/automatic/pistol/deagle,
		/obj/item/gun/ballistic/rocketlauncher/unrestricted,
		/obj/item/gun/ballistic/automatic/ar,

	)
	/// Corresponding ammo
	var/list/corresponding_ammo = list(
		/obj/item/ammo_box/magazine/m9mm,
		/obj/item/ammo_box/strilka310,
		/obj/item/ammo_box/magazine/uzim9mm,
		/obj/item/ammo_box/magazine/m50,
		/obj/item/food/pizzaslice/dank, // more silly, less destructive
		/obj/item/ammo_box/magazine/m223,
	)


/datum/outfit/beachbum_combat/post_equip(mob/living/carbon/human/bum, visualsOnly)
	. = ..()

	var/choice = rand(1, length(ranged_weaps))
	var/weapon = ranged_weaps[choice]
	bum.put_in_active_hand(new weapon)

	var/ammo = corresponding_ammo[choice]
	var/obj/item/ammo1 = new ammo
	var/obj/item/ammo2 = new ammo

	if(!bum.equip_to_slot_if_possible(new ammo, ITEM_SLOT_LPOCKET))
		ammo1.forceMove(get_turf(bum))
	if(!bum.equip_to_slot_if_possible(new ammo, ITEM_SLOT_RPOCKET))
		ammo2.forceMove(get_turf(bum))

	if(prob(50))
		bum.equip_to_slot_if_possible(new /obj/item/clothing/glasses/sunglasses, ITEM_SLOT_EYES)

/datum/outfit/big_game_hunter
	name = "Big Game Hunter" //Did someone say... gaming?
	head = /obj/item/clothing/head/helmet/pith
	uniform = /obj/item/clothing/under/costume/buttondown/slacks
	suit = /obj/item/clothing/suit/jacket/curator
	gloves = /obj/item/clothing/gloves/color/brown
	shoes = /obj/item/clothing/shoes/laceup
	back = /obj/item/storage/backpack/satchel/leather

/datum/outfit/big_game_hunter/pre_equip(mob/living/carbon/human/agent, visualsOnly = FALSE)
	if(visualsOnly)
		return
	if(prob(60))
		accessory = pick_weight(list(
			/obj/item/clothing/accessory/waistcoat = 3,
			/obj/item/clothing/accessory/medal/silver/valor = 1,
			/obj/item/clothing/accessory/medal/bronze_heart = 1,
			/obj/item/clothing/accessory/medal/gold = 1,

		))
	if(prob(50))
		glasses = /obj/item/clothing/glasses/monocle
	if(prob(40))
		mask = pick_weight(list(/obj/item/clothing/mask/cigarette/pipe= 4, /obj/item/clothing/mask/fakemoustache = 1))

