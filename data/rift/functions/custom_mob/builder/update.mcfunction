
scoreboard players set $mobs.temp_0 rift.data 0
execute store result score $mobs.temp_1 rift.data run data get entity @s Pos[1]

#get mode
execute if block ^ ^-0.5 ^1 #rift:no_hitbox if block ^ ^-1.5 ^1 #rift:no_hitbox if block ^ ^-2.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 1
execute unless block ^ ^1.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 4

scoreboard players add $mobs.temp_1 rift.data 8
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.temp_1 rift.data < $nexus.in_0 rift.data if entity @s[tag=rift.build_far] positioned ~ ~16 ~ if entity @e[tag=rift.nexus,distance=32..48] run scoreboard players set $mobs.temp_0 rift.data 5
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.temp_1 rift.data < $nexus.in_0 rift.data if entity @s[tag=rift.build_near] positioned ~ ~16 ~ if entity @e[tag=rift.nexus,distance=16..32] run scoreboard players set $mobs.temp_0 rift.data 5
scoreboard players remove $mobs.temp_1 rift.data 16
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.temp_1 rift.data > $nexus.in_0 rift.data if entity @s[tag=rift.build_far] positioned ~ ~-16 ~ if entity @e[tag=rift.nexus,distance=32..48] run scoreboard players set $mobs.temp_0 rift.data 6
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.temp_1 rift.data > $nexus.in_0 rift.data if entity @s[tag=rift.build_near] positioned ~ ~-16 ~ if entity @e[tag=rift.nexus,distance=16..32] run scoreboard players set $mobs.temp_0 rift.data 6
scoreboard players add $mobs.temp_1 rift.data 16

execute if score $mobs.temp_1 rift.data < $nexus.in_0 rift.data positioned ~-2 ~2 ~-2 if entity @e[tag=rift.nexus,dx=3,dz=3,dy=16] run scoreboard players set $mobs.temp_0 rift.data 7
execute if score $mobs.temp_1 rift.data > $nexus.in_0 rift.data positioned ~-2 ~-2 ~-2 if entity @e[tag=rift.nexus,dx=3,dz=3,dy=-16] run scoreboard players set $mobs.temp_0 rift.data 8

execute if block ~ ~-0.25 ~ #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 0

execute if block ^ ^-0.5 ^1 minecraft:water run scoreboard players set $mobs.temp_0 rift.data 2
execute if block ~ ~ ~ minecraft:water run scoreboard players set $mobs.temp_0 rift.data 2
execute if block ^ ^-0.5 ^1 minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 3
execute if block ~ ~ ~ minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 3


#config data
execute if score $mobs.temp_0 rift.data matches 0 run scoreboard players set @s rift.data 0
execute if score $mobs.temp_0 rift.data matches 1 unless entity @s[tag=rift.building] run scoreboard players set @s rift.data 0
execute if score $mobs.temp_0 rift.data matches 2 unless entity @s[tag=rift.filling] run scoreboard players set @s rift.data 0
execute if score $mobs.temp_0 rift.data matches 3 unless entity @s[tag=rift.cooling] run scoreboard players set @s rift.data 0
execute if score $mobs.temp_0 rift.data matches 4 unless entity @s[tag=rift.breaking] run scoreboard players set @s rift.data 0
execute if score $mobs.temp_0 rift.data matches 5 unless entity @s[tag=rift.bridging] run scoreboard players set @s rift.data 0
execute if score $mobs.temp_0 rift.data matches 6 unless entity @s[tag=rift.burrowing] run scoreboard players set @s rift.data 0
execute if score $mobs.temp_0 rift.data matches 7..8 run scoreboard players set @s rift.data 0

tag @s remove rift.building
tag @s remove rift.filling
tag @s remove rift.cooling
tag @s remove rift.breaking
tag @s remove rift.bridging
tag @s remove rift.burrowing

#set data
execute if score $mobs.temp_0 rift.data matches 1 run tag @s add rift.building
execute if score $mobs.temp_0 rift.data matches 2 run tag @s add rift.filling
execute if score $mobs.temp_0 rift.data matches 3 run tag @s add rift.cooling
execute if score $mobs.temp_0 rift.data matches 4 run tag @s add rift.breaking
execute if score $mobs.temp_0 rift.data matches 5 run tag @s add rift.bridging
execute if score $mobs.temp_0 rift.data matches 6 run tag @s add rift.burrowing
execute if score $mobs.temp_0 rift.data matches 7 run function rift:custom_mob/builder/stack
execute if score $mobs.temp_0 rift.data matches 8 run function rift:custom_mob/builder/dig

execute if score $mobs.temp_0 rift.data matches 0 run data merge entity @s {NoAI:0b}
execute if score $mobs.temp_0 rift.data matches 1.. run data merge entity @s {NoAI:1b}
