/obj/effect/spawner/random/jungle_threat/dangerous_snakes
	spawn_scatter_radius = 1
	loot = list(
		/mob/living/basic/snake/banded = 70,
		/mob/living/basic/snake/banded/harmless = 30,
	)

/obj/effect/spawner/random/jungle_threat/dangerous_snakes(mapload)
	spawn_loot_count = rand(1,5)
	. = ..()

/obj/effect/spawner/random/jungle_threat/dangerous_snakes/less_dangerous
	loot = list(
		/mob/living/basic/snake/banded = 15,
		/mob/living/basic/snake/banded/harmless = 85,
	)

/obj/effect/spawner/random/jungle_threat

/obj/effect/spawner/random/jungle_threat/spider

/obj/effect/spawner/random/jungle_threat/spider/cluster

/obj/effect/spawner/random/jungle_threat/big

/obj/effect/spawner/random/jungle_threat/group

/obj/effect/spawner/random/jungle_threat/group/big
