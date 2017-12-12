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
team option nexus color light_purple

team add attackers
team option attackers color red

team add builders
team option builders color red
team option builders collisionRule never

tellraw @p ["",{"text":"Thank you for installing Dimensional Rift by ImCoolYeah105.","color":"dark_aqua"},{"text":"\nCommand Successfully installed.","color":"dark_green"}]