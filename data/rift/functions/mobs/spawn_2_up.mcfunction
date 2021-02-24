
execute unless block ~ ~-1 ~ #rift:spawnable if block ~ ~ ~ #rift:spawnable if block ~ ~1 ~ #rift:spawnable align xyz positioned ~0.5 ~0.6 ~0.5 run function rift:mobs/spawn_3

scoreboard players remove $mobs.temp_0 rift.data 1
execute if score $mobs.temp_0 rift.data matches 1.. positioned ~ ~1 ~ run function rift:mobs/spawn_2_up
