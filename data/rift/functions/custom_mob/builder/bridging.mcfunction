
execute store result score $mobs.temp_1 rift.data run data get entity @s Pos[1]
execute if score $mobs.temp_1 rift.data = $nexus.in_0 rift.data run tag @s remove rift.bridging
execute if block ~ ~-0.25 ~ #rift:no_hitbox run tag @s remove rift.bridging


scoreboard players set $mobs.temp_1 rift.data 0
execute if score $mobs.temp_1 rift.data matches 0 unless block ^ ^1.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1
execute if score $mobs.temp_1 rift.data matches 0 unless block ^ ^2.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1
execute if score $mobs.temp_1 rift.data matches 0 unless block ^ ^3.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1

execute if score $mobs.temp_1 rift.data matches 0 unless block ^1 ^1.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1
execute if score $mobs.temp_1 rift.data matches 0 unless block ^1 ^2.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1
execute if score $mobs.temp_1 rift.data matches 0 unless block ^1 ^3.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1

execute if score $mobs.temp_1 rift.data matches 0 unless block ^-1 ^1.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1
execute if score $mobs.temp_1 rift.data matches 0 unless block ^-1 ^2.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1
execute if score $mobs.temp_1 rift.data matches 0 unless block ^-1 ^3.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_1 rift.data 1

execute if score $mobs.temp_1 rift.data matches 0 run function rift:custom_mob/builder/bridging_2 
execute if score $mobs.temp_1 rift.data matches 1 positioned ~ ~1 ~ run function rift:custom_mob/builder/breaking 

