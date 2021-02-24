
execute align xyz run summon minecraft:villager ~0.5 ~ ~0.5 {Tags:["rift.nexus","rift.new"],CustomNameVisible:1,NoGravity:1b,Health:450.0f,NoAI:1b,Silent:1b,Glowing:1b,Team:"rift.nexus",VillagerData:{profession:"minecraft:none",type:"minecraft:plains"},CustomName:'[{"text":"████████","color":"dark_green","italic":false}]',ArmorItems:[{id:"minecraft:stone_button",Count:1b,tag:{ nexus:{id:-1,time:0,wave:1,phealth:400,health_notif:0,UUID:[I;0,0,0,0],mobs:[]} }},{},{},{}],Attributes:[{Name:generic.max_health,Base:450},{Name:generic.knockback_resistance,Base:1}]}

#assign score UUID
scoreboard players add $UUID rift.data 1
scoreboard players operation @e[tag=rift.new,limit=1] rift.data = $UUID rift.data

#spawn effects
playsound minecraft:item.totem.use voice @a[distance=..96] ~ ~ ~ 1 1 1
particle portal ~ ~1 ~ 0.25 0.25 0.25 1 1000
tellraw @a[distance=..96] [{"text":"A ","color":"dark_red"},{"text":"rift","color":"light_purple"},{"text":" to another dimension has been opened.","color":"dark_red"}]
advancement grant @a[distance=..96] only rift:rift

#copy data
execute as @e[tag=rift.new,limit=1] run data modify entity @s ArmorItems[0].tag.nexus.UUID set from entity @s UUID
execute as @e[tag=rift.new,limit=1] store result entity @s ArmorItems[0].tag.nexus.id int 1 run scoreboard players get @s rift.data

#cleanup
tag @e[tag=rift.new] remove rift.new
kill @s
