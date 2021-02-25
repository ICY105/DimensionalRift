
execute store result score $mobs.temp_1 rift.data run data get entity @s Pos[1]
execute if block ~ ~-0.25 ~ #rift:no_hitbox run tag @s remove rift.bridging
execute if score $mobs.temp_1 rift.data = $nexus.in_0 rift.data run tag @s remove rift.bridging

execute if block ^ ^-0.5 ^1 #rift:no_hitbox run function rift:custom_mob/builder/burrowing_2 
execute unless block ^ ^-0.5 ^1 #rift:no_hitbox positioned ~ ~-1 ~ run function rift:custom_mob/builder/breaking 
