
#get data
execute store result score $mobs.temp_1 rift.data run data get entity @s HandItems[0].tag.rift_material
data modify storage rift:temp obj set from entity @s HandItems[0].tag

#get tool to switch to
scoreboard players set $mobs.temp_2 rift.data 1
execute if block ~ ~ ~ #minecraft:mineable/hoe run scoreboard players set $mobs.temp_2 rift.data 4
execute if block ~ ~ ~ #minecraft:mineable/shovel run scoreboard players set $mobs.temp_2 rift.data 3
execute if block ~ ~ ~ #minecraft:mineable/axe run scoreboard players set $mobs.temp_2 rift.data 2
execute if block ~ ~ ~ #minecraft:mineable/pickaxe run scoreboard players set $mobs.temp_2 rift.data 1

#switch tool
execute if score $mobs.temp_1 rift.data matches 1 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/pickaxe/wooden_pickaxe
execute if score $mobs.temp_1 rift.data matches 1 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/shovel/wooden_shovel
execute if score $mobs.temp_1 rift.data matches 1 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/axe/wooden_axe
execute if score $mobs.temp_1 rift.data matches 1 if score $mobs.temp_2 rift.data matches 4 run loot replace entity @s weapon.mainhand loot rift:equipment/golden/wooden_hoe

execute if score $mobs.temp_1 rift.data matches 2 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/pickaxe/stone_pickaxe
execute if score $mobs.temp_1 rift.data matches 2 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/shovel/stone_shovel
execute if score $mobs.temp_1 rift.data matches 2 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/axe/stone_axe
execute if score $mobs.temp_1 rift.data matches 2 if score $mobs.temp_2 rift.data matches 4 run loot replace entity @s weapon.mainhand loot rift:equipment/golden/stone_hoe

execute if score $mobs.temp_1 rift.data matches 3 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/pickaxe/iron_pickaxe
execute if score $mobs.temp_1 rift.data matches 3 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/shovel/iron_shovel
execute if score $mobs.temp_1 rift.data matches 3 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/axe/iron_axe
execute if score $mobs.temp_1 rift.data matches 3 if score $mobs.temp_2 rift.data matches 4 run loot replace entity @s weapon.mainhand loot rift:equipment/golden/iron_hoe

execute if score $mobs.temp_1 rift.data matches 4 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/pickaxe/diamond_pickaxe
execute if score $mobs.temp_1 rift.data matches 4 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/shovel/diamond_shovel
execute if score $mobs.temp_1 rift.data matches 4 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/axe/diamond_axe
execute if score $mobs.temp_1 rift.data matches 4 if score $mobs.temp_2 rift.data matches 4 run loot replace entity @s weapon.mainhand loot rift:equipment/golden/diamond_hoe

execute if score $mobs.temp_1 rift.data matches 5 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/pickaxe/netherite_pickaxe
execute if score $mobs.temp_1 rift.data matches 5 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/shovel/netherite_shovel
execute if score $mobs.temp_1 rift.data matches 5 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/axe/netherite_axe
execute if score $mobs.temp_1 rift.data matches 5 if score $mobs.temp_2 rift.data matches 4 run loot replace entity @s weapon.mainhand loot rift:equipment/golden/netherite_hoe

execute if score $mobs.temp_1 rift.data matches 6 if score $mobs.temp_2 rift.data matches 1 run loot replace entity @s weapon.mainhand loot rift:equipment/pickaxe/golden_pickaxe
execute if score $mobs.temp_1 rift.data matches 6 if score $mobs.temp_2 rift.data matches 2 run loot replace entity @s weapon.mainhand loot rift:equipment/shovel/golden_shovel
execute if score $mobs.temp_1 rift.data matches 6 if score $mobs.temp_2 rift.data matches 3 run loot replace entity @s weapon.mainhand loot rift:equipment/axe/golden_axe
execute if score $mobs.temp_1 rift.data matches 6 if score $mobs.temp_2 rift.data matches 4 run loot replace entity @s weapon.mainhand loot rift:equipment/golden/golden_hoe

#restore tag
data modify entity @s HandItems[0].tag set from storage rift:temp obj

