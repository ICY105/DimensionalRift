
scoreboard players set $mobs.out_0 rift.data 1
execute if block ~ ~ ~ #rift:break-0.5 run scoreboard players set $mobs.out_0 rift.data 5
execute if block ~ ~ ~ #rift:break-1 run scoreboard players set $mobs.out_0 rift.data 10
execute if block ~ ~ ~ #rift:break-1.5 run scoreboard players set $mobs.out_0 rift.data 15
execute if block ~ ~ ~ #rift:break-2 run scoreboard players set $mobs.out_0 rift.data 20
execute if block ~ ~ ~ #rift:break-3 run scoreboard players set $mobs.out_0 rift.data 30
execute if block ~ ~ ~ #rift:break-4 run scoreboard players set $mobs.out_0 rift.data 40
execute if block ~ ~ ~ #rift:break-5 run scoreboard players set $mobs.out_0 rift.data 50
execute if block ~ ~ ~ #rift:break-20 run scoreboard players set $mobs.out_0 rift.data 200
execute if block ~ ~ ~ #rift:unbreakable run scoreboard players set $mobs.out_0 rift.data -1

execute if score @s rift.data matches 1 if score $mobs.out_0 rift.data matches 1.. run function rift:custom_mob/builder/switch_tool
