
execute as @e[tag=rift.target] at @s run attribute @s minecraft:generic.knockback_resistance modifier add 2-4-6-8-b generic.knockback_resistance 127 add
execute as @e[tag=rift.target] at @s run summon snowball ~ ~3 ~ {Tags:["rift.target"],Owner:[I;0,0,0,0],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:air",Count:1b}}
execute as @e[tag=rift.target,type=snowball] run data modify entity @s Owner set from storage rift:temp nexus.UUID