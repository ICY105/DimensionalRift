
scoreboard players set $mobs.out_0 rift.data 0

#look down for a suitable spawning space
scoreboard players operation $mobs.temp_0 rift.data = $mobs.in_0 rift.data
execute if score $mobs.temp_0 rift.data matches 60.. run scoreboard players set $mobs.temp_0 rift.data 60
execute if score $mobs.out_0 rift.data matches 0 run function rift:mobs/spawn_2_down

#look up for a suitable spawning space
scoreboard players set $mobs.temp_0 254
scoreboard players operation $mobs.temp_0 rift.data -= $mobs.in_0 rift.data
execute if score $mobs.temp_0 rift.data matches 60.. run scoreboard players set $mobs.temp_0 rift.data 60
execute if score $mobs.out_0 rift.data matches 0 run function rift:mobs/spawn_2_up

#if not space is found, create one
execute if score $mobs.out_0 rift.data matches 0 run fill ~-1 ~ ~-1 ~1 ~3 ~1 minecraft:air
execute if score $mobs.out_0 rift.data matches 0 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:stone_bricks
execute if score $mobs.out_0 rift.data matches 0 align xyz positioned ~0.5 ~0.6 ~0.5 run function rift:mobs/spawn_3
