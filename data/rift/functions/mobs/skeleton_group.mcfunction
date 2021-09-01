

summon minecraft:skeleton ~1 ~1 ~1 {	Tags:["global.ignore.kill","rift.mob","rift.new","rift.armor","rift.bow","rift.target"],					IsVillager:0,IsBaby:0,DeathLootTable:"minecraft:empty",Team:"rift.attackers",Attributes:[{Name:generic.max_health,Base:8},{Name:generic.movement_speed,Base:0.15},{Name:generic.follow_range,Base:96}],ActiveEffects:[{Id:7b,Amplifier:9b,Duration:10,ShowParticles:0b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{},{}]}
summon minecraft:skeleton ~ ~1 ~ {		Tags:["global.ignore.kill","rift.mob","rift.new","rift.armor","rift.bow","rift.target"],					IsVillager:0,IsBaby:0,DeathLootTable:"minecraft:empty",Team:"rift.attackers",Attributes:[{Name:generic.max_health,Base:8},{Name:generic.movement_speed,Base:0.15},{Name:generic.follow_range,Base:96}],ActiveEffects:[{Id:7b,Amplifier:9b,Duration:10,ShowParticles:0b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{},{}]}
summon minecraft:skeleton ~1 ~1 ~-1 {	Tags:["global.ignore.kill","rift.mob","rift.new","rift.armor","rift.bow","rift.target","rift.commander"],	IsVillager:0,IsBaby:0,DeathLootTable:"minecraft:empty",Team:"rift.attackers",Attributes:[{Name:generic.max_health,Base:8},{Name:generic.movement_speed,Base:0.15},{Name:generic.follow_range,Base:96}],ActiveEffects:[{Id:7b,Amplifier:9b,Duration:10,ShowParticles:0b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{},{}]}

loot replace entity @e[tag=rift.new,tag=rift.bow,tag=!rift.commander,distance=..3] weapon.mainhand loot rift:equipment/bow/bow_0
loot replace entity @e[tag=rift.new,tag=rift.bow,tag=rift.commander,distance=..3] weapon.mainhand loot rift:equipment/bow/bow_1

loot replace entity @e[tag=rift.new,tag=rift.armor,tag=!rift.commander,distance=..3] armor.chest loot rift:equipment/armor/leather_chestplate
loot replace entity @e[tag=rift.new,tag=rift.armor,tag=rift.commander,distance=..3] armor.chest loot rift:equipment/armor/golden_chestplate

tag @e[tag=rift.new,distance=..3] remove rift.new
