execute store result score @s rift_data run data get entity @s Pos[1]
scoreboard players operation @s rift_data -= rift_height rift_data

execute if entity @s[scores={rift_data=2..}] run fill ~-1 ~-1 ~ ~1 ~-1 ~ minecraft:air destroy
execute if entity @s[scores={rift_data=2..}] run fill ~ ~-1 ~-1 ~ ~-1 ~1 minecraft:air destroy
execute if entity @s[scores={rift_data=2..}] run fill ~-1 ~-2 ~ ~1 ~-2 ~ minecraft:oak_planks destroy
execute if entity @s[scores={rift_data=2..}] run fill ~ ~-2 ~-1 ~ ~-2 ~1 minecraft:oak_planks destroy

execute if entity @s[scores={rift_data=..-1}] run fill ~-1 ~3 ~ ~1 ~3 ~ minecraft:air destroy
execute if entity @s[scores={rift_data=..-1}] run fill ~ ~3 ~-1 ~ ~3 ~1 minecraft:air destroy
execute if entity @s[scores={rift_data=..-1}] run fill ~-1 ~ ~ ~1 ~ ~ minecraft:oak_planks destroy
execute if entity @s[scores={rift_data=..-1}] run fill ~ ~ ~-1 ~ ~ ~1 minecraft:oak_planks destroy
execute if entity @s[scores={rift_data=..-1}] run tp @e[tag=nexus_mob,distance=..2] ~ ~1 ~
