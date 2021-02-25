
execute align xyz run summon minecraft:villager ~0.5 ~ ~0.5 {Tags:["rift.nexus","rift_new"],CustomNameVisible:1,NoGravity:1b,Health:450.0f,NoAI:1b,Silent:1b,Glowing:1b,Team:"rift.nexus",VillagerData:{profession:"minecraft:none",type:"minecraft:plains"},Offers:{Recipes:[]},CustomName:'[{"text":"████████","color":"dark_green","italic":false}]',ArmorItems:[{id:"minecraft:stone_button",Count:1b,tag:{ nexus:{id:-1,time:0,wave:1,phealth:400,health_notif:0,nexus.turret_cooldown:0,teleport_cooldown:0,UUID:[I;0,0,0,0],mobs:[]} }},{},{},{}],Attributes:[{Name:generic.max_health,Base:450},{Name:generic.knockback_resistance,Base:1}]}

#assign score UUID
scoreboard players add $UUID rift.data 1
scoreboard players operation @e[tag=rift_new,limit=1] rift.data = $UUID rift.data

#spawn effects
playsound minecraft:item.totem.use voice @a[distance=..96] ~ ~ ~ 1 1 1
particle portal ~ ~1 ~ 0.25 0.25 0.25 1 1000
tellraw @a[distance=..96] [{"text":"A ","color":"dark_red"},{"text":"rift","color":"light_purple"},{"text":" to another dimension has been opened.","color":"dark_red"}]
advancement grant @a[distance=..96] only rift:rift

#copy data
execute as @e[tag=rift_new,limit=1] run data modify entity @s ArmorItems[0].tag.nexus.UUID set from entity @s UUID
execute as @e[tag=rift_new,limit=1] store result entity @s ArmorItems[0].tag.nexus.id int 1 run scoreboard players get @s rift.data

#add trades
data modify storage rift:temp list set value []

data modify storage rift:temp list append value {rewardExp:1b,maxUses:1,xp:0,buy:{id:"minecraft:diamond",tag:{},Count:5b},sell:{id:"minecraft:ghast_tear",Count:1b,tag:{rift_regen:1b,display:{Name:'{"text":"Rift Stabilization","italic":false,"color":"dark_red"}',Lore:['{"text":"Repairs some damage at the end of each round","color":"gray","italic":false}']}}}}
data modify storage rift:temp list[-1].buy.tag set from storage rift:temp flux_tag

data modify storage rift:temp list append value {rewardExp:1b,maxUses:1,xp:0,buy:{id:"minecraft:diamond",tag:{},Count:5b},sell:{id:"minecraft:soul_sand",Count:1b,tag:{rift_slowness:1b,display:{Name:'{"text":"Slowness Aura","italic":false,"color":"dark_red"}',Lore:['{"text":"Slows nearby mobs","color":"gray","italic":false}']}}}}
data modify storage rift:temp list[-1].buy.tag set from storage rift:temp flux_tag

data modify storage rift:temp list append value {rewardExp:1b,maxUses:1,xp:0,buy:{id:"minecraft:diamond",tag:{},Count:5b},sell:{id:"minecraft:fermented_spider_eye",Count:1b,tag:{rift_weakness:1b,display:{Name:'{"text":"Weakness Aura","italic":false,"color":"dark_red"}',Lore:['{"text":"Decreases nearby mobs\' damage","color":"gray","italic":false}']}}}}
data modify storage rift:temp list[-1].buy.tag set from storage rift:temp flux_tag

data modify storage rift:temp list append value {rewardExp:1b,maxUses:1,xp:0,buy:{id:"minecraft:diamond",tag:{},Count:5b},sell:{id:"minecraft:glowstone",Count:1b,tag:{rift_glowing:1b,display:{Name:'{"text":"Glow Aura","italic":false,"color":"dark_red"}',Lore:['{"text":"Illuminates nearby mobs","color":"gray","italic":false}']}}}}
data modify storage rift:temp list[-1].buy.tag set from storage rift:temp flux_tag

data modify storage rift:temp list append value {rewardExp:1b,maxUses:1,xp:0,buy:{id:"minecraft:diamond",tag:{},Count:5b},sell:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{rift_mining_fatigue:1b,display:{Name:'{"text":"Mining Fatigue Aura","italic":false,"color":"dark_red"}',Lore:['{"text":"Slows the work speed of breaching mobs","color":"gray","italic":false}']}}}}
data modify storage rift:temp list[-1].buy.tag set from storage rift:temp flux_tag

data modify storage rift:temp list append value {rewardExp:1b,maxUses:1,xp:0,buy:{id:"minecraft:diamond",tag:{},Count:10b},sell:{id:"minecraft:ender_pearl",Count:1b,tag:{rift_teleport:1b,display:{Name:'{"text":"Emergency Teleportation Aura","italic":false,"color":"dark_red"}',Lore:['{"text":"Teleports attacking mobs away","color":"gray","italic":false}','{"text":"Long cooldown","color":"gray","italic":false}']}}}}
data modify storage rift:temp list[-1].buy.tag set from storage rift:temp flux_tag

data modify storage rift:temp list append value {rewardExp:1b,maxUses:1,xp:0,buy:{id:"minecraft:diamond",tag:{},Count:10b},sell:{id:"minecraft:iron_block",Count:1b,tag:{rift_resistance:1b,display:{Name:'{"text":"Resistance Barrier","italic":false,"color":"dark_red"}',Lore:['{"text":"Reduces damage taken by the nexus","color":"gray","italic":false}']}}}}
data modify storage rift:temp list[-1].buy.tag set from storage rift:temp flux_tag

data modify storage rift:temp list append value {rewardExp:1b,maxUses:1,xp:0,buy:{id:"minecraft:diamond",tag:{},Count:10b},sell:{id:"minecraft:arrow",Count:1b,tag:{rift_turret:1b,display:{Name:'{"text":"Emergency Turret","italic":false,"color":"dark_red"}',Lore:['{"text":"Fires bursts of arrows at attacking mobs","color":"gray","italic":false}','{"text":"Long cooldown","color":"gray","italic":false}']}}}}
data modify storage rift:temp list[-1].buy.tag set from storage rift:temp flux_tag

data modify entity @e[tag=rift_new,limit=1] Offers.Recipes set from storage rift:temp list

#cleanup
tag @e[tag=rift_new] remove rift_new
kill @s
