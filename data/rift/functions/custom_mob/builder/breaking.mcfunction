
execute if block ^ ^0.5 ^1 #rift:unbreakable if block ^ ^1.5 ^1 #rift:unbreakable run tag @s remove rift.breaking
execute if block ~ ~-0.25 ~ #rift:no_hitbox run tag @s remove rift.breaking

scoreboard players add @s rift.data 1

#get block stats
scoreboard players set $mobs.temp_0 rift.data 0
scoreboard players set $mobs.out_0 rift.data 0
execute if score $mobs.temp_0 rift.data matches 0 positioned ^1 ^2.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 1
execute if score $mobs.temp_0 rift.data matches 0 positioned ^1 ^1.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 2
execute if score $mobs.temp_0 rift.data matches 0 positioned ^1 ^0.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 3

execute if score $mobs.temp_0 rift.data matches 0 positioned ^-1 ^2.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 4
execute if score $mobs.temp_0 rift.data matches 0 positioned ^-1 ^1.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 5
execute if score $mobs.temp_0 rift.data matches 0 positioned ^-1 ^0.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 6

execute if score $mobs.temp_0 rift.data matches 0 positioned ^ ^2.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 7
execute if score $mobs.temp_0 rift.data matches 0 positioned ^ ^1.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 8
execute if score $mobs.temp_0 rift.data matches 0 positioned ^ ^0.5 ^1 unless block ~ ~ ~ #rift:unbreakable run function rift:custom_mob/builder/block_stats
execute if score $mobs.temp_0 rift.data matches 0 if score $mobs.out_0 rift.data matches 1.. run scoreboard players set $mobs.temp_0 rift.data 9

#break speed
execute store result score $mobs.temp_1 rift.data run data get entity @s HandItems[0].tag.rift_break_power
execute store result score $mobs.temp_2 rift.data run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:efficiency"}].lvl
scoreboard players operation $mobs.temp_1 rift.data += $mobs.temp_2 rift.data
execute if entity @s[nbt={ActiveEffects:[{Id:3b}]}] run scoreboard players operation $mobs.temp_1 rift.data *= $cons.2 rift.data
execute if entity @s[nbt={ActiveEffects:[{Id:4b}]}] run scoreboard players operation $mobs.temp_1 rift.data /= $cons.2 rift.data

scoreboard players operation @s rift.data += $mobs.temp_1 rift.data

#break block
execute if score $mobs.temp_0 rift.data matches 1 if score @s rift.data > $mobs.out_0 rift.data run setblock ^1 ^2.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 2 if score @s rift.data > $mobs.out_0 rift.data run setblock ^1 ^1.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 3 if score @s rift.data > $mobs.out_0 rift.data run setblock ^1 ^0.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 4 if score @s rift.data > $mobs.out_0 rift.data run setblock ^-1 ^2.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 5 if score @s rift.data > $mobs.out_0 rift.data run setblock ^-1 ^1.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 6 if score @s rift.data > $mobs.out_0 rift.data run setblock ^-1 ^0.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 7 if score @s rift.data > $mobs.out_0 rift.data run setblock ^ ^2.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 8 if score @s rift.data > $mobs.out_0 rift.data run setblock ^ ^1.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 9 if score @s rift.data > $mobs.out_0 rift.data run setblock ^ ^0.5 ^1 minecraft:air destroy
execute if score $mobs.temp_0 rift.data matches 1..9 if score @s rift.data > $mobs.out_0 rift.data run scoreboard players set @s rift.data 0
