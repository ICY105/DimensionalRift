
execute unless block ^ ^-0.5 ^1 minecraft:lava unless block ~ ~ ~ minecraft:lava run tag @s remove rift.cooling

scoreboard players add @s rift.data 1
execute if score @s rift.data matches 1 run item replace entity @s weapon.offhand with minecraft:water_bucket

scoreboard players set $mobs.temp_0 rift.data 0
execute if score @s rift.data matches 20.. if block ^ ^-0.5 ^1 minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 1
execute if score @s rift.data matches 20.. if block ^1 ^-0.5 ^1 minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 2
execute if score @s rift.data matches 20.. if block ^-1 ^-0.5 ^1 minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 3
execute if score @s rift.data matches 20.. if block ^-1 ^-0.5 ^-1 minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 4
execute if score @s rift.data matches 20.. if block ^ ^-0.5 ^-1 minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 5
execute if score @s rift.data matches 20.. if block ^-1 ^-0.5 ^-1 minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 6
execute if score @s rift.data matches 20.. if block ^1 ^-0.5 ^ minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 7
execute if score @s rift.data matches 20.. if block ^-1 ^-0.5 ^ minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 8
execute if score @s rift.data matches 20.. if block ^ ^-0.5 ^ minecraft:lava run scoreboard players set $mobs.temp_0 rift.data 9

execute if score $mobs.temp_0 rift.data matches 1 run setblock ^ ^-0.5 ^1 minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 1 positioned ^ ^ ^1 align xyz run tp @s ~0.5 ~ ~0.5
execute if score $mobs.temp_0 rift.data matches 2 run setblock ^1 ^-0.5 ^1 minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 3 run setblock ^-1 ^-0.5 ^1 minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 4 run setblock ^ ^-0.5 ^-1 minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 5 run setblock ^-1 ^-0.5 ^-1 minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 6 run setblock ^-1 ^-0.5 ^-1 minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 7 run setblock ^1 ^-0.5 ^ minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 8 run setblock ^-1 ^-0.5 ^ minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 9 run setblock ^ ^-0.5 ^ minecraft:obsidian destroy
execute if score $mobs.temp_0 rift.data matches 9 positioned ^ ^1 ^ align xyz run tp @s ~0.5 ~ ~0.5
execute if score $mobs.temp_0 rift.data matches 1..9 run scoreboard players set @s rift.data 0
