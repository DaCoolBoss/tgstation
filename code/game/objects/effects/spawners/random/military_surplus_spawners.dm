//This file contains the random tables for military surplus crates
//
//Expected item drops for each crate:
//4.32x Clothing
//2.7x Armour
//1.94x Ammo
//1.44x Gadgets
//1.04x Gun

/obj/effect/spawner/random/mil_surplus
	//nine of these spawners in every military surplus crate
	name = "random military surplus stuff spawner"
	desc = "One or two pieces of equipment from the military surplus storehouses. \
	Quality and type of item may vary wildly. Caveat empor."
	icon_state = "lootdrop"
	spawn_loot_split = TRUE
	loot = list(
		/obj/effect/spawner/random/mil_surplus/armour = 20,
		/obj/effect/spawner/random/mil_surplus/clothing = 16,
		/obj/effect/spawner/random/mil_surplus/clothing/double = 16,
		/obj/effect/spawner/random/mil_surplus/gadgets = 16,
		/obj/effect/spawner/random/mil_surplus/armour/double = 10,
		/obj/effect/spawner/random/mil_surplus/ammo = 10,
		/obj/effect/spawner/random/mil_surplus/ammo/double = 6,
		/obj/effect/spawner/random/mil_surplus/guncases = 6,
	)

/obj/effect/spawner/random/mil_surplus/armour
	name = "military surplus armour spawner"
	desc = "A random piece of military-grade protective gear. It might save your life!"
	icon_state = "bulletproof_armor"
	loot = list(
		/obj/item/clothing/suit/armor/vest/russian = 20,
		/obj/item/clothing/head/helmet/rus_helmet = 20,
		/obj/item/clothing/head/helmet/rus_ushanka = 12,
		/obj/item/clothing/suit/armor/vest/russian_coat = 12,
		/obj/item/clothing/head/helmet/army = 8,
		/obj/item/clothing/suit/armor/vest/alt = 8,
		/obj/item/clothing/suit/armor/vest/army = 8,
		/obj/item/clothing/head/helmet/military = 5,
		/obj/item/clothing/suit/armor/vest/military = 5,
		/obj/item/clothing/head/helmet/army/grey = 4,
		/obj/item/clothing/suit/armor/bulletproof = 3,
		/obj/item/clothing/suit/armor/vest/army/grey = 3,
		/obj/item/clothing/mask/ballistic = 1.9,
		/obj/item/clothing/shoes/combat = 1.9,
		/obj/item/clothing/suit/armor/laserproof = 1,
		/obj/item/clothing/suit/armor/vest/marine/pmc = 0.2,
	)

/obj/effect/spawner/random/mil_surplus/armour/double
	name = "double military surplus armour spawner"
	desc = "Spawns two random bits of armour. Maybe they will match, maybe they won't."
	spawn_loot_count = 2

/obj/effect/spawner/random/mil_surplus/clothing
	name = "military surplus clothing spawner"
	desc = "Spawns a random bit of old military clothing."
	icon_state = "syndicate"
	loot = list(
		/obj/effect/spawner/random/mil_surplus/clothing/camo = 20,
		/obj/item/clothing/under/syndicate/rus_army = 20,
		/obj/item/clothing/shoes/jackboots = 10.5,
		/obj/item/clothing/shoes/russian = 10.5,
		/obj/item/clothing/mask/gas/atmos/russian = 10,
		/obj/item/clothing/gloves/color/black = 7,
		/obj/item/clothing/mask/russian_balaclava = 6,
		/obj/item/clothing/head/costume/ushanka = 5,
		/obj/item/clothing/under/costume/soviet = 5,
		/obj/item/clothing/under/syndicate/combat = 5,
		/obj/item/clothing/mask/balaclava = 4,
		/obj/item/clothing/under/syndicate/soviet = 3,
		/obj/item/clothing/suit/jacket/bomber = 2,
		/obj/item/clothing/head/beret/militia = 2,
		/obj/item/clothing/suit/jacket/miljacket = 2,
		/obj/item/clothing/suit/toggle/jacket/trenchcoat = 1,
		/obj/item/clothing/head/soft/veteran = 1,
		/obj/item/clothing/under/pants/camo = 0.45,
		/obj/item/clothing/under/syndicate/tacticool = 0.45,
		/obj/item/clothing/under/syndicate = 0.05,
		/obj/item/clothing/under/suit/navy = 0.05,
	)

/obj/effect/spawner/random/mil_surplus/clothing/double
	name = "double military surplus clothing spawner"
	desc = "Spawns two military surplus clothing items. Perfect for quickly filling a punk's wardrobe."
	spawn_loot_count = 2

/obj/effect/spawner/random/mil_surplus/clothing/camo
	name = "camouflage uniform spawner"
	desc = "Chances are, one of these will match your surroundings."
	loot = list(
	/obj/item/clothing/under/syndicate/camo = 60,
	/obj/item/clothing/under/syndicate/camo/tan = 20,
	/obj/item/clothing/under/syndicate/camo/grey = 20,
	)

/obj/effect/spawner/random/mil_surplus/gadgets
	name = "military surplus gadget spawner"
	desc = "Militaria. The debris left behind by the ever-churning wheels of war. This stuff is all very collectable!"
	icon_state = "dice"
	loot = list(
		/obj/item/gun_maintenance_supplies = 25,
		/obj/item/food/rationpack = 25,
		/obj/item/clothing/gloves/tackler/combat = 10,
		/obj/item/storage/belt/military/assault = 8,
		/obj/item/clothing/accessory/antique_medal/bronze = 5,
		/obj/item/reagent_containers/cup/glass/flask = 5,
		/obj/item/knife/combat = 2,
		/obj/item/storage/belt/military/army = 2,
		/obj/item/spess_knife = 2,
		/obj/item/grenade/frag/dusty = 2,
		/obj/item/bear_armor = 2,
		/obj/item/clothing/accessory/antique_medal/silver = 2,
		/obj/item/knife/combat/survival = 2,
		/obj/item/trench_tool = 1,
		/obj/item/spear/military = 1,
		/obj/item/lighter = 1,
		/obj/item/reagent_containers/cup/glass/flask = 1,
		/obj/item/storage/box/emptysandbags = 1,
		/obj/item/storage/belt/bandolier = 0.5,
		/obj/item/clothing/accessory/antique_medal/gold = 0.35,
		/obj/item/melee/sabre/cavalry = 0.05,
		/obj/item/book/granter/crafting_recipe/dusting/laser_musket_prime = 0.05,
		/obj/item/book/granter/crafting_recipe/dusting/smoothbore_disabler_prime = 0.05,
	)

/obj/effect/spawner/random/mil_surplus/guncases
	name = "military surplus gun spawner"
	desc = "Oh boy, now we're talking! This bad boy will spawn a GUN!"
	icon_state = "shotgun"
	loot = list(
		/obj/item/storage/toolbox/guncase/soviet/unreliable = 28,
		/obj/item/storage/toolbox/guncase/karrak/unreliable = 25,
		/obj/item/storage/toolbox/guncase/ripper/antique = 17,
		/obj/item/storage/toolbox/guncase/soviet = 10,
		/obj/item/storage/toolbox/guncase/karrak = 9.75,
		/obj/item/storage/toolbox/guncase/ripper = 4.75,
		/obj/item/storage/toolbox/guncase/donkmusket = 4.95,
		/obj/item/storage/toolbox/guncase/soviet/sks = 0.5,
		/obj/item/gun/ballistic/automatic/pistol/m1911 = 0.05,
	)

/obj/effect/spawner/random/mil_surplus/guncases/fifty_percent_spawnrate
	//one of these spawners in every military surplus crate
	name = "50/50 military surplus gun spawner (or nothing)"
	desc = "Only spawns a gun case 50% of the time. What a rip!"
	spawn_loot_chance = 50

/obj/effect/spawner/random/mil_surplus/ammo
	name = "military surplus ammo spawner"
	desc = "Spawns some military surplus ammo. If you're lucky, it might fit your gun."
	icon_state = "junkround"
	loot = list(
		/obj/effect/spawner/random/mil_surplus/ammo/strilka310/box = 20,
		/obj/effect/spawner/random/mil_surplus/ammo/karrak/box = 20,
		/obj/effect/spawner/random/mil_surplus/ammo/strilka310 = 10,
		/obj/effect/spawner/random/mil_surplus/ammo/karrak/clip = 10,
		/obj/effect/spawner/random/mil_surplus/ammo/ripslug/clip = 25,
		/obj/effect/spawner/random/mil_surplus/ammo/donk = 14,
		/obj/item/storage/box/donkpockets/donkpocketshell = 1,
	)

/obj/effect/spawner/random/mil_surplus/ammo/double
	name = "double military surplus ammo spawner"
	desc = "lods of eammo"
	spawn_loot_count = 2

/obj/effect/spawner/random/mil_surplus/ammo/donk
	name = "donk musket ammo spawner"
	desc = "Spawns a loose piece of random ammo for the Donk Musket. The Musket can use a variety of rounds, some more useful than others."
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
	name = "moist .310 Strilka bullet spawner"
	desc = "Spawns a single, soggy, Strilka round."
	loot = list(
		/obj/item/ammo_casing/strilka310/degraded = 70,
		/obj/item/ammo_casing/strilka310 = 30,
	)

/obj/effect/spawner/random/mil_surplus/ammo/strilka310/box
	name = "moist .310 Strilka ammo box spawner"
	desc = "Spawns a Strilka ammo box. Inspect for signs of rust before using."
	loot = list(
		/obj/item/storage/toolbox/ammobox/strilka310/rusty = 55,
		/obj/item/storage/toolbox/ammobox/strilka310 = 30,
		/obj/item/storage/toolbox/ammobox/strilka310/really_rusty = 15,
	)

/obj/effect/spawner/random/mil_surplus/ammo/strilka310/clip
	name = "moist .310 Strilka stripper clip spawner"
	desc = "Spawns a Strilka clip. May have water damage."
	loot = list(
		/obj/item/ammo_box/speedloader/strilka310/degraded = 70,
		/obj/item/ammo_box/speedloader/strilka310 = 30,
	)

/obj/effect/spawner/random/mil_surplus/ammo/karrak
	name = "old series k laser round spawner"
	desc = "Spawns a loose round of ammo for the Karrak rifle. A lot of the old ones are duds."
	loot = list(
		/obj/item/ammo_casing/karrak_laser/degraded = 60,
		/obj/item/ammo_casing/karrak_laser = 35,
		/obj/item/ammo_casing/karrak_laser/spent = 5,
	)

/obj/effect/spawner/random/mil_surplus/ammo/karrak/box
	name = "old series k ammo box spawner"
	desc = "Spawns an old box of ammo for the Karrak rifle. These things degrade over time, and the boxes look pretty old..."
	loot = list(
		/obj/item/storage/toolbox/ammobox/karrak/degraded = 55,
		/obj/item/storage/toolbox/ammobox/karrak = 35,
		/obj/item/storage/toolbox/ammobox/karrak/really_degraded = 10,
	)

/obj/effect/spawner/random/mil_surplus/ammo/karrak/clip
	name = "old series k clip spawner"
	desc = "Spawns a clip of Karrak rifle ammo."
	loot = list(
		/obj/item/ammo_box/magazine/karrak/unreliable = 35,
		/obj/item/ammo_box/magazine/karrak = 35,
		/obj/item/ammo_box/magazine/karrak/really_unreliable = 30,
	)

/obj/effect/spawner/random/mil_surplus/ammo/ripslug
	name = "ripslug case spawner"
	desc = "Spawns a ripslug. Can either be lead or bone."
	loot = list(
		/obj/item/ammo_casing/ripperslug/bone = 60,
		/obj/item/ammo_casing/ripperslug = 40,
	)

/obj/effect/spawner/random/mil_surplus/ammo/ripslug/clip
	name = "ripslug can spawner"
	desc = "Spawns a can of ripslugs. Can either be lead or bone."
	loot = list(
		/obj/item/ammo_box/speedloader/ripperslug/bone = 60,
		/obj/item/ammo_box/speedloader/ripperslug = 40,
	)
