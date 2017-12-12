execute store success score temp_0 rift_data run clear @s ghast_tear{display:{Name:"§dRegen Buff Upgrade"}} 64
execute if score temp_0 rift_data > con_0 rift_data run tellraw @s ["",{"text":"Purchased Nexus Regen Buff","color":"dark_purple"}]
execute if score temp_0 rift_data > con_0 rift_data run effect give @e[type=villager,tag=nexus_core,distance=..16] minecraft:regeneration 999999 0 true

execute store success score temp_0 rift_data run clear @s obsidian{display:{Name:"§dResistance Buff Upgrade"}} 64
execute if score temp_0 rift_data > con_0 rift_data run tellraw @s ["",{"text":"Purchased Nexus Resistance Buff","color":"dark_purple"}]
execute if score temp_0 rift_data > con_0 rift_data run effect give @e[type=villager,tag=nexus_core,distance=..16] minecraft:regeneration 999999 0 true

execute store success score temp_0 rift_data run clear @s soul_sand{display:{Name:"§3Slowness Aura Upgrade"}} 64
execute if score temp_0 rift_data > con_0 rift_data run tellraw @s ["",{"text":"Purchased Nexus Slowness Aura","color":"dark_purple"}]
execute if score temp_0 rift_data > con_0 rift_data run tag @e[type=villager,tag=nexus_core,distance=..16] add nexus_slow_aura

execute store success score temp_0 rift_data run clear @s wither_skeleton_skull{display:{Name:"§4Wither Aura Upgrade"}} 64
execute if score temp_0 rift_data > con_0 rift_data run tellraw @s ["",{"text":"Purchased Nexus Wither Aura","color":"dark_purple"}]
execute if score temp_0 rift_data > con_0 rift_data run tag @e[type=villager,tag=nexus_core,distance=..16] add nexus_wither_aura


scoreboard players set @s rift_trade 0