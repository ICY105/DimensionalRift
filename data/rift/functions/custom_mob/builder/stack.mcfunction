
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy

execute positioned ~ ~-1 ~1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~ ~-1 ~ if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy

execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~  minecraft:oak_planks destroy
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #rift:no_hitbox run setblock ~ ~ ~ minecraft:oak_planks destroy

execute as @e[tag=rift.mob,distance=..2] at @s run tp @s ~ ~1 ~
