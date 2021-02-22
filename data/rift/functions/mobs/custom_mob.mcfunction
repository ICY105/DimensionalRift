scoreboard players set @s[nbt=!{Motion:[0.0,0.0,0.0]}] rift_power 0
scoreboard players add @s[nbt={Motion:[0.0,0.0,0.0]}] rift_power 1

#Zombie Villager
execute if entity @s[tag=nexus_builder] run function rift:mobs/builder

#Creeper
data merge entity @s[tag=nexus_bomb,scores={rift_power=120..}] {Fuse:0}

#Witch
scoreboard players add @s[tag=nexus_witch] rift_time 1
execute as @s[tag=nexus_witch,scores={rift_time=80}] run effect give @e[tag=nexus_mob,distance=..12] minecraft:speed 1 10
execute as @s[tag=nexus_witch,scores={rift_time=160}] run effect give @e[tag=nexus_mob,distance=..12] minecraft:strength 1 10
execute as @s[tag=nexus_witch,scores={rift_time=320}] run effect give @e[tag=nexus_mob,distance=..12] minecraft:resistance 1 10
execute as @s[tag=nexus_witch,scores={rift_time=400}] run spreadplayers ~ ~ 0.5 8 false @s
scoreboard players add @s[tag=nexus_witch,scores={rift_time=400..}] rift_time 0

#Endermite
scoreboard players add @s[tag=nexus_endermite] rift_time 1
execute as @s[tag=nexus_endermite,scores={rift_time=120..}] run spreadplayers ~ ~ 0.5 8 false @s
scoreboard players add @s[tag=nexus_endermite,scores={rift_time=120..}] rift_time 0