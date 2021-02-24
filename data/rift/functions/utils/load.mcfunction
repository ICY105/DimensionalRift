
scoreboard players set $cons.-1 rift.data -1
scoreboard players set $cons.2 rift.data 2
scoreboard players set $cons.16 rift.data 16

scoreboard players set $cons.rng_a rift.data 1103515245
execute store result score $utils.rng_seed rift.data run data get entity @e[sort=random,limit=1] UUID[0]
