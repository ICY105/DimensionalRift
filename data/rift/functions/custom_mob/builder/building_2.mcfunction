
scoreboard players add @s rift.data 1

scoreboard players set $mobs.temp_0 rift.data 0
execute if score @s rift.data matches 20.. if block ^ ^-0.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 1
execute if score @s rift.data matches 20.. if block ^1 ^-0.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 2
execute if score @s rift.data matches 20.. if block ^-1 ^-0.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 3

execute if score $mobs.temp_0 rift.data matches 1 run setblock ^ ^-0.5 ^1 minecraft:oak_planks destroy
execute if score $mobs.temp_0 rift.data matches 1 positioned ^ ^ ^1 align xyz run tp @s ~0.5 ~ ~0.5
execute if score $mobs.temp_0 rift.data matches 1 at @s if block ^ ^-0.5 ^ #rift:no_hitbox positioned ^ ^ ^1 align xyz run tp @s ~0.5 ~ ~0.5
execute if score $mobs.temp_0 rift.data matches 1 at @s if block ~ ~-1 ~ #rift:no_hitbox run setblock ^1 ^-0.5 ^1 minecraft:oak_planks destroy
execute if score $mobs.temp_0 rift.data matches 2 run setblock ^1 ^-0.5 ^1 minecraft:oak_planks destroy
execute if score $mobs.temp_0 rift.data matches 3 run setblock ^-1 ^-0.5 ^1 minecraft:oak_planks destroy
execute if score $mobs.temp_0 rift.data matches 1..3 run scoreboard players set @s rift.data 0
