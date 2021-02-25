
advancement revoke @s only rift:trades/slowness
clear @s minecraft:soul_sand{rift_slowness:1b}
tag @e[tag=rift.nexus,distance=..12,sort=nearest,limit=1] add rift.slowness
tellraw @a[distance=..96] [{"selector":"@s","color":"light_purple"},{"text":" purchased Nexus Slowness Aura.","color":"light_purple"}]
