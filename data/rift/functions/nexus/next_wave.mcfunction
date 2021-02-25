
#flux
loot spawn ^ ^1 ^1 loot rift:flux
execute positioned ^ ^1 ^1 as @e[type=item,distance=..1,limit=1,nbt={Age:0s}] run data merge entity @s {Motion:[0,0,0],Glowing:1b,NoGravity:1b}

#effects
playsound minecraft:block.portal.trigger voice @a[distance=..96] ~ ~ ~ 1 1 1
particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 1 1000
execute if entity @s[tag=rift.regen] run effect give @s minecraft:regeneration 8 4 true

#advancement
execute if score $nexus.wave rift.data matches 5 run advancement grant @a[distance=..96] only rift:wave_5
execute if score $nexus.wave rift.data matches 10 run advancement grant @a[distance=..96] only rift:wave_10
execute if score $nexus.wave rift.data matches 15 run advancement grant @a[distance=..96] only rift:wave_15
execute if score $nexus.wave rift.data matches 20 run advancement grant @a[distance=..96] only rift:wave_20
execute if score $nexus.wave rift.data matches 25 run advancement grant @a[distance=..96] only rift:wave_25
execute if score $nexus.wave rift.data matches 30 run advancement grant @a[distance=..96] only rift:wave_30
execute if score $nexus.wave rift.data matches 35 run advancement grant @a[distance=..96] only rift:wave_35
execute if score $nexus.wave rift.data matches 40 run advancement grant @a[distance=..96] only rift:wave_40
execute if score $nexus.wave rift.data matches 45 run advancement grant @a[distance=..96] only rift:wave_45
execute if score $nexus.wave rift.data matches 50 run advancement grant @a[distance=..96] only rift:wave_50

#next wave
scoreboard players set $nexus.time rift.data 0
scoreboard players add $nexus.wave rift.data 1
function rift:nexus/add_mobs
