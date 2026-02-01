/obj/item/gun/ballistic/lever_action
	name = "lever action gun"
	desc = "A gun that you have to chamber between every shot. This gun is error."
	w_class = WEIGHT_CLASS_BULKY
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/boltaction
	bolt_wording = "lever"
	bolt_type = BOLT_TYPE_LOCKING
	semi_auto = FALSE
	weapon_weight = WEAPON_HEAVY
	internal_magazine = TRUE
	fire_sound = 'sound/items/weapons/gun/general/heavy_shot_suppressed.ogg'
	fire_sound_volume = 74
	rack_sound = 'sound/items/weapons/gun/general/chunkyrack.ogg'
	drop_sound = 'sound/items/handling/gun/ballistics/rifle/rifle_drop1.ogg'
	pickup_sound = 'sound/items/handling/gun/ballistics/rifle/rifle_pickup1.ogg'
	tac_reloads = FALSE

/obj/item/gun/ballistic/lever_action/karrak
	name = "L08 Karrak laser rifle"
	desc = "An old fashioned bullpup lasergun. Uses Type-K ammunition."
	icon_state = "karrak"
	inhand_icon_state = "karrak"
	icon = 'icons/obj/weapons/guns/wide_guns.dmi'
	w_class = WEIGHT_CLASS_BULKY
	cartridge_wording = "capacitor"
	internal_magazine = FALSE
	casing_ejector = FALSE
	force = 14
	accepted_magazine_type = /obj/item/ammo_box/magazine/karrak
	bolt_type =  BOLT_TYPE_STANDARD
	light_time = 0.2 SECONDS
	drop_sound = 'sound/items/handling/gun/ballistics/smg/smg_drop1.ogg'
	pickup_sound = 'sound/items/handling/gun/ballistics/smg/smg_pickup1.ogg'
	custom_materials = list(/datum/material/plastic = SHEET_MATERIAL_AMOUNT * 4,/datum/material/iron = SHEET_MATERIAL_AMOUNT * 2.5,/datum/material/glass = HALF_SHEET_MATERIAL_AMOUNT,)
	tac_reloads = TRUE

/obj/item/gun/ballistic/lever_action/karrak/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("It bears the Karrak Industries logo. [EXAMINE_HINT("Examine closely")] to learn more."), \
		lore = "The L08  Karrak Semi-Automatic Light Ray Cannon was produced by Karrak Industries from 2381 until the corporation's liquidation in 2428.<br>\
		The L08 was the first photon-based firearm to see widespread use in state conflicts, most famously during the late Human-Lizard wars.<br>\
		The L08's lack of fully automatic fire and its reliance on single-use capacitor cells led to its swift decline in popularity upon the invention of NT's rechargable internal laser capacitors.<br>\
		Commonly called a 'Karrak rifle', despite not technically being a rifle." \
	)

/obj/item/gun/ballistic/lever_action/karrak/carbine
	name = "L10 Karrak laser carbine"
	desc = "An old fashioned lasergun with a foldable stock for easy storage. Uses Type-K ammunition."
	icon_state = "karrak_carbine"
	inhand_icon_state = "karrak_carbine"
	projectile_damage_multiplier = 0.86
	force = 10
	can_be_sawn_off = TRUE
	sawn_desc = "An unwieldy field-modified lasergun. Uses Type-K ammunition."

/obj/item/gun/ballistic/lever_action/karrak/carbine/sawoff(mob/user)
	. = ..()
	if(.)
		name = "L10 Karrak short carbine"

/obj/item/gun/ballistic/lever_action/karrak/carbine/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("It bears the Karrak Industries logo. [EXAMINE_HINT("Examine closely")] to learn more."), \
		lore = "The L10 Karrak Semi-Automatic Light Ray Cannon was produced by Karrak Industries from 2401 until the corporation's liquidation in 2428.<br>\
		The L10 was designed as a cut-down version of the earlier L08 design, significantly cheaper to produce and more compact.<br>\
		Largely considered inferior to its predecessor due its lower stopping power, a consequence of the reduced barrel length.\
		This model was manufactured in great numbers, but failed to see widespread military use. The L10 saw a brief period of popularity in the civilian market before it was overshadowed by the release of the NT Type 1 laser gun.\
		Its ubiquity and relatively compact design has made it primarily popular among planetary policing services, hab-block gangsters and frontier pirates. <br>\
		Commonly called a 'Karrak carbine', despite not technically being a carbine." \
	)
