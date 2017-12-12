tag @s remove nexus_still
tag @s[nbt={Motion:[0.0,0.0,0.0]}] add nexus_still

execute if entity @s[scores={rift_data=20}] run fill ~-1 ~-1 ~ ~1 ~-1 ~ minecraft:oak_planks destroy
execute if entity @s[scores={rift_data=20}] run fill ~ ~-1 ~-1 ~ ~-1 ~1 minecraft:oak_planks destroy

execute if entity @s[scores={rift_power=40}] run fill ~-1 ~ ~ ~1 ~1 ~ minecraft:air destroy
execute if entity @s[scores={rift_power=40}] run fill ~ ~ ~-1 ~ ~1 ~1 minecraft:air destroy

execute if entity @s[scores={rift_power=60}] run fill ~-3 ~-2 ~-1 ~3 ~3 ~3 minecraft:cobblestone replace minecraft:lava
execute if entity @s[scores={rift_power=60}] run fill ~-3 ~-2 ~-1 ~3 ~3 ~3 minecraft:ice replace minecraft:water

execute if entity @s[scores={rift_power=80}] run function rift:build

scoreboard players set @s[scores={rift_power=100..}] rift_power 0