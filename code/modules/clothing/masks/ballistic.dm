/obj/item/clothing/mask/ballistic
	name = "ballistic mask"
	desc = "A carbon fiber mask for deflecting bullets away from your face. Obstructs peripheral vision."
	icon_state = "ballistic"
	inhand_icon_state = "ballistic"
	flags_cover = MASKCOVERSMOUTH
	flags_inv = HIDEFACE|HIDEFACIALHAIR|HIDESNOUT
	visor_flags_inv = HIDEFACE|HIDEFACIALHAIR|HIDESNOUT
	visor_flags_cover = MASKCOVERSMOUTH
	slot_flags = ITEM_SLOT_MASK
	armor_type = /datum/armor/ballistic_mask

/obj/item/clothing/mask/ballistic/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/clothing_fov_visor, FOV_90_DEGREES)

/datum/armor/ballistic_mask
	melee = 10
	bullet = 20
	laser = 10
	bomb = 10
	wound = 10
