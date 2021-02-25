
execute store result score $mobs.temp_1 rift.data run data get entity @s HandItems[0].tag.rift_break_power

scoreboard players set $mobs.temp_2 rift.data 1
execute if block ~ ~ ~ #rift:shovel run scoreboard players set $mobs.temp_2 rift.data 2
execute if block ~ ~ ~ #rift:axe run scoreboard players set $mobs.temp_2 rift.data 3

execute if score $mobs.temp_1 rift.data matches 4 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/wooden_pickaxe
execute if score $mobs.temp_1 rift.data matches 4 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/wooden_shovel
execute if score $mobs.temp_1 rift.data matches 4 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/wooden_axe

execute if score $mobs.temp_1 rift.data matches 5 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/golden_pickaxe
execute if score $mobs.temp_1 rift.data matches 5 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/golden_shovel
execute if score $mobs.temp_1 rift.data matches 5 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/golden_axe

execute if score $mobs.temp_1 rift.data matches 6 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/stone_pickaxe
execute if score $mobs.temp_1 rift.data matches 6 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/stone_shovel
execute if score $mobs.temp_1 rift.data matches 6 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/stone_axe

execute if score $mobs.temp_1 rift.data matches 7 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/iron_pickaxe
execute if score $mobs.temp_1 rift.data matches 7 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/iron_shovel
execute if score $mobs.temp_1 rift.data matches 7 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/iron_axe

execute if score $mobs.temp_1 rift.data matches 8 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/diamond_pickaxe
execute if score $mobs.temp_1 rift.data matches 8 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/diamond_shovel
execute if score $mobs.temp_1 rift.data matches 8 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/diamond_axe

execute if score $mobs.temp_1 rift.data matches 9 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/netherite_pickaxe
execute if score $mobs.temp_1 rift.data matches 9 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/netherite_shovel
execute if score $mobs.temp_1 rift.data matches 9 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/netherite_axe
