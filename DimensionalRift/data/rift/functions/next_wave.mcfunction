summon item ~ ~1 ~1 {Tags:["rift_reward"],Team:"nexus",CustomName:"{\"text\":\"Unstable Matter\",\"color\":\"dark_purple\",\"italic\":false}",CustomNameVisible:1,NoGravity:1b,Item:{id:diamond,Count:1b,tag:{ench:[{lvl:1,id:71}],display:{Name:"{\"text\":\"Unstable Matter\",\"color\":\"dark_purple\",\"italic\":false}",Lore:["§3Generated from rifts."]}}}}

scoreboard players operation temp_0 rift_data = @s rift_power
scoreboard players add temp_0 rift_data 5
execute store result entity @e[tag=rift_reward,limit=1,sort=nearest] Item.Count int 0.2 run scoreboard players get temp_0 rift_data
tag @e[tag=rift_reward] remove rift_reward

scoreboard players add @s rift_power 1

scoreboard players set @s rift_time -1
particle portal ~ ~1 ~ 0.2 0.2 0.2 1 1

execute if entity @s[scores={rift_power=5}] run advancement grant @a[distance=..96] only rift:wave_5
execute if entity @s[scores={rift_power=10}] run advancement grant @a[distance=..96] only rift:wave_10
execute if entity @s[scores={rift_power=15}] run advancement grant @a[distance=..96] only rift:wave_15
execute if entity @s[scores={rift_power=20}] run advancement grant @a[distance=..96] only rift:wave_20
execute if entity @s[scores={rift_power=25}] run advancement grant @a[distance=..96] only rift:wave_25
execute if entity @s[scores={rift_power=50}] run advancement grant @a[distance=..96] only rift:wave_50