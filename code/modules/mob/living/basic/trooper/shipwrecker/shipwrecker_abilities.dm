// ai hook
/datum/ai_planning_subtree/targeted_mob_ability/shipwrecker_reinforcements
	ability_key = BB_SHIPWRECKER_REINFORCEMENTS

/datum/action/cooldown/spell/pointed/shipwrecker_reinforcements
	name = "Shipwrecker Reinforcements"
	desc = "Calls down a pod with random reinforcements."
	button_icon = 'icons/obj/clothing/masks.dmi'
	button_icon_state = "gas_alt"
	cooldown_time = 24 SECONDS
	click_to_activate = TRUE
	spell_requirements = null
	aim_assist = FALSE
	var/cast_time = 2.2 SECONDS
	//percentage chance for spell to fail when used
	var/dud_chance = 20
	//how long after casting until the lightning strikes and damage is dealt
	var/lightning_delay = 1 SECONDS

/datum/action/cooldown/spell/pointed/shipwrecker_reinforcements/cast(atom/target)
	if(!do_after(owner, cast_time))
		owner?.balloon_alert(owner, "need to stay still!")
		return
	. = ..()
	if(prob(dud_chance))
		playsound(owner, 'sound/machines/terminal/terminal_error.ogg', vol = 100, vary = FALSE)
		return
	new/obj/effect/temp_visual/shipwrecker_reinforcement_target(get_turf(target))
	playsound(owner, 'sound/machines/terminal/terminal_alert.ogg', vol = 90, vary = FALSE)

/obj/effect/temp_visual/shipwrecker_reinforcement_target
	name = "shipwrecker reinforcement target"
	desc = "Watch out! Drop pod incoming!"
	icon = 'icons/mob/telegraphing/telegraph_holographic.dmi'
	icon_state = "target_circle"
	duration = 1 SECONDS
	//  amount of damage a guy takes if they're on this tile
	var/splat_damage = 10
	// chance that a missile is sent instead of a mob
	var/missile_chance = 20 //%
	/// pod contents
	var/list/reinforcements = list(
		/mob/living/basic/trooper/shipwrecker = 50,
		/mob/living/basic/pet/dog/bullterrier/guarddog/shipwrecker = 30,
		/mob/living/basic/trooper/shipwrecker/heavy = 20,
	)

/obj/effect/temp_visual/shipwrecker_reinforcement_target/Initialize(mapload)
	. = ..()
	addtimer(CALLBACK(src, PROC_REF(zap)), duration, TIMER_DELETE_ME)

/obj/effect/temp_visual/shipwrecker_reinforcement_target/proc/zap()
	new/obj/effect/temp_visual/lightning_strike_zap(loc)
	playsound(src, 'sound/effects/magic/lightningbolt.ogg', vol = 70, vary = TRUE)
	if (!isturf(loc))
		return
	for(var/mob/living/victim in loc)
		to_chat(victim, span_warning("You are struck by a large bolt of electricity!"))
		victim.electrocute_act(splat_damage, src, flags = SHOCK_NOGLOVES | SHOCK_NOSTUN)

/datum/action/cooldown/spell/pointed/shipwrecker_airstrike
