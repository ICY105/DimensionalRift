
advancement revoke @s only rift:trades/turret
clear @s minecraft:arrow{rift_turret:1b}
tag @e[tag=rift.nexus,distance=..12,sort=nearest,limit=1] add rift.turret
tellraw @a[distance=..96] [{"selector":"@s","color":"light_purple"},{"text":" purchased Nexus Emergancy Turret.","color":"light_purple"}]
