
scoreboard players set $utils.in_0 rift.data 3600
function rift:utils/random
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get $utils.out_0 rift.data

execute store result score $mobs.in_0 rift.data run data get entity @s Pos[1]
execute at @s positioned ^ ^ ^86 run function rift:mobs/spawn_2

data merge entity @s {Rotation:[0.0f,0.0f]}
data remove storage rift:temp nexus.mobs[0]
