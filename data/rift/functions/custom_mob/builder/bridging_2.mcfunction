
scoreboard players add @s rift.data 1
execute if score @s rift.data matches 1 run item replace entity @s weapon.offhand with minecraft:oak_planks

scoreboard players set $mobs.temp_0 rift.data 0
execute if score @s rift.data matches 30.. if block ^ ^0.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 1
execute if score @s rift.data matches 30.. if block ^1 ^0.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 2
execute if score @s rift.data matches 30.. if block ^-1 ^0.5 ^1 #rift:no_hitbox run scoreboard players set $mobs.temp_0 rift.data 3

execute if score @s rift.data matches 30.. if score $mobs.temp_0 rift.data matches 0 positioned ^ ^1.5 ^1 align xyz run tp @s ~0.5 ~ ~0.5
execute if score $mobs.temp_0 rift.data matches 1 run setblock ^ ^0.5 ^1 minecraft:oak_planks destroy
execute if score $mobs.temp_0 rift.data matches 1 positioned ^ ^1.5 ^1 align xyz run tp @s ~0.5 ~ ~0.5
execute if score $mobs.temp_0 rift.data matches 2 run setblock ^1 ^0.5 ^1 minecraft:oak_planks destroy
execute if score $mobs.temp_0 rift.data matches 3 run setblock ^-1 ^0.5 ^1 minecraft:oak_planks destroy
execute if score $mobs.temp_0 rift.data matches 1..3 run scoreboard players set @s rift.data 0
