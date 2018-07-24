gamerule commandBlockOutput false

scoreboard objectives add rift_time dummy
scoreboard objectives add rift_power dummy
scoreboard objectives add rift_data dummy
scoreboard objectives add rift_trade minecraft.custom:minecraft.traded_with_villager

scoreboard players set con_0 rift_data 0
scoreboard players set con_50 rift_data 50
scoreboard players set con_100 rift_data 100
scoreboard players set con_150 rift_data 150
scoreboard players set con_200 rift_data 200
scoreboard players set con_250 rift_data 250
scoreboard players set con_300 rift_data 300
scoreboard players set con_350 rift_data 350
scoreboard players set con_400 rift_data 400

team add nexus
team modify nexus color light_purple

team add attackers
team modify attackers color red

team add builders
team modify builders color red
team modify builders collisionRule never

bossbar add rift:killer_bunny "Killer Bunny Boss"
bossbar set rift:killer_bunny color green
bossbar set rift:killer_bunny max 80

bossbar add rift:witch "Witch Boss"
bossbar set rift:witch color purple

bossbar add rift:illusioner "Illusioner Boss"
bossbar set rift:illusioner color blue

bossbar add rift:magma "Magma Boss"
bossbar set rift:magma color red

tellraw @a[tag=!rift_install] ["",{"text":"Thank you for installing Dimensional Rift by ImCoolYeah105.","color":"dark_aqua"},{"text":"\nCommand Successfully installed.","color":"dark_green"}]
tag @a add rift_install