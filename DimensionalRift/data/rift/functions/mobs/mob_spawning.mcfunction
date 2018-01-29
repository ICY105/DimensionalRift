#Zombie
execute if entity @s[tag=nexus_group_zombie] run summon zombie ~1 ~1 ~ {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.31},{Name:generic.followRange,Base:64}],Health:11.0f}
execute if entity @s[tag=nexus_group_zombie] run summon zombie ~-1 ~1 ~ {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.31},{Name:generic.followRange,Base:64}],Health:11.0f}
execute if entity @s[tag=nexus_group_zombie] run summon zombie ~ ~1 ~1 {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.movementSpeed,Base:0.31},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:14.0f,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0.0F,0.0F]}

#Skeleton
execute if entity @s[tag=nexus_group_skeleton] run summon skeleton ~1 ~1 ~ {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:6},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:6.0f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_skeleton] run summon skeleton ~-1 ~1 ~ {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:6},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:6.0f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_skeleton] run summon skeleton ~ ~1 ~1 {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:11.0f,HandItems:[{id:"minecraft:bow",tag:{ench:[{id:49,lvl:1}]},Count:1b},{id:"minecraft:arrow",Count:1b}],HandDropChances:[0.0F,0.0F]}

#Zombie Villager
execute if entity @s[tag=nexus_group_zombie_villager] run summon zombie ~1 ~1 ~ {Tags:["nexus_mob","nexus_builder","nexus_target"],IsVillager:1,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:30},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:30.0f,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{id:"minecraft:oak_planks",Count:1b}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_zombie_villager] run summon zombie ~-1 ~1 ~ {Tags:["nexus_mob","nexus_builder","nexus_target"],IsVillager:1,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:30},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:30.0f,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{id:"minecraft:oak_planks",Count:1b}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_zombie_villager] run summon zombie ~ ~1 ~1 {Tags:["nexus_mob","nexus_builder","nexus_target"],IsVillager:1,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:30},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:30.0f,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{id:"minecraft:oak_planks",Count:1b}],HandDropChances:[0.0F,0.0F]}

#Spider
execute if entity @s[tag=nexus_group_spider] run summon spider ~1 ~1 ~ {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:6},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:6.0f}
execute if entity @s[tag=nexus_group_spider] run summon spider ~-1 ~1 ~ {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:6},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:6.0f}
execute if entity @s[tag=nexus_group_spider] run summon spider ~ ~1 ~1 {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:6},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:6.0f}

#Husk
execute if entity @s[tag=nexus_group_husk] run summon husk ~1 ~1 ~ {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:30},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64}],Health:30.0f}
execute if entity @s[tag=nexus_group_husk] run summon husk ~-1 ~1 ~ {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:30},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64}],Health:30.0f}
execute if entity @s[tag=nexus_group_husk] run summon husk ~ ~1 ~1 {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:42},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:42.0f,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0.0F,0.0F]}



#Stray
execute if entity @s[tag=nexus_group_stray] run summon stray ~1 ~1 ~ {Tags:["nexus_mob","nexus_target"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:8},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:8.0f,HandItems:[{id:"minecraft:bow",tag:{ench:[{id:49,lvl:3}]},Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_stray] run summon stray ~-1 ~1 ~ {Tags:["nexus_mob","nexus_target"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:8},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:8.0f,HandItems:[{id:"minecraft:bow",tag:{ench:[{id:49,lvl:3}]},Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_stray] run summon stray ~ ~1 ~1 {Tags:["nexus_mob","nexus_target"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:12},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:12.0f,HandItems:[{id:"minecraft:bow",tag:{ench:[{id:49,lvl:3},{id:49,lvl:1}]},Count:1b},{id:"minecraft:arrow",Count:1b}],HandDropChances:[0.0F,0.0F]}

#Creeper
execute if entity @s[tag=nexus_group_creeper] run summon stray ~1 ~1 ~ {Tags:["nexus_mob","nexus_bomb","nexus_target"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:24},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64}],Health:24.0f}
execute if entity @s[tag=nexus_group_creeper] run summon stray ~-1 ~1 ~ {Tags:["nexus_mob","nexus_bomb","nexus_target"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:24},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64}],Health:24.0f}

#Cave Spider
execute if entity @s[tag=nexus_group_cave_spider] run summon cave_spider ~1 ~1 ~ {Tags:["nexus_mob","nexus_target"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:11.0f}
execute if entity @s[tag=nexus_group_cave_spider] run summon cave_spider ~-1 ~1 ~ {Tags:["nexus_mob","nexus_target"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:11.0f}
execute if entity @s[tag=nexus_group_cave_spider] run summon cave_spider ~ ~1 ~1 {Tags:["nexus_mob","nexus_target"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:11.0f}

#Vindicator
execute if entity @s[tag=nexus_group_vindicator] run summon vindication_illager ~1 ~1 ~ {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64},{Name:generic.attackDamage,Base:10}],Health:11.0f,HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_vindicator] run summon vindication_illager ~-1 ~1 ~ {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64},{Name:generic.attackDamage,Base:10}],Health:11.0f,HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_vindicator] run summon vindication_illager ~ ~1 ~1 {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64},{Name:generic.attackDamage,Base:14}],Health:14.0f,HandItems:[{id:"minecraft:diamond_axe",Count:1b},{}],HandDropChances:[0.0F,0.0F]}

#Stray Jockey
execute if entity @s[tag=nexus_group_stray_jockey] run summon spider ~1 ~1 ~ {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:11.0f,Team:"attackers",Passengers:[{Tags:["nexus_mob"],id:"stray",HandItems:[{id:"minecraft:bow",Count:1b,tag:{ench:[{id:48,lvl:3}]}},{}],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:11.0f,Team:"attackers"}]}
execute if entity @s[tag=nexus_group_stray_jockey] run summon spider ~-1 ~1 ~ {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:11.0f,Team:"attackers",Passengers:[{Tags:["nexus_mob"],id:"stray",HandItems:[{id:"minecraft:bow",Count:1b,tag:{ench:[{id:48,lvl:3}]}},{}],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:11},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:11.0f,Team:"attackers"}]}
execute if entity @s[tag=nexus_group_stray_jockey] run summon spider ~ ~1 ~1 {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.movementSpeed,Base:0.45},{Name:generic.followRange,Base:64}],Health:14.0f,Team:"attackers",Passengers:[{Tags:["nexus_mob"],id:"stray",HandItems:[{id:"minecraft:bow",Count:1b,tag:{ench:[{id:48,lvl:3},{id:49,lvl:1}]}},{id:"minecraft:arrow",Count:1b}],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:14.0f,Team:"attackers"}]}



#Slime
execute if entity @s[tag=nexus_group_slime] run summon slime ~1 ~1 ~ {Tags:["nexus_mob"],Size:3,Attributes:[{Name:generic.movementSpeed,Base:0.35},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Team:"attackers",ActiveEffects:[{Id:8,Amplifier:7,Duration:20000,ShowParticles:0b}]}
execute if entity @s[tag=nexus_group_slime] run summon slime ~-1 ~1 ~ {Tags:["nexus_mob"],Size:3,Attributes:[{Name:generic.movementSpeed,Base:0.35},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Team:"attackers",ActiveEffects:[{Id:8,Amplifier:7,Duration:20000,ShowParticles:0b}]}
execute if entity @s[tag=nexus_group_slime] run summon slime ~ ~1 ~1 {Tags:["nexus_mob"],Size:3,Attributes:[{Name:generic.movementSpeed,Base:0.35},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Team:"attackers",ActiveEffects:[{Id:8,Amplifier:7,Duration:20000,ShowParticles:0b}]}

#Silverfish
execute if entity @s[tag=nexus_group_silverfish] run summon silverfish ~1 ~1 ~ {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.movementSpeed,Base:0.6},{Name:generic.followRange,Base:64}],Health:1.0f,Team:"attackers"}
execute if entity @s[tag=nexus_group_silverfish] run summon silverfish ~-1 ~1 ~ {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.movementSpeed,Base:0.6},{Name:generic.followRange,Base:64}],Health:1.0f,Team:"attackers"}
execute if entity @s[tag=nexus_group_silverfish] run summon silverfish ~ ~1 ~1 {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.movementSpeed,Base:0.6},{Name:generic.followRange,Base:64}],Health:1.0f,Team:"attackers"}

#Witch
execute if entity @s[tag=nexus_group_witch] run summon witch ~ ~1 ~ {Tags:["nexus_mob","nexus_custom","nexus_witch"],HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{ench:[{id:48,lvl:1}]}},{}],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:24},{Name:generic.movementSpeed,Base:0.25},{Name:generic.followRange,Base:64}],Health:24.0f,Team:"attackers"}

#Guardian
execute if entity @s[tag=nexus_group_guardian] run summon guardian ~3 ~12 ~ {Tags:["nexus_mob"],NoGravity:1b,Attributes:[{Name:generic.maxHealth,Base:12},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:12.0f,Team:"attackers"}
execute if entity @s[tag=nexus_group_guardian] run summon guardian ~ ~12 ~-3 {Tags:["nexus_mob"],NoGravity:1b,Attributes:[{Name:generic.maxHealth,Base:12},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:12.0f,Team:"attackers"}

#Evoker
execute if entity @s[tag=nexus_group_evoker] run summon evocation_illager ~2 ~1 ~ {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:18},{Name:generic.movementSpeed,Base:0},{Name:generic.knockbackResistance,Base:1}],Health:18.0f,Team:"attackers"}
execute if entity @s[tag=nexus_group_evoker] run summon evocation_illager ~ ~1 ~-2 {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:18},{Name:generic.movementSpeed,Base:0},{Name:generic.knockbackResistance,Base:1}],Health:18.0f,Team:"attackers"}

#Endermite
execute if entity @s[tag=nexus_group_endermite] run summon endermite ~2 ~1 ~ {Tags:["nexus_mob","nexus_custom","nexus_endermite"],Attributes:[{Name:generic.maxHealth,Base:12},{Name:generic.movementSpeed,Base:0.3},{Name:generic.followRange,Base:64}],Health:12.0f,Team:"attackers"}
execute if entity @s[tag=nexus_group_endermite] run summon endermite ~ ~1 ~-2 {Tags:["nexus_mob","nexus_custom","nexus_endermite"],Attributes:[{Name:generic.maxHealth,Base:12},{Name:generic.movementSpeed,Base:0.3},{Name:generic.followRange,Base:64}],Health:12.0f,Team:"attackers"}

#Pigman
execute if entity @s[tag=nexus_group_pigman] run summon zombie_pigman ~1 ~1 ~ {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:18},{Name:generic.movementSpeed,Base:0.31},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:18.0f,HandItems:[{id:"minecraft:iron_sword",tag:{ench:[{id:20,lvl:1}]},Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_pigman] run summon zombie_pigman ~-1 ~1 ~ {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:18},{Name:generic.movementSpeed,Base:0.31},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:18.0f,HandItems:[{id:"minecraft:iron_sword",tag:{ench:[{id:20,lvl:1}]},Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_pigman] run summon zombie_pigman ~ ~1 ~1 {Tags:["nexus_mob"],IsVillager:0,IsBaby:0,Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:24},{Name:generic.movementSpeed,Base:0.31},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:24.0f,HandItems:[{id:"minecraft:diamond_sword",tag:{ench:[{id:20,lvl:2}]},Count:1b},{}],HandDropChances:[0.0F,0.0F]}

#Wither Skeleton
execute if entity @s[tag=nexus_group_wither_skeleton] run summon wither_skeleton ~1 ~1 ~ {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:14.0f,HandItems:[{id:"minecraft:bow",tag:{ench:[{id:48,lvl:4},{id:50,lvl:1}]},Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_wither_skeleton] run summon wither_skeleton ~-1 ~1 ~ {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:14.0f,HandItems:[{id:"minecraft:bow",tag:{ench:[{id:48,lvl:4},{id:50,lvl:1}]},Count:1b},{}],HandDropChances:[0.0F,0.0F]}
execute if entity @s[tag=nexus_group_wither_skeleton] run summon wither_skeleton ~ ~1 ~1 {Tags:["nexus_mob"],Team:"attackers",Attributes:[{Name:generic.maxHealth,Base:18},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64}],Health:18.0f,HandItems:[{id:"minecraft:bow",tag:{ench:[{id:48,lvl:5},{id:50,lvl:1},{id:49,lvl:1}]},Count:1b},{}],HandDropChances:[0.0F,0.0F]}

#Ghast
execute if entity @s[tag=nexus_group_ghast] run summon ghast ~3 ~10 ~ {Tags:["nexus_mob","nexus_mob_target"],Attributes:[{Name:generic.maxHealth,Base:12},{Name:generic.followRange,Base:64}],Health:12.0f,Team:"attackers"}
execute if entity @s[tag=nexus_group_ghast] run summon ghast ~ ~10 ~3 {Tags:["nexus_mob","nexus_mob_target"],Attributes:[{Name:generic.maxHealth,Base:12},{Name:generic.followRange,Base:64}],Health:12.0f,Team:"attackers"}

#Blaze
execute if entity @s[tag=nexus_group_ghast] run summon blaze ~3 ~10 ~ {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:18},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:18.0f,Team:"attackers"}
execute if entity @s[tag=nexus_group_ghast] run summon blaze ~ ~10 ~3 {Tags:["nexus_mob"],Attributes:[{Name:generic.maxHealth,Base:18},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:18.0f,Team:"attackers"}


#Cleanup
kill @s
