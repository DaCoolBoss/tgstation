

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

/datum/outfit/big_game_hunter
	name = "Big Game Hunter"
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
	if(prob(25))
		mask = /obj/item/clothing/mask/cigarette/pipe
