//Expected outcomes for each Mil Surplus crate:
//4.95x Clothing
//3.6x Armour
//1.8x Ammo
//1.35x Gadgets
//0.95x Gun


//This spawns 9 times in a surplus box
/obj/effect/spawner/random/mil_surplus
	name = "random military surplus stuff spawner"
	desc = "Stuff that's been in some military storehouse for at least a couple of decades."
	icon_state = "pistol"
	loot = list(												//expected drops per crate:
		/obj/effect/spawner/random/mil_surplus/armour = 20, 			//1.8
		/obj/effect/spawner/random/mil_surplus/clothing/double = 20,	//1.8
		/obj/effect/spawner/random/mil_surplus/gadgets = 15,			//1.35
		/obj/effect/spawner/random/mil_surplus/clothing = 15, 			//1.35
		/obj/effect/spawner/random/mil_surplus/armour/double = 10, 		//0.9
		/obj/effect/spawner/random/mil_surplus/ammo = 10, 				//0.9
		/obj/effect/spawner/random/mil_surplus/ammo/double = 5, 		//0.45
		/obj/effect/spawner/random/mil_surplus/guncases = 5, 			//0.45
	)

/obj/effect/spawner/random/mil_surplus/armour
	name = "military surplus armour spawner"
	desc = "Don't tell the privates, but all their gear comes from Space Temu."
	loot = list(
		/obj/item/clothing/suit/armor/vest/russian = 20,				//0.72
		/obj/item/clothing/head/helmet/rus_helmet = 20,
		/obj/item/clothing/head/helmet/army = 10,
		/obj/item/clothing/head/helmet/army/alt = 5,
		/obj/item/clothing/suit/armor/vest/cuirass = 10,				//0.36
		/obj/item/clothing/head/helmet/rus_ushanka = 10,				//
		/obj/item/clothing/suit/armor/vest/russian_coat = 10,			//
		/obj/item/clothing/suit/armor/swat = 10,						//
		/obj/item/clothing/head/helmet/military = 5,					//
		/obj/item/clothing/suit/armor/bulletproof = 4,					//
		/obj/item/clothing/suit/armor/laserproof = 2,
		/obj/item/clothing/mask/ballistic = 2,
	)

/obj/effect/spawner/random/mil_surplus/armour/double
	spawn_loot_count = 2

/obj/effect/spawner/random/mil_surplus/clothing
	name = "military surplus clothing spawner"
	desc = "Old military clothing. This might be from a punk's wardrobe."
	icon_state = "pistol"
	loot = list(
		/obj/effect/spawner/random/mil_surplus/clothing/camo = 15,		//0.74
		/obj/item/clothing/under/syndicate/rus_army = 15,				//0.74
		/obj/item/clothing/gloves/color/black = 5,
		/obj/item/clothing/under/syndicate/combat = 5,					//
		/obj/item/clothing/mask/russian_balaclava = 5,					//0.25
		/obj/item/clothing/shoes/jackboots = 10,						//0.49
		/obj/item/clothing/shoes/russian = 10,							//0.49
		/obj/item/clothing/under/costume/soviet = 5,
		/obj/item/clothing/under/syndicate/camo = 15,					//0.74
		/obj/item/clothing/under/syndicate/rus_army = 15,
		/obj/item/clothing/head/costume/ushanka = 5,
		/obj/item/clothing/mask/balaclava = 2,
		/obj/item/clothing/head/soft/veteran = 2,
		/obj/item/clothing/suit/jacket/miljacket = 2,					//0.1
		/obj/item/clothing/suit/toggle/jacket/trenchcoat = 2,
	)

/obj/effect/spawner/random/mil_surplus/clothing/camo
	name = "camouflage uniform spawner"
	desc = "Chances are, one of these will match your surroundings. Eventually."
	loot = list(
	/obj/item/clothing/under/syndicate/camo = 40,
	/obj/item/clothing/under/syndicate/camo/desert = 20,
	/obj/item/clothing/under/syndicate/camo/snow = 20,
	/obj/item/clothing/under/syndicate/camo/ocean = 10,
	/obj/item/clothing/under/syndicate/camo/urban = 10,
	)

/obj/effect/spawner/random/mil_surplus/clothing/double
	spawn_loot_count = 2

/obj/effect/spawner/random/mil_surplus/gadgets
	name = "military surplus gadget spawner"
	desc = "Old military stuff."
	icon_state = "pistol"
	loot = list(
		/obj/item/gun_maintenance_supplies = 20,
		/obj/item/food/rationpack = 20,
		/obj/item/clothing/gloves/tackler/combat = 10,
		/obj/item/storage/belt/military/army = 10,
		/obj/item/clothing/accessory/medal = 5,
		/obj/item/knife/combat = 2,
		/obj/item/spess_knife = 2,
		/obj/item/grenade/frag/dusty = 2,
		/obj/item/bear_armor = 2,
		/obj/item/shovel,
	)

/obj/effect/spawner/random/mil_surplus/guncases
	name = "military surplus gun spawner"
	desc = "oh boy now we're talking"
	icon_state = "pistol"
	loot = list(
		/obj/item/storage/toolbox/guncase/soviet/unreliable = 25,
		/obj/item/storage/toolbox/guncase/krakgun/unreliable = 25,
		/obj/item/storage/toolbox/guncase/slugger/weaker = 20,
		/obj/item/storage/toolbox/guncase/soviet = 10,
		/obj/item/storage/toolbox/guncase/krakgun = 10,
		/obj/item/storage/toolbox/guncase/slugger = 5,
		/obj/item/storage/toolbox/guncase/donkmusket = 4.95,				//0.045
		/obj/item/gun/ballistic/automatic/pistol/m1911 = 0.05,				//0.0046
	)

/obj/effect/spawner/random/mil_surplus/guns/doesnt_spawn_half_the_time_bleedin_typical
	name = "50/50 military surplus gun spawner (or nothing)"
	desc = "what a rip!"
	spawn_loot_chance = 50

/obj/effect/spawner/random/mil_surplus/ammo
	name = "military surplus ammo spawner"
	desc = "You were issued some assorted loose ammo, soldier, it is YOUR duty to make it compatable with your gun! No excuses!"
	loot = list(
		/obj/effect/spawner/random/mil_surplus/ammo/strilka310 = 25,
		/obj/effect/spawner/random/mil_surplus/ammo/krak = 20,
		/obj/effect/spawner/random/mil_surplus/ammo/slugger = 15,
		/obj/effect/spawner/random/mil_surplus/ammo/donk = 15,
		/obj/item/ammo_casing,
	)

/obj/effect/spawner/random/mil_surplus/ammo/double
	spawn_loot_count = 2

/obj/effect/spawner/random/mil_surplus/ammo/krak
	name = "krak rifle ammo spawner"
	desc = "Spawns some ammo for the Krak Rifle. "

/obj/effect/spawner/random/mil_surplus/ammo/slugger
	name = "tirizan slugger ammo spawner"
	desc = "Spawns some ammo for the Tirizan Slugger. Traditionalists swear by the ancient tradition of firing ritually cured ripperslug shells, despite their inferiority to modern munitions."
	loot = list(
		/obj/item/shovel = 40,
	)

/obj/effect/spawner/random/mil_surplus/ammo/donk
	name = "donk musket ammo spawner"
	desc = "Spawns some ammo for the Donk Musket. The Musket can use a variety of rounds, some more useful than others."
	loot = list(
		/obj/item/ammo_casing/shotgun/flechette/donk = 40,
		/obj/item/ammo_casing/shotgun/flechette = 10,
		/obj/item/ammo_casing/junk = 10,
		/obj/item/ammo_casing/shotgun/incendiary = 10,
		/obj/item/ammo_casing/shotgun/buckshot = 10,
		/obj/item/ammo_casing/p50 = 10,
		/obj/item/ammo_casing/shotgun/rubbershot = 10,
	)

/obj/effect/spawner/random/mil_surplus/ammo/strilka310
	name = "moist .310 Strilka stripper clip spawner"
	desc = "Spawns some Strilka ammo. May have water damage."
	loot = list(
		/obj/item/ammo_box/speedloader/strilka310/degraded = 60,
		/obj/item/ammo_box/speedloader/strilka310 = 40,
	)

/obj/effect/spawner/random/mil_surplus/ammo/krak
	name = "old series k clip spawner"
	desc = "Spawns some Krak rifle ammo. These things get really unreliable with age."
	loot = list(
		/obj/item/ammo_box/magazine/krak/unreliable = 50,
		/obj/item/ammo_box/magazine/krak = 40,
		/obj/item/ammo_box/magazine/krak/really_unreliable = 10,
	)

/obj/effect/spawner/random/mil_surplus/ammo/krak/single
	name = "old series k laser round spawner"
	desc = "Spawns a loose round of ammo for the Krak rifle. A lot of the old ones are duds."
	loot = list(
		/obj/item/ammo_casing/krak_laser/degraded = 60,
		/obj/item/ammo_casing/krak_laser = 40,
	)

/obj/effect/spawner/random/mil_surplus/ammo/slugger
	name = "old series k laser round spawner"
	desc = "Spawns a loose round of ammo for the Krak rifle. A lot of the old ones are duds."
	loot = list(
		/obj/item/ammo_casing/krak_laser/degraded = 60,
		/obj/item/ammo_casing/krak_laser = 40,
	)
