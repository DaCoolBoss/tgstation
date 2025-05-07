/mob/living/basic/trooper
	icon = 'icons/mob/simple/simple_human.dmi'
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	sentience_type = SENTIENCE_HUMANOID
	maxHealth = 100
	health = 100
	basic_mob_flags = DEL_ON_DEATH
	speed = 1.1
	melee_damage_lower = 10
	melee_damage_upper = 10
	attack_verb_continuous = "punches"
	attack_verb_simple = "punch"
	attack_sound = 'sound/items/weapons/punch1.ogg'
	melee_attack_cooldown = 1.2 SECONDS
	combat_mode = TRUE
	unsuitable_atmos_damage = 7.5
	unsuitable_cold_damage = 7.5
	unsuitable_heat_damage = 7.5
	ai_controller = /datum/ai_controller/basic_controller/trooper

	/// Loot this mob drops on death.
	var/loot = list(/obj/effect/mob_spawn/corpse/human)
	/// Path of the mob spawner we base the mob's visuals off of.
	var/mob_spawner = /obj/effect/mob_spawn/corpse/human
	//chance we use an alternate loadout (percentage)
	var/alt_outfit_chance = 0
	//list of alt mob spawners (ie outfits) mob and corpse will both wear
	var/list/alt_outfits
	/// Path of the right hand held item we give to the mob's visuals.
	var/r_hand
	/// Path of the left hand held item we give to the mob's visuals.
	var/l_hand
	/// Whether items that look like
	var/drop_hand_gear = FALSE
	//chance we use an alternate weapon in left hand (percentage)
	var/alt_weapon_chance_left = 35
	//list of alt weapons for left hand
	var/list/alt_weapons_left = list(/obj/item/crowbar/hammer = 20,
		/obj/item/lead_pipe = 10,
		/obj/item/pickaxe/silver = 5,
		)
	//chance we use an alternate weapon in right hand (percentage)
	var/alt_weapon_chance_right = 0
	//list of alt weapons for right hand
	var/list/alt_weapons_right = list(/obj/item/gun/energy/plasmacutter/pirate = 100,)

/mob/living/basic/trooper/Initialize(mapload)
	. = ..()
	if(prob(alt_weapon_chance_left && alt_weapons_left))
		l_hand = pick_weight(alt_weapons_left)
	if(prob(alt_weapon_chance_right) && alt_weapons_right)
		r_hand = pick_weight(alt_weapons_right)
	if(prob(alt_outfit_chance))
		mob_spawner = pick_weight(alt_outfits)
		loot = list(mob_spawner,)
	if(r_hand && drop_hand_gear)
		loot += r_hand
	if(l_hand && drop_hand_gear)
		loot += l_hand
	apply_dynamic_human_appearance(src, mob_spawn_path = mob_spawner, r_hand = r_hand, l_hand = l_hand)
	if(LAZYLEN(loot))
		loot = string_list(loot)
		AddElement(/datum/element/death_drops, loot)
	AddElement(/datum/element/footstep, footstep_type = FOOTSTEP_MOB_SHOE)
