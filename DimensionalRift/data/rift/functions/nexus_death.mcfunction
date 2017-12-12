tellraw @a[distance=..96] ["",{"text":"The Nexus has been destroyed, collapsing the rift!","color":"dark_red"}]
playsound minecraft:entity.wither.death voice @a[distance=..96] ~ ~ ~ 1 1 1
scoreboard players set notif_timer rift_data 400
kill @e[tag=nexus_mob,distance=..96]
kill @s
