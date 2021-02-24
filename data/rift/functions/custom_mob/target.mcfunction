
execute as @e[tag=rift.target] at @s run summon snowball ~ ~3 ~ {Tags:["rift.target"],Owner:[I;0,0,0,0],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:air",Count:1b}}
execute as @e[tag=rift.target,type=snowball] run data modify entity @s Owner set from storage rift:temp nexus.UUID
