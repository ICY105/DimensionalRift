particle portal ~ ~1 ~ 0.25 0.25 0.25 1 1000
playsound minecraft:block.portal.travel voice @a[distance=..64] ~ ~ ~ 1 1 1

summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=1..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=1..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=2..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=2..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_pigman"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=3..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=3..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=4..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=4..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=5..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=5..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=6..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=6..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_stray"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=7..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=7..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_vindicator"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=8..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=8..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_cave_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=9}] run tellraw @a[distance=..64] ["",{"text":"An evoker boss has forced its way through the ","color":"dark_red"},{"text":"rift!","color":"light_purple"}]
execute if entity @s[scores={rift_power=9}] run summon evocation_illager ~ ~1 ~ {CustomName:"Evoker Boss",CustomNameVisible:1,Tags:["nexus_mob","nexus_mob_spawn"],Attributes:[{Name:generic.maxHealth,Base:128},{Name:generic.movementSpeed,Base:0},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Glowing:1b,Team:"attackers"}

execute if entity @s[scores={rift_power=10..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_evoker"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=10..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie_calvary"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=11..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_pigman"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=11..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_wither_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=12..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=12..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_cave_spider"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=13..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_evoker"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=13..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_wither_skeleton"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=14}] run tellraw @a[distance=..64] ["",{"text":"A witch boss has forced its way through the ","color":"dark_red"},{"text":"rift!","color":"light_purple"}]
execute if entity @s[scores={rift_power=14}] run summon witch ~ ~1 ~ {CustomName:"Witch Boss",CustomNameVisible:1,Tags:["nexus_mob","nexus_mob_spawn","nexus_witch_boss"],Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.movementSpeed,Base:0.3},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1}],Glowing:1b,Team:"attackers"}

execute if entity @s[scores={rift_power=15..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_silverfish"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=15..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk_calvary"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=16..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_skeleton_calvary"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=16..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie_calvary"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=17..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_husk_calvary"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=17..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_bear"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=18..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_zombie_calvary"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute if entity @s[scores={rift_power=18..}] run summon armor_stand ~ ~1 ~ {Tags:["nexus_mob_group","nexus_mob_spawn","nexus_group_vex"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute if entity @s[scores={rift_power=19..}] run tellraw @a[distance=..64] ["",{"text":"Wither Boss: Puny humans!","color":"red"},{"text":"\nA wither boss has forced its way through the ","color":"dark_red"},{"text":"rift!","color":"light_purple"}]
execute if entity @s[scores={rift_power=19..}] run summon wither ~ ~1 ~ {CustomName:"Wither Boss",CustomNameVisible:1,Tags:["nexus_mob","nexus_mob_spawn"],Invul:300,Attributes:[{Name:generic.maxHealth,Base:600},{Name:generic.followRange,Base:64}],Glowing:1b,Team:"attackers"}

execute as @e[tag=nexus_mob_spawn] run spreadplayers ~ ~ 0.001 64 false @s
execute as @e[type=armor_stand,tag=nexus_mob_group] at @s run function rift:mob_spawning
execute as @e[tag=nexus_mob_target] at @s run summon snowball ~ ~4 ~ {ownerName:"00000000-0000-0001-0000-000000000001",Motion:[0.0,-1.0]}