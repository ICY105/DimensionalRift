
tag @s remove rift.new

execute store result score $nexus.temp_0 rift.data run data get entity @s Pos[0] 100
execute store result score $nexus.temp_1 rift.data run data get entity @s Pos[1] 100
execute store result score $nexus.temp_2 rift.data run data get entity @s Pos[2] 100

execute facing entity @e[tag=rift.mob,distance=..8,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1 ~ ~

execute store result score $nexus.temp_3 rift.data run data get entity @s Pos[0] 100
execute store result score $nexus.temp_4 rift.data run data get entity @s Pos[1] 100
execute store result score $nexus.temp_5 rift.data run data get entity @s Pos[2] 100

scoreboard players operation $nexus.temp_3 rift.data -= $nexus.temp_0 rift.data
scoreboard players operation $nexus.temp_4 rift.data -= $nexus.temp_1 rift.data
scoreboard players operation $nexus.temp_5 rift.data -= $nexus.temp_2 rift.data

execute store result entity @s Motion[0] double 0.01 run scoreboard players get $nexus.temp_3 rift.data
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $nexus.temp_4 rift.data
execute store result entity @s Motion[2] double 0.01 run scoreboard players get $nexus.temp_5 rift.data

tp @s ~ ~ ~
