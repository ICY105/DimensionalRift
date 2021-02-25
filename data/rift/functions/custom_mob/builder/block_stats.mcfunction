
scoreboard players set $mobs.out_0 rift.data 240
execute if block ~ ~ ~ #rift:break-soft run scoreboard players set $mobs.out_0 rift.data 60
execute if block ~ ~ ~ #rift:break-medium run scoreboard players set $mobs.out_0 rift.data 120
execute if block ~ ~ ~ #rift:break-hard run scoreboard players set $mobs.out_0 rift.data 480

execute if score @s rift.data matches 1 if score $mobs.out_0 rift.data matches 1.. run function rift:custom_mob/builder/switch_tool
