
advancement revoke @s only rift:trades/regen
clear @s minecraft:ghast_tear{rift_regen:1b}
tag @e[tag=rift.nexus,distance=..12,sort=nearest,limit=1] add rift.regen
tellraw @a[distance=..96] [{"selector":"@s","color":"light_purple"},{"text":" purchased Nexus Regeneration.","color":"light_purple"}]
