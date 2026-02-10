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
	base_icon_state = "karrak"
	inhand_icon_state = "karrak"
	worn_icon_state = "karrak"
	icon = 'icons/obj/weapons/guns/wide_guns.dmi'
	slot_flags = ITEM_SLOT_BACK
	cartridge_wording = "capacitor"
	bolt_wording = "chamber"
	internal_magazine = FALSE
	casing_ejector = FALSE
	fire_sound = 'sound/items/weapons/gun/general/heavy_shot_suppressed.ogg'
	fire_sound_volume = 110
	force = 14
	accepted_magazine_type = /obj/item/ammo_box/magazine/karrak
	bolt_type =  BOLT_TYPE_STANDARD
	light_time = 0.2 SECONDS
	drop_sound = 'sound/items/handling/gun/ballistics/smg/smg_drop1.ogg'
	pickup_sound = 'sound/items/handling/gun/ballistics/smg/smg_pickup1.ogg'
	custom_materials = list(/datum/material/plastic = SHEET_MATERIAL_AMOUNT * 4,/datum/material/iron = SHEET_MATERIAL_AMOUNT * 2.5,/datum/material/glass = HALF_SHEET_MATERIAL_AMOUNT,)
	obj_flags = null
	tac_reloads = TRUE
	var/deep_lore = "The L08 Karrak Lever Action Light Ray Cannon was produced by Karrak Industries from 2381 until the corporation's liquidation in 2428. <br>\
		The L08 was the first photon-based firearm to see widespread use in state conflicts, most famously during the late Human-Lizard wars. <br>\
		The L08's lack of fully automatic fire and its reliance on single-use capacitor cells led to its swift decline in popularity upon the invention of NT's rechargable internal laser capacitors. <br>\
		Commonly called a 'Karrak rifle', despite not technically being a rifle."

/obj/item/gun/ballistic/lever_action/karrak/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/update_icon_updates_onmob)
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("It bears the Karrak Industries logo. [EXAMINE_HINT("Examine closely")] to learn more."), \
		lore = deep_lore \
	)

/obj/item/gun/ballistic/lever_action/karrak/update_icon_state()
	. = ..()
	var/updated_icon = "[base_icon_state]"
	if(sawn_off)
		updated_icon = "[updated_icon]" + "_sawn"
	if(!magazine)
		updated_icon = "[updated_icon]" + "-nomag"
	inhand_icon_state = updated_icon

/obj/item/gun/ballistic/lever_action/karrak/carbine
	name = "L10 Karrak laser carbine"
	desc = "An old fashioned lasergun with a foldable safety stock for easy storage. Uses Type-K ammunition."
	base_icon_state = "karrak_carbine"
	icon_state = "karrak_carbine"
	inhand_icon_state = "karrak_carbine"
	worn_icon_state = "karrak_carbine"
	fire_sound_volume = 95
	projectile_damage_multiplier = 0.86
	force = 10
	can_be_sawn_off = TRUE
	sawn_desc = "An unwieldy field-modified lasergun. Uses Type-K ammunition."
	//if the stock is folded this variable is TRUE, gun can't fire in this state
	var/is_stock_folded = FALSE
	deep_lore = "The L10 Karrak Lever Action Light Ray Cannon was produced by Karrak Industries from 2401 until the corporation's liquidation in 2428. <br>\
		The L10 was designed as a cut-down version of the earlier L08 design, significantly cheaper to produce and more compact. <br>\
		Largely considered inferior to its predecessor due its lower stopping power, a consequence of the reduced barrel length. <br>\
		This model was manufactured in great numbers, but failed to see widespread military use. The L10 saw a brief period of popularity in the civilian market before it was overshadowed by the release of the NT Type 1 laser gun. <br>\
		Its ubiquity and relatively compact design has made it primarily popular among planetary policing services, hab-block gangsters and frontier pirates. <br>\
		Commonly called a 'Karrak carbine', despite not technically being a carbine."

/obj/item/gun/ballistic/lever_action/karrak/carbine/sawoff(mob/user)
	. = ..()
	if(.)
		name = "L10 Karrak short carbine"
		base_icon_state = "karrak_carbine"
		icon_state = "karrak_carbine_sawn"
		inhand_icon_state = "karrak_carbine_sawn"
		worn_icon_state = "karrak_carbine_sawn"
		is_stock_folded = FALSE
		update_appearance()

/obj/item/gun/ballistic/lever_action/karrak/carbine/blow_up(mob/user)
	return FALSE //stops this firing in your face when you saw it while loaded, since you're sawing the stock and not the barrel

/obj/item/gun/ballistic/lever_action/karrak/carbine/attack_hand(mob/user, list/modifiers)
	var/is_right_clicking = LAZYACCESS(modifiers, RIGHT_CLICK)
	if (is_right_clicking && !sawn_off)
		click_alt(user)
		return ITEM_INTERACT_BLOCKING
	. = ..()

/obj/item/gun/ballistic/lever_action/karrak/carbine/click_alt(mob/user)
	//alt+clicking the gun flips the stock up or down
	if(sawn_off)
		return CLICK_ACTION_SUCCESS
	if(loc != user || !(src in user.held_items))
		user.balloon_alert(user, "must be holding!")
		return CLICK_ACTION_BLOCKING
	if(is_stock_folded)
		balloon_alert(user, "unfolding stock...")
		playsound(src, 'sound/items/tools/ratchet_fast.ogg', vol = 70, vary = TRUE,)
		if(do_after(user, 3.5 SECONDS))
			playsound(src, 'sound/effects/structure_stress/pop3.ogg', vol = 90, vary = TRUE,)
			is_stock_folded = FALSE
			base_icon_state = "karrak_carbine"
			icon_state = "karrak_carbine"
			inhand_icon_state = "karrak_carbine"
			worn_icon_state = "karrak_carbine"
			w_class = WEIGHT_CLASS_BULKY
			slot_flags = ITEM_SLOT_BACK
			update_appearance()
		else return CLICK_ACTION_BLOCKING
	else
		balloon_alert(user, "folding stock...")
		playsound(src, 'sound/items/tools/ratchet_slow.ogg', vol = 70, vary = TRUE,)
		if(do_after(user, 3.5 SECONDS))
			playsound(src, 'sound/effects/structure_stress/pop1.ogg', vol = 80, vary = TRUE,)
			is_stock_folded = TRUE
			base_icon_state = "karrak_carbine_folded"
			icon_state = "karrak_carbine_folded"
			inhand_icon_state = "karrak_carbine_folded"
			worn_icon_state = "karrak_carbine_folded"
			w_class = WEIGHT_CLASS_NORMAL
			slot_flags = ITEM_SLOT_BELT
			update_appearance()
		else return CLICK_ACTION_BLOCKING
	return CLICK_ACTION_SUCCESS

/obj/item/gun/ballistic/lever_action/karrak/carbine/try_fire_gun(atom/target, mob/living/user, params)
	if(is_stock_folded && !sawn_off)
		balloon_alert(user, "can't fire with folded stock!")
		return FALSE
	. = ..()
