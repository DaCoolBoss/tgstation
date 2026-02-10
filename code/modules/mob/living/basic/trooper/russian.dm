/// Russian trooper subtype
/mob/living/basic/trooper/russian
	name = "Russian Mobster"
	desc = "An individual dressed in the uniform of the Russian Space Mob. They have a knife, and look pretty mean!"
	speed = 1.2
	melee_damage_lower = 14
	melee_damage_upper = 16
	unsuitable_cold_damage = 0
	unsuitable_heat_damage = 3
	faction = list(FACTION_RUSSIAN)
	attack_verb_continuous = "slashes"
	attack_verb_simple = "slash"
	attack_sound = 'sound/items/weapons/bladeslice.ogg'
	attack_vis_effect = ATTACK_EFFECT_SLASH
	initial_language_holder = /datum/language_holder/spinwarder_exclusive
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian
	r_hand = /obj/item/knife/combat/survival
	corpse = /obj/effect/mob_spawn/corpse/human/russian
	loot = list(/obj/item/knife/combat/survival)

/mob/living/basic/trooper/russian/armoured
	name = "Russian Trooper"
	desc = "An individual dressed in the uniform and armour of the Russian Space Militia. They have a knife, and look aggressive!"
	speed = 1.1
	armor_type = /datum/armor/vest_russian
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian/armoured
	corpse = /obj/effect/mob_spawn/corpse/human/russian/armoured

/mob/living/basic/trooper/russian/ranged
	name = "Russian Trooper"
	desc = "An individual dressed in the uniform and armour of the Russian Space Militia. They have a gun!"
	speed = 1.05
	armor_type = /datum/armor/vest_russian
	ai_controller = /datum/ai_controller/basic_controller/trooper/ranged
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian/armoured
	r_hand = /obj/item/gun/ballistic/rifle/boltaction/surplus
	loot = list(/obj/item/gun/ballistic/rifle/boltaction/surplus)
	corpse = /obj/effect/mob_spawn/corpse/human/russian/armoured
	var/projectiletype = /obj/projectile/bullet/strilka310/degraded
	var/casingtype = null
	var/projectilesound = 'sound/items/weapons/gun/rifle/shot_heavy.ogg'
	var/shoot_cooldown = 2 SECONDS

/mob/living/basic/trooper/russian/ranged/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ranged_attacks, projectile_type = projectiletype, casing_type = casingtype, projectile_sound = projectilesound, cooldown_time = shoot_cooldown)

/mob/living/basic/trooper/russian/ranged_elite
	name = "Russian Veteran"
	desc = "An individual dressed in the uniform and armour of the Russian Space Militia. They have a gun!"
	speed = 1.1
	armor_type = /datum/armor/armor_bulletproof
	maxHealth = 120
	health = 120
	ai_controller = /datum/ai_controller/basic_controller/trooper/ranged
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian/elite
	r_hand = /obj/item/gun/ballistic/revolver/nagant
	corpse = /obj/effect/mob_spawn/corpse/human/russian/elite
	loot = list(/obj/item/gun/ballistic/revolver/nagant)
	var/casingtype = /obj/item/ammo_casing/n762
	var/projectilesound = 'sound/items/weapons/gun/revolver/shot.ogg'
	var/shoot_cooldown = 1 SECONDS

/mob/living/basic/trooper/russian/ranged_elite/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ranged_attacks, casing_type = casingtype, projectile_sound = projectilesound, cooldown_time = shoot_cooldown)

/mob/living/basic/trooper/russian/ranged/ranged_elite/no_weapon_drop
	loot = null

/mob/living/basic/trooper/russian/soviet
	name = "Soviet Soldier"
	desc = "For the motherland!"
	speed = 1.15
	melee_damage_lower = 13
	melee_damage_upper = 18
	mob_spawner = /obj/effect/mob_spawn/corpse/human/soviet
	r_hand = /obj/item/crowbar/hammer
	corpse = /obj/effect/mob_spawn/corpse/human/soviet
	loot = list(/obj/item/crowbar/hammer)
	attack_verb_continuous = "smashes"
	attack_verb_simple = "smash"
	attack_sound = 'sound/items/weapons/genhit2.ogg'
	attack_vis_effect = ATTACK_EFFECT_SMASH

/mob/living/basic/trooper/russian/soviet/ranged
	speed = 1
	armor_type = /datum/armor/suit_armor
	ai_controller = /datum/ai_controller/basic_controller/trooper/ranged
	r_hand = /obj/item/gun/ballistic/rifle/boltaction/surplus
	loot = list(/obj/item/gun/ballistic/rifle/boltaction/surplus)
	mob_spawner = /obj/effect/mob_spawn/corpse/human/soviet/armoured
	corpse = /obj/effect/mob_spawn/corpse/human/soviet/armoured
	///The type of projectile that fires from attacks.
	var/projectiletype = /obj/projectile/bullet/strilka310/degraded
	var/projectilesound = 'sound/items/weapons/gun/rifle/shot_heavy.ogg'
	var/shoot_cooldown = 2 SECONDS

/mob/living/basic/trooper/russian/soviet/ranged/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ranged_attacks, projectile_type = projectiletype, projectile_sound = projectilesound, cooldown_time = shoot_cooldown)

/mob/living/basic/trooper/russian/soviet/ranged_elite
	name = "Soviet Officer"
	speed = 1.1
	armor_type = /datum/armor/vest_russian_coat
	maxHealth = 120
	health = 120
	ai_controller = /datum/ai_controller/basic_controller/trooper/ranged
	mob_spawner = /obj/effect/mob_spawn/corpse/human/soviet/officer
	r_hand = /obj/item/gun/ballistic/automatic/pistol
	corpse = /obj/effect/mob_spawn/corpse/human/soviet/officer
	loot = list(/obj/item/gun/ballistic/revolver/nagant)
	var/casingtype = /obj/item/ammo_casing/n762
	var/projectilesound = 'sound/items/weapons/gun/revolver/shot.ogg'
	var/shoot_cooldown = 1 SECONDS

/mob/living/basic/trooper/russian/soviet/ranged_elite/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ranged_attacks, casing_type = casingtype, projectile_sound = projectilesound, cooldown_time = shoot_cooldown)


/mob/living/basic/trooper/russian/soviet/ranged_elite/no_weapon_drop
	loot = null
