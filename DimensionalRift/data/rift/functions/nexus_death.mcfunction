tellraw @a[distance=..96] ["",{"text":"The Nexus has been destroyed, collapsing the rift!","color":"dark_red"}]
playsound minecraft:entity.wither.death voice @a[distance=..96] ~ ~ ~ 1 1 1
scoreboard players set notif_timer rift_data 400
kill @e[tag=nexus_mob,distance=..96]
kill @s

bossbar set rift:killer_bunny players @p[tag=nexus_impossible]
bossbar set rift:witch players @p[tag=nexus_impossible]
bossbar set rift:illusioner players @p[tag=nexus_impossible]
bossbar set rift:magma players @p[tag=nexus_impossible]