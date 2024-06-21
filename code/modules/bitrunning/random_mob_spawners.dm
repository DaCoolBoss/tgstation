/obj/effect/spawner/random/jungle_threat/dangerous_snakes
	spawn_scatter_radius = 1
	loot = list(
		/mob/living/basic/snake/banded = 70,
		/mob/living/basic/snake/banded/harmless = 30,
	)

/obj/effect/spawner/random/jungle_threat/dangerous_snakes/Initialize(mapload)
	spawn_loot_count = rand(1,5)
	. = ..()

/obj/effect/spawner/random/jungle_threat/dangerous_snakes/less_dangerous
	loot = list(
		/mob/living/basic/snake/banded = 15,
		/mob/living/basic/snake/banded/harmless = 85,
	)

/obj/effect/spawner/random/jungle_threat
	loot = list(
		/mob/living/basic/gorilla = 20,
		/mob/living/basic/venus_human_trap = 20,
		/mob/living/basic/snake/banded = 10,
		/mob/living/basic/seedling/meanie = 10,
		/mob/living/basic/mining/legion = 10,
		/mob/living/basic/mining/legion/monkey = 10,
		/mob/living/basic/spider/giant/scout = 10,
		/mob/living/basic/spider/giant/viper = 5,
		/mob/living/basic/spider/giant/tarantula = 5,
	)

/obj/effect/spawner/random/jungle_threat/plant
	loot = list(
		/mob/living/basic/venus_human_trap = 20,
		/mob/living/basic/seedling/meanie = 10,
	)

/obj/effect/spawner/random/jungle_threat/spider
/obj/effect/spawner/random/jungle_threat/spider/cluster

/obj/effect/spawner/random/jungle_threat/big
	loot = list(
		/mob/living/basic/gorilla = 50,
		/mob/living/basic/bear = 50,
	)

/obj/effect/spawner/random/jungle_threat/group

/obj/effect/spawner/random/jungle_threat/group/big
