
#timers
scoreboard players add $timer.5 rift.data 1
execute if score $timer.5 rift.data matches 5.. run scoreboard players set $timer.5 rift.data 0

scoreboard players add $timer.20 rift.data 1
execute if score $timer.20 rift.data matches 20.. run scoreboard players set $timer.20 rift.data 0

scoreboard players add $timer.50 rift.data 1
execute if score $timer.50 rift.data matches 50.. run scoreboard players set $timer.50 rift.data 0

scoreboard players add $timer.300 rift.data 1
execute if score $timer.300 rift.data matches 300.. run scoreboard players set $timer.300 rift.data 0

#updates
execute if score $timer.20 rift.data matches 0 as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] at @s if block ~ ~-1 ~ minecraft:netherite_block unless entity @e[tag=rift.nexus,distance=..128] run function rift:nexus/spawn
execute as @e[tag=rift.nexus] at @s run function rift:nexus/main
