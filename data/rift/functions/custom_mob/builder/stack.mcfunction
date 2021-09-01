
execute positioned ~1 ~2 ~1 unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~2 ~ unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~2 ~-1 unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~ ~ minecraft:air destroy

execute positioned ~ ~2 ~1 unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~2 ~ unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~2 ~-1 unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~ ~ minecraft:air destroy

execute positioned ~-1 ~2 ~1 unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~  minecraft:air destroy
execute positioned ~-1 ~2 ~ unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-1 ~2 ~-1 unless block ~ ~ ~ #rift:unbreakable run setblock ~ ~ ~ minecraft:air destroy



execute positioned ~1 ~ ~1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~1 ~ ~ if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy

execute positioned ~ ~ ~1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~ ~ ~ if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy

execute positioned ~-1 ~ ~1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~  minecraft:oak_planks destroy
execute positioned ~-1 ~ ~ if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy

execute as @e[tag=rift.mob,distance=..2] at @s run tp @s ~ ~1 ~
