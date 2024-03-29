
summon minecraft:zombie_villager ~1 ~1 ~1 {	Tags:["global.ignore.kill","rift.new","rift.mob","rift.target","rift.custom_mob","rift.builder","rift.armor","rift.tool","rift.build_far"],	IsVillager:0,IsBaby:0,DeathLootTable:"minecraft:empty",Team:"rift.builders",Attributes:[{Name:generic.max_health,Base:9},{Name:generic.movement_speed,Base:0.25},{Name:generic.follow_range,Base:96}],ActiveEffects:[{Id:7b,Amplifier:9b,Duration:10,ShowParticles:0b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{},{}]}
summon minecraft:zombie_villager ~ ~1 ~ {	Tags:["global.ignore.kill","rift.new","rift.mob","rift.target","rift.custom_mob","rift.builder","rift.armor","rift.tool","rift.build_near"],IsVillager:0,IsBaby:0,DeathLootTable:"minecraft:empty",Team:"rift.builders",Attributes:[{Name:generic.max_health,Base:9},{Name:generic.movement_speed,Base:0.25},{Name:generic.follow_range,Base:96}],ActiveEffects:[{Id:7b,Amplifier:9b,Duration:10,ShowParticles:0b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{},{}]}
summon minecraft:zombie_villager ~1 ~1 ~-1 {Tags:["global.ignore.kill","rift.new","rift.mob","rift.target","rift.custom_mob","rift.builder","rift.armor","rift.tool","rift.commander"],	IsVillager:0,IsBaby:0,DeathLootTable:"minecraft:empty",Team:"rift.builders",Attributes:[{Name:generic.max_health,Base:9},{Name:generic.movement_speed,Base:0.25},{Name:generic.follow_range,Base:96}],ActiveEffects:[{Id:7b,Amplifier:9b,Duration:10,ShowParticles:0b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{},{}]}

scoreboard players set @e[tag=rift.new] rift.data -100

loot replace entity @e[tag=rift.new,tag=rift.tool,tag=!rift.commander,distance=..3] weapon.mainhand loot rift:equipment/pickaxe/wooden_pickaxe
loot replace entity @e[tag=rift.new,tag=rift.tool,tag=rift.commander,distance=..3] weapon.mainhand loot rift:equipment/pickaxe/stone_pickaxe

loot replace entity @e[tag=rift.new,tag=rift.armor,distance=..3] armor.chest loot rift:equipment/armor/leather_chestplate
tag @e[tag=rift.new,distance=..3] remove rift.new

