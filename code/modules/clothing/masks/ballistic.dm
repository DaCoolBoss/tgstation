/obj/item/clothing/mask/ballistic
	name = "ballistic mask"
	desc = "A carbon fiber mask for deflecting bullets away from your face. Obstructs peripheral vision."
	icon = 'icons/map_icons/clothing/mask.dmi'
	icon_state = "ballistic"
	inhand_icon_state = "greyscale_bandana"
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
	bullet = 10
	bomb = 20
	wound = 10
