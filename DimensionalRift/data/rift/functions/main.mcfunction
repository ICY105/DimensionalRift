execute unless entity 00000000-0000-0001-0000-000000000001 at @a as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:nether_star"}}] at @s if block ~ ~-1 ~ minecraft:beacon run function rift:nexus_summon
execute as 00000000-0000-0001-0000-000000000001 at @s run function rift:nexus_core
