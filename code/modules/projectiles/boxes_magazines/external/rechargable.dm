/obj/item/ammo_box/magazine/recharge
	name = "power pack"
	desc = "A rechargeable, detachable battery that serves as a magazine for laser rifles."
	icon_state = "oldrifle-20"
	base_icon_state = "oldrifle"
	ammo_type = /obj/item/ammo_casing/laser
	caliber = CALIBER_LASER
	max_ammo = 20

/obj/item/ammo_box/magazine/recharge/update_desc()
	. = ..()
	desc = "[initial(desc)] It has [stored_ammo.len] shot\s left."

/obj/item/ammo_box/magazine/recharge/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 4)]"

/obj/item/ammo_box/magazine/recharge/attack_self() //No popping out the "bullets"
	return

/obj/item/ammo_box/magazine/recharge/plasma
	name = "plasma pack"
	desc = "A rechargeable, detachable plasma battery that serves as a magazine for Cybersun plasma guns. Do not pierce or overheat."
	max_integrity = 80
	max_ammo = 36
	ammo_type = /obj/item/ammo_casing/energy/lasergun/cybersun
	custom_materials = list(/datum/material/alloy/plastitanium=HALF_SHEET_MATERIAL_AMOUNT,/datum/material/plasma=SMALL_MATERIAL_AMOUNT)
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	icon_state = "plasmapack"
	base_icon_state = "plasmapack"

/obj/item/ammo_box/magazine/recharge/plasma/emp_act(severity)
	. = ..()
	if(!(. & EMP_PROTECT_CONTENTS))
		var/obj/item/ammo_casing/casing = get_round()
		while(casing)
			if(prob(20))
				qdel(casing)
		update_appearance()

/obj/item/ammo_box/magazine/recharge/plasma/Destroy()
	explosion(src, heavy_impact_range = 1, light_impact_range = rand(1,3), flame_range = rand(3,4), flash_range = rand(0,2), adminlog = TRUE)
	return ..()
