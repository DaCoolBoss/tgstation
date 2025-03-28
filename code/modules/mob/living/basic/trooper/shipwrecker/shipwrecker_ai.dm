/datum/ai_controller/basic_controller/trooper/shipwrecker
	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk
	planning_subtrees = list(
		/datum/ai_planning_subtree/simple_find_target,
		/datum/ai_planning_subtree/attack_obstacle_in_path/trooper,
		/datum/ai_planning_subtree/basic_melee_attack_subtree/opportunistic/skirmish,
		/datum/ai_planning_subtree/basic_ranged_attack_subtree/trooper/shipwrecker,
		/datum/ai_planning_subtree/travel_to_point/and_clear_target/reinforce,
		/datum/ai_planning_subtree/random_speech/shipwrecker,
	)

/datum/ai_planning_subtree/basic_melee_attack_subtree/opportunistic/skirmish/SelectBehaviors(datum/ai_controller/controller, delta_time)
	var/mob/target = controller.blackboard[BB_BASIC_MOB_CURRENT_TARGET]
	if(!target || QDELETED(target))
		return
	for(target in range(1, src))
		return
	return ..()

/datum/ai_planning_subtree/random_speech/shipwrecker
	speech_chance = 0.5
	speak = list("Haven't needed sleep lately. Too wide awake.",
	"I gotta get in a fight soon.",
	"I'm all twitchy. Keep hearing things...",
	"Is someone there?",
	"Can't wait to kill some fools.",
	"Just need a little more stim money...",
	"Oh I'm ready. Ready to kill something.",
	"Running low on stims...",
	"Hope we get some action soon...",
	"It's kicking in!",
	"Area secure.",
	"Can't stop my heart racing...",
	"Anyone else hear that?",
	"I feel so alive!",
	"One last score. Just need one last score. Maybe a couple...",)
	emote_see = list("twitches.", "scratches their neck.", "glances around.", "taps their foot.",)

/datum/ai_planning_subtree/basic_ranged_attack_subtree/trooper/shipwrecker
	ranged_attack_behavior = /datum/ai_behavior/basic_ranged_attack/trooper/shipwrecker

/datum/ai_behavior/basic_ranged_attack/trooper/shipwrecker
	action_cooldown = 1.2 SECONDS
	required_distance = 2
	avoid_friendly_fire = TRUE


/datum/ai_planning_subtree/random_speech/shipwrecker/heavy
	speak = list("Alert.",
	"On overwatch.",
	"Twitchy...",
	"Hearing things...",
	"Rend. Tear. Kill.",
	"Ready to kill.",
	"Get me something to rip apart.",
	"No visual on hostiles.",
	"Need to slaughter. Can't hold it back.",
	"One more score...",)
	emote_see = list("twitches.", "growls.", "glances around.", "shrugs their shoulders.",)


/datum/ai_planning_subtree/random_speech/shipwrecker/officer
	speak = list("Is something out there?",
	"Keep the scrap flowing.",
	"More blood. More loot.",
	"Troops, stay alert.",
	"Eyes out, troops.",
	"Loose formation.",
	"Loaded.",
	"These Spinward locals are weak.",
	"Hey, you hear that?",
	"I want to kill the next one myself.",
	"Could be targets anywhere.",
	"Nearing the end of my stim ration...",
	"One more score...",)
	emote_see = list("twitches.", "fiddles with their sleeve.", "glances around.", "taps their foot.",)
