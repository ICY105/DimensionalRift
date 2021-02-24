###
### Load Data
###
execute store result score $temp_0 rift.data run data get storage rift:temp nexus.id
execute store result score @s rift.data run data get entity @s ArmorItems[0].tag.nexus.id
execute unless score $temp_0 rift.data = @s rift.data run data modify storage rift:temp nexus set from entity @s ArmorItems[0].tag.nexus

execute store result score $nexus.time rift.data run data get storage rift:temp nexus.time
execute store result score $nexus.wave rift.data run data get storage rift:temp nexus.wave
execute store result score $nexus.phealth rift.data run data get storage rift:temp nexus.phealth
execute store result score $nexus.health_notif rift.data run data get storage rift:temp nexus.health_notif

execute store result score $nexus.health rift.data run data get entity @s Health
data modify storage rift:temp nexus.UUID set from entity @s UUID

scoreboard players add $nexus.time rift.data 1
execute if score $nexus.health_notif rift.data matches 1.. run scoreboard players remove $nexus.health_notif rift.data 1

###
### Nexus Main
###

#waves
execute if score $nexus.time rift.data matches 1 run tellraw @a[distance=..96] [{"text":"30 seconds until a new wave a mobs begins.","color":"dark_red"}]

execute if score $nexus.time rift.data matches 1 if score $nexus.wave rift.data matches 1 run function rift:nexus/add_mobs
execute if score $nexus.time rift.data matches 600 if data storage rift:temp nexus.mobs[0] run function rift:nexus/spawn_start
execute if score $nexus.time rift.data matches 620.. if score $timer.50 rift.data matches 0 if data storage rift:temp nexus.mobs[0] run function rift:mobs/spawn_1
execute if score $timer.20 rift.data matches 0 if score $nexus.time rift.data matches 900.. unless entity @e[tag=rift.mob,distance=..96] run function rift:nexus/next_wave

execute if score $nexus.wave rift.data matches 1..5 if score $nexus.time rift.data matches 4000.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 6..10 if score $nexus.time rift.data matches 4400.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 11..15 if score $nexus.time rift.data matches 4800.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 16..20 if score $nexus.time rift.data matches 5200.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 21..25 if score $nexus.time rift.data matches 5600.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 26..30 if score $nexus.time rift.data matches 6600.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 31..35 if score $nexus.time rift.data matches 7200.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 36..40 if score $nexus.time rift.data matches 7800.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 41..45 if score $nexus.time rift.data matches 8400.. run function rift:nexus/next_wave
execute if score $nexus.wave rift.data matches 46.. if score $nexus.time rift.data matches 9000.. run function rift:nexus/next_wave

#Taking Damage Notification
execute if score $nexus.health rift.data < $nexus.phealth rift.data if score $nexus.health_notif rift.data matches 0 run tellraw @a[distance=..96] [{"text":"The Nexus is under attack!","color":"red"}]
execute if score $nexus.health rift.data < $nexus.phealth rift.data if score $nexus.health_notif rift.data matches 0 run scoreboard players set $nexus.health_notif rift.data 300

#Health Display
execute if score $nexus.health rift.data matches ..100 run data merge entity @s {CustomName:'[{"text":"█","color":"dark_green","italic":false},{"text":"███████","color":"dark_red","italic":false}]'}
execute if score $nexus.health rift.data matches 101..150 run data merge entity @s {CustomName:'[{"text":"██","color":"dark_green","italic":false},{"text":"██████","color":"dark_red","italic":false}]'}
execute if score $nexus.health rift.data matches 151..200 run data merge entity @s {CustomName:'[{"text":"███","color":"dark_green","italic":false},{"text":"█████","color":"dark_red","italic":false}]'}
execute if score $nexus.health rift.data matches 201..250 run data merge entity @s {CustomName:'[{"text":"████","color":"dark_green","italic":false},{"text":"████","color":"dark_red","italic":false}]'}
execute if score $nexus.health rift.data matches 251..300 run data merge entity @s {CustomName:'[{"text":"█████","color":"dark_green","italic":false},{"text":"███","color":"dark_red","italic":false}]'}
execute if score $nexus.health rift.data matches 301..350 run data merge entity @s {CustomName:'[{"text":"██████","color":"dark_green","italic":false},{"text":"██","color":"dark_red","italic":false}]'}
execute if score $nexus.health rift.data matches 351..400 run data merge entity @s {CustomName:'[{"text":"███████","color":"dark_green","italic":false},{"text":"█","color":"dark_red","italic":false}]'}
execute if score $nexus.health rift.data matches 401.. run data merge entity @s {CustomName:'[{"text":"████████","color":"dark_green","italic":false}]'}

#Death Effect
execute if score $nexus.health rift.data matches ..50 run function rift:nexus/death

#particles
particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 1 1

#custom mobs
function rift:custom_mob/main

###
### Save Data
###
execute store result storage rift:temp nexus.id int 1 run scoreboard players get @s rift.data
execute store result storage rift:temp nexus.time int 1 run scoreboard players get $nexus.time rift.data
execute store result storage rift:temp nexus.wave int 1 run scoreboard players get $nexus.wave rift.data
execute store result storage rift:temp nexus.phealth int 1 run scoreboard players get $nexus.health rift.data
execute store result storage rift:temp nexus.health_notif int 1 run scoreboard players get $nexus.health_notif rift.data

data modify entity @s ArmorItems[0].tag.nexus set from storage rift:temp nexus

