
execute if score $timer.300 rift.data matches 0 run function rift:custom_mob/target
execute if score $timer.300 rift.data matches 5 run function rift:custom_mob/target_2

execute store result score $nexus.in_0 rift.data run data get entity @s Pos[1]
execute as @e[tag=rift.custom_mob,distance=..96] at @s run function rift:custom_mob/main_2
