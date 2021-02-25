
advancement revoke @s only rift:trades/teleport
clear @s minecraft:ender_pearl{rift_teleport:1b}
tag @e[tag=rift.nexus,distance=..12,sort=nearest,limit=1] add rift.teleport
tellraw @a[distance=..96] [{"selector":"@s","color":"light_purple"},{"text":" purchased Nexus Emergency Teleportation Aura.","color":"light_purple"}]
