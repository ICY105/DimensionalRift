
advancement revoke @s only rift:trades/glowing
clear @s minecraft:glowstone{rift_glowing:1b}
tag @e[tag=rift.nexus,distance=..12,sort=nearest,limit=1] add rift.glowing
tellraw @a[distance=..96] [{"selector":"@s","color":"light_purple"},{"text":" purchased Nexus Glow Aura.","color":"light_purple"}]
