#### Nexus Functions
scoreboard players add @s rift_time 1

execute if entity @s[scores={rift_time=1}] run tellraw @a[distance=..96] ["",{"text":"30 seconds until a new wave a mobs begins.","color":"dark_red"}]
execute if entity @s[scores={rift_time=1}] run time set 16000

execute if entity @s[scores={rift_time=600}] run function rift:spawn_wave_one
execute if entity @s[scores={rift_time=3600}] run function rift:spawn_wave_two
execute if entity @s[scores={rift_time=5999}] run function rift:next_wave

#Taking Damage Nofication
execute store result score health_0 rift_data run data get entity @s Health
execute if score health_0 rift_data < health_1 rift_data if score notif_timer rift_data = con_0 rift_data run tellraw @a[distance=..96] ["",{"text":"The Nexus is under attack!.","color":"red"}]
execute if score health_0 rift_data < health_1 rift_data if score notif_timer rift_data = con_0 rift_data run scoreboard players set notif_timer rift_data 300
execute if score notif_timer rift_data > con_0 rift_data run scoreboard players remove notif_timer rift_data 1
scoreboard players operation health_1 rift_data = health_0 rift_data

#Dead Effect
execute if score health_0 rift_data < con_50 rift_data if score notif_timer rift_data < con_300 rift_data run function rift:nexus_death

#Upgrade Effects
execute if entity @s[tag=nexus_slow_aura] run effect give @e[tag=nexus_mob,distance=..16] minecraft:slowness 2 0
execute if entity @s[tag=nexus_wither_aura] run effect give @e[tag=nexus_mob,distance=..16] minecraft:wither 2 0

#Upgrade Triggers
execute as @a[scores={rift_trade=1..}] at @s run function rift:nexus_trade

#Health Display
execute if score health_0 rift_data >= con_50 rift_data run data merge entity @s {CustomName:"§4███████§2█"}
execute if score health_0 rift_data >= con_100 rift_data run data merge entity @s {CustomName:"§4██████§2██"}
execute if score health_0 rift_data >= con_150 rift_data run data merge entity @s {CustomName:"§4█████§2███"}
execute if score health_0 rift_data >= con_200 rift_data run data merge entity @s {CustomName:"§4████§2████"}
execute if score health_0 rift_data >= con_250 rift_data run data merge entity @s {CustomName:"§4███§2█████"}
execute if score health_0 rift_data >= con_300 rift_data run data merge entity @s {CustomName:"§4██§2██████"}
execute if score health_0 rift_data >= con_350 rift_data run data merge entity @s {CustomName:"§4█§2███████"}
execute if score health_0 rift_data >= con_400 rift_data run data merge entity @s {CustomName:"§2████████"}

#### Custom Mobs
scoreboard players set @e[tag=nexus_still,nbt=!{Motion:[0.0,0.0,0.0]}] rift_power 0

execute as @e[tag=nexus_builder] at @s run function rift:builder

tag @e[tag=nexus_bomb] remove nexus_still
tag @e[tag=nexus_bomb,nbt={Motion:[0.0,0.0,0.0]}] add nexus_still
scoreboard players set @e[tag=nexus_bomb,tag=!nexus_still] rift_power 0
execute as @e[tag=nexus_bomb,scores={rift_power=120..}] run data merge entity @s {Fuse:0}

tag @e[tag=nexus_smash] remove nexus_still
tag @e[tag=nexus_smash,nbt={Motion:[0.0,0.0,0.0]}] add nexus_still

execute as @e[tag=nexus_smash,scores={rift_power=60}] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air destroy

scoreboard players add @e[tag=nexus_still] rift_power 1

scoreboard players add @e[tag=nexus_witch_boss] rift_time 1
execute as @e[tag=nexus_witch_boss,scores={rift_time=120..}] at @s run spreadplayers ~ ~ 0.5 8 false @s
scoreboard players add @e[tag=nexus_witch_boss,scores={rift_time=120..}] rift_time 0