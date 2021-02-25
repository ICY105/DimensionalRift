
execute if score @s rift.data matches ..-1 run scoreboard players add @s rift.data 1
execute if score @s rift.data matches 0.. if score $timer.20 rift.data matches 1 if entity @s[tag=!rift.building,tag=!rift.filling,tag=!rift.cooling,tag=!rift.breaking,tag=!rift.bridging,tag=!rift.burrowing] run function rift:custom_mob/builder/update

execute if entity @s[tag=rift.building] run function rift:custom_mob/builder/building
execute if entity @s[tag=rift.filling] run function rift:custom_mob/builder/filling
execute if entity @s[tag=rift.cooling] run function rift:custom_mob/builder/cooling
execute if entity @s[tag=rift.breaking] run function rift:custom_mob/builder/breaking
execute if entity @s[tag=rift.bridging] run function rift:custom_mob/builder/bridging
execute if entity @s[tag=rift.burrowing] run function rift:custom_mob/builder/burrowing
