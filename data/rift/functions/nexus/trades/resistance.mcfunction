
advancement revoke @s only rift:trades/resistance
clear @s minecraft:iron_block{rift_resistance:1b}
tag @e[tag=rift.nexus,distance=..12,sort=nearest,limit=1] add rift.resistance
tellraw @a[distance=..96] [{"selector":"@s","color":"light_purple"},{"text":" purchased Nexus Resistance Barrier.","color":"light_purple"}]
