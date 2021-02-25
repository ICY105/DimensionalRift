
data modify storage rift:temp var set from storage rift:temp nexus.mobs[0]
execute store result score $mobs.temp_0 rift.data run data get storage rift:temp var

execute if score $mobs.temp_0 rift.data matches 16 if data storage rift:temp {var:"minecraft:zombie"} run function rift:mobs/zombie_group
execute if score $mobs.temp_0 rift.data matches 18 if data storage rift:temp {var:"minecraft:skeleton"} run function rift:mobs/skeleton_group
execute if score $mobs.temp_0 rift.data matches 25 if data storage rift:temp {var:"minecraft:zombie_villager"} run function rift:mobs/zombie_villager_group

scoreboard players set $mobs.temp_0 rift.data -1
scoreboard players set $mobs.out_0 rift.data -1
