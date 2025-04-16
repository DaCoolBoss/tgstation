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

/datum/ai_behavior/basic_ranged_attack/trooper/shipwrecker
	action_cooldown = 1.2 SECONDS
	required_distance = 5
	avoid_friendly_fire = TRUE

/datum/ai_planning_subtree/call_reinforcements/shipwrecker
	call_type = /datum/ai_behavior/call_reinforcements/shipwrecker

/datum/ai_behavior/call_reinforcements/shipwrecker
	reinforcements_range = 15

/datum/ai_planning_subtree/basic_melee_attack_subtree/opportunistic/skirmish/SelectBehaviors(datum/ai_controller/controller, delta_time)
	var/mob/target = controller.blackboard[BB_BASIC_MOB_CURRENT_TARGET]
	if(!target || QDELETED(target))
		return
	for(target in range(1, src))
		return ..()

/datum/ai_planning_subtree/random_speech/shipwrecker
	speech_chance = 0.8
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

/datum/ai_controller/basic_controller/trooper/shipwrecker/heavy
	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk
	planning_subtrees = list(
		/datum/ai_planning_subtree/simple_find_target/shipwrecker_chatter,
		/datum/ai_planning_subtree/targeted_mob_ability/shipwrecker_reinforcements,
		/datum/ai_planning_subtree/basic_melee_attack_subtree/opportunistic/skirmish,
		/datum/ai_planning_subtree/travel_to_point/and_clear_target/reinforce,
		/datum/ai_planning_subtree/random_speech/shipwrecker/heavy,
	)


/datum/ai_planning_subtree/simple_find_target/shipwrecker_chatter
	var/list/alert_vocals = list("Target spotted!",
	"I see them!",
	"Kill! Kill!",
	"Rip them apart!",
	"Blasting!",
	"Opening fire!",
	"Got visual!",
	"Prioritising targets!"
	)

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

/datum/ai_planning_subtree/simple_find_target/shipwrecker_chatter/heavy
	alert_vocals = list("Rip them open!",
	"Tear!",
	"KILL!",
	"That one's MINE!",
	"RIP! KILL!",
	"DEATH!",
	"WITNESS MY FURY!",
	"DIE!",
	"BREAK YOU!",
	)

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

/datum/ai_planning_subtree/simple_find_target/shipwrecker_chatter/officer
	alert_vocals = list("Target spotted!",
	"I see one!",
	"Open fire!",
	"Put them down!",
	"Blasting!",
	"Engage!",
	"I want these fools dead!",
	"Take them out!",
	"No quarter!",
	)

/datum/ai_planning_subtree/random_speech/shipwrecker/boss
	speak = list("This better be good.",
	"No mercy. Never.",
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

/datum/ai_planning_subtree/simple_find_target/shipwrecker_chatter/boss
	alert_vocals = list("You're not leaving here alive!",
	"Tear them apart!",
	"I'll have your heads!",
	"Put them down!",
	"Blasting!",
	"Engage!",
	"Kill them!",
	)

/datum/ai_planning_subtree/simple_find_target/shipwrecker_chatter/boss
	alert_vocals = list("We're going to have a lot of fun!",
	"Look! New toys to break!",
	"Get them!",
	"Put them down!",
	"Blasting!",
	"Engage!",
	"I want these fools dead!",
	"Take them out!",
	"No quarter!",
	)

/datum/ai_planning_subtree/random_speech/shipwrecker/boss/steelskull
	speak = list("No mercy for the intruders!",
	"Bring me their skulls.",
	"I want this situation under control, now!",
	"Heads will roll!",
	"Break the fools!",
	"Everyone, on alert. We have targets.",
	"Execute them. Every last one. We don't take prisoners.",
	"Are the intruders dead yet? Someone report in if they're dead.",
	"I will NOT tolerate failure!",
	"Where are my reports? Where are my response teams?",
	"Report in!",
	"Stop getting high and kill these intruders!",
	"There will be no survivors!",)
	emote_see = list("twitches.", "fiddles with their sleeve.", "glances around.", "taps their foot.",)

/datum/ai_planning_subtree/simple_find_target/shipwrecker_chatter/boss/steelskull
	alert_vocals = list("Why aren't they DEAD ALREADY!!!",
	"I have to do everything myself...",
	"Just one more kill.",
	"Waste of my time.",
	"I am your end.",
	"You dare?",
	"Eliminate the target!",
	"More playthings!",
	"You came a long way, just to die!",
	)
