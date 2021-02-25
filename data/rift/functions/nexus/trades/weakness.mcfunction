
advancement revoke @s only rift:trades/weakness
clear @s minecraft:fermented_spider_eye{rift_weakness:1b}
tag @e[tag=rift.nexus,distance=..12,sort=nearest,limit=1] add rift.weakness
tellraw @a[distance=..96] [{"selector":"@s","color":"light_purple"},{"text":" purchased Nexus Weakness Aura.","color":"light_purple"}]
