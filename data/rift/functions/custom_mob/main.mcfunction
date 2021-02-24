
execute if score $timer.300 rift.data matches 0 run function rift:custom_mob/target

execute as @e[tag=rift.custom_mob,distance=..96] at @s run function rift:custom_mob/main_2
