#### Nexus Functions
scoreboard players add @s rift_time 1

execute if entity @s[scores={rift_time=1}] run tellraw @a[distance=..96] ["",{"text":"30 seconds until a new wave a mobs begins.","color":"dark_red"}]
execute if entity @s[scores={rift_time=1}] run time set 13000

execute if entity @s[scores={rift_time=600}] run function rift:mobs/spawn_wave
execute if entity @s[scores={rift_power=0..4,rift_time=4000..}] run function rift:next_wave
execute if entity @s[scores={rift_power=4..9,rift_time=4400..}] run function rift:next_wave
execute if entity @s[scores={rift_power=10..14,rift_time=4800..}] run function rift:next_wave
execute if entity @s[scores={rift_power=15..19,rift_time=5200..}] run function rift:next_wave
execute if entity @s[scores={rift_power=20..,rift_time=5600..}] run function rift:next_wave
execute if entity @s[scores={rift_power=20..,rift_time=6000..}] run function rift:next_wave

#Taking Damage Nofication
execute store result score health_0 rift_data run data get entity @s Health
execute if score health_0 rift_data < health_1 rift_data if score notif_timer rift_data = con_0 rift_data run tellraw @a[distance=..96] ["",{"text":"The Nexus is under attack!.","color":"red"}]
execute if score health_0 rift_data < health_1 rift_data if score notif_timer rift_data = con_0 rift_data run scoreboard players set notif_timer rift_data 300
execute if score notif_timer rift_data > con_0 rift_data run scoreboard players remove notif_timer rift_data 1
scoreboard players operation health_1 rift_data = health_0 rift_data

#Health Display
execute if score health_0 rift_data >= con_50 rift_data run data merge entity @s {CustomName:"[{\"text\":\"\"},{\"text\":\"█\",\"color\":\"dark_green\",\"italic\":false},{\"text\":\"███████\",\"color\":\"dark_red\",\"italic\":false}]"}
execute if score health_0 rift_data >= con_100 rift_data run data merge entity @s {CustomName:"[{\"text\":\"\"},{\"text\":\"██\",\"color\":\"dark_green\",\"italic\":false},{\"text\":\"██████\",\"color\":\"dark_red\",\"italic\":false}]"}
execute if score health_0 rift_data >= con_150 rift_data run data merge entity @s {CustomName:"[{\"text\":\"\"},{\"text\":\"███\",\"color\":\"dark_green\",\"italic\":false},{\"text\":\"█████\",\"color\":\"dark_red\",\"italic\":false}]"}
execute if score health_0 rift_data >= con_200 rift_data run data merge entity @s {CustomName:"[{\"text\":\"\"},{\"text\":\"████\",\"color\":\"dark_green\",\"italic\":false},{\"text\":\"████\",\"color\":\"dark_red\",\"italic\":false}]"}
execute if score health_0 rift_data >= con_250 rift_data run data merge entity @s {CustomName:"[{\"text\":\"\"},{\"text\":\"█████\",\"color\":\"dark_green\",\"italic\":false},{\"text\":\"███\",\"color\":\"dark_red\",\"italic\":false}]"}
execute if score health_0 rift_data >= con_300 rift_data run data merge entity @s {CustomName:"[{\"text\":\"\"},{\"text\":\"██████\",\"color\":\"dark_green\",\"italic\":false},{\"text\":\"██\",\"color\":\"dark_red\",\"italic\":false}]"}
execute if score health_0 rift_data >= con_350 rift_data run data merge entity @s {CustomName:"[{\"text\":\"\"},{\"text\":\"███████\",\"color\":\"dark_green\",\"italic\":false},{\"text\":\"█\",\"color\":\"dark_red\",\"italic\":false}]"}
execute if score health_0 rift_data >= con_400 rift_data run data merge entity @s {CustomName:"[{\"text\":\"\"},{\"text\":\"████████\",\"color\":\"dark_green\",\"italic\":false}]"}

#Dead Effect
execute if score health_0 rift_data < con_50 rift_data if score notif_timer rift_data < con_300 rift_data run function rift:nexus_death

#Upgrade Effects
scoreboard players operation temp_0 rift_data = @s rift_time
scoreboard players operation temp_0 rift_data %= con_50 rift_data
execute if score temp_0 rift_data = con_0 rift_data if entity @s[tag=nexus_slow_aura] run effect give @e[tag=nexus_mob,distance=..16] minecraft:slowness 3 0
execute if score temp_0 rift_data = con_0 rift_data if entity @s[tag=nexus_wither_aura] run effect give @e[tag=nexus_mob,distance=..12] minecraft:wither 3 0

#Upgrade Triggers
execute as @a[scores={rift_trade=1..}] at @s run function rift:nexus_trade

#Skip to next wave
execute if score temp_0 rift_data = con_0 rift_data if entity @s[scores={rift_time=900..}] unless entity @e[tag=nexus_mob,distance=..96] run function rift:next_wave

# Custom Mobs
execute as @e[tag=nexus_custom] at @s run function rift:mobs/custom_mob