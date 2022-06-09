
execute unless block ^ ^-0.5 ^1 #rift:no_hitbox unless block ^1 ^-0.5 ^1 #rift:no_hitbox unless block ^-1 ^-0.5 ^1 #rift:no_hitbox run tag @s remove rift.building

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

execute if score $mobs.temp_1 rift.data matches 0 run function rift:custom_mob/builder/building_2 
execute if score $mobs.temp_1 rift.data matches 1 positioned ~ ~1 ~ run function rift:custom_mob/builder/breaking 

