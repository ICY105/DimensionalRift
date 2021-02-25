
advancement revoke @s only rift:trades/mining_fatigue
clear @s minecraft:wooden_pickaxe{rift_mining_fatigue:1b}
tag @e[tag=rift.nexus,distance=..12,sort=nearest,limit=1] add rift.mining_fatigue
tellraw @a[distance=..96] [{"selector":"@s","color":"light_purple"},{"text":" purchased Nexus Mining Fatigue Aura.","color":"light_purple"}]
