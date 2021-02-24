
function rift:mobs/spawn_1

scoreboard players remove $nexus.in_0 rift.data 1
execute if score $nexus.in_0 rift.data matches 1.. run function rift:nexus/spawn_start_2
