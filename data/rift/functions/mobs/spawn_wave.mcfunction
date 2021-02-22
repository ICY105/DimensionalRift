execute if entity @s[scores={rift_power=0..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=0..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=0..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=1..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=1..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=2..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=2..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie_villager"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=3..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=3..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=4}] run tellraw @a[distance=..64] ["",{"text":"A Killer Bunny Boss has forced its way through the rift!","color":"dark_red"}]
execute if entity @s[scores={rift_power=4}] run summon rabbit ~ ~1 ~ {Tags:["nexus_mob_spawn","nexus_mob","nexus_bunny_boss"],RabbitType:99,Attributes:[{Name:generic.maxHealth,Base:80},{Name:generic.movementSpeed,Base:0.4},{Name:generic.attackDamage,Base:40},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:100.0f,Glowing:1b,Team:"attackers",DeathLootTable:"rift:boss_bunny",ActiveEffects:[{Id:8,Amplifier:3,Duration:20000,ShowParticles:0b}]}
execute if entity @s[scores={rift_power=4}] run bossbar set rift:killer_bunny players @a[distance=..96]
execute if entity @s[scores={rift_power=4}] run bossbar set rift:killer_bunny value 80
execute if entity @s[scores={rift_power=4..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie_villager"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=4..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=5..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=5..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=6..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=6..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_stray"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=7..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_stray"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=7..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_creeper"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=8..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=8..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_cave_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=9}] run tellraw @a[distance=..64] ["",{"text":"A Witch Boss has forced its way through the rift!","color":"dark_red"}]
execute if entity @s[scores={rift_power=9}] run summon witch ~ ~1 ~ {Tags:["nexus_mob_spawn","nexus_mob","nexus_witch","nexus_custom","nexus_witch_boss"],Attributes:[{Name:generic.maxHealth,Base:100},{Name:generic.movementSpeed,Base:0.35},{Name:generic.followRange,Base:64}],Health:100.0f,Glowing:1b,Team:"attackers",DeathLootTable:"rift:boss_witch"}
execute if entity @s[scores={rift_power=9}] run bossbar set rift:witch players @a[distance=..96]
execute if entity @s[scores={rift_power=9}] run bossbar set rift:witch value 100
execute if entity @s[scores={rift_power=9..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie_villager"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=9..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_creeper"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=10..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_cave_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=10..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_vindicator"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=11..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_vindicator"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=11..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_stray_jockey"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=12..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=12..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_slime"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=13..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_stray_jockey"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=13..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_silverfish"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=14}] run tellraw @a[distance=..64] ["",{"text":"An Illusioner Boss has forced its way through the rift!","color":"dark_red"}]
execute if entity @s[scores={rift_power=14}] run summon illusioner ~ ~1 ~ {Tags:["nexus_mob_spawn","nexus_mob","nexus_illusioner_boss"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{ench:[{id:48,lvl:3},{id:49,lvl:1}]}},{}],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:100},{Name:generic.movementSpeed,Base:0.2},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Health:100.0f,Glowing:1b,Team:"attackers",DeathLootTable:"rift:boss_illusioner"}
execute if entity @s[scores={rift_power=14}] run bossbar set rift:illusioner players @a[distance=..96]
execute if entity @s[scores={rift_power=14}] run bossbar set rift:illusioner value 100
execute if entity @s[scores={rift_power=14..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=14..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_slime"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=15..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=15..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_witch"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=16..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_stray"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=16..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_guardian"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=17..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_witch"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=17..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_evoker"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=18..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_gurdian"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=18..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_endermite"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=19}] run tellraw @a[distance=..64] ["",{"text":"A Magma Boss has forced its way through the rift!","color":"dark_red"}]
execute if entity @s[scores={rift_power=19}] run summon magma_cube ~ ~1 ~ {Tags:["nexus_mob_spawn","nexus_mob","nexus_magma_boss"],Size:7,Attributes:[{Name:generic.maxHealth,Base:150},{Name:generic.movementSpeed,Base:0.3},{Name:generic.followRange,Base:64}],Health:150.0f,Glowing:1b,Team:"attackers",DeathLootTable:"rift:boss_magma",ActiveEffects:[{Id:8,Amplifier:5,Duration:20000,ShowParticles:0b}]}
execute if entity @s[scores={rift_power=19}] run bossbar set rift:magma players @a[distance=..96]
execute if entity @s[scores={rift_power=19}] run bossbar set rift:magma value 150
execute if entity @s[scores={rift_power=19..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie_villager"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=19..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_evoker"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=20..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=20..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_pigman"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=21..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=21..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_wither_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=22..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_pigman"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=22..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_ghast"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=23..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_wither_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=23..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_blaze"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=24}] run tellraw @a[distance=..64] ["",{"text":"An Wither Boss has forced its way through the rift!","color":"dark_red"}]
execute if entity @s[scores={rift_power=24}] run summon wither ~ ~1 ~ {Tags:["nexus_mob_spawn","nexus_mob"],Invul:300,Attributes:[{Name:generic.maxHealth,Base:600}],Health:600.0f,Team:"attackers",DeathLootTable:"rift:boss_wither"}
execute if entity @s[scores={rift_power=24..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_ghast"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=24..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_blaze"],NoGravity:1b,Invisible:1,Invulnerable:1}

#Cleanup
particle portal ~ ~1 ~ 0.25 0.25 0.25 1 1000
execute as @a[distance=..64] at @s run playsound minecraft:block.portal.travel voice @s ~ ~ ~ 1 1 1

execute as @e[tag=nexus_mob_spawn] run spreadplayers ~ ~ 0.001 64 false @s
execute as @e[tag=nexus_mob_group] at @s run function rift:mobs/mob_spawning
execute as @e[tag=nexus_mob_target] at @s run summon snowball ~ ~4 ~ {ownerName:"00000000-0000-0001-0000-000000000001",Motion:[0.0,-1.0]}