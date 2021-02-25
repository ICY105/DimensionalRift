
scoreboard objectives add rift.data dummy
data modify storage rift:temp nexus set value {id:-1,time:0,wave:0,phealth:0,health_notif:0,turret_cooldown:0,teleport_cooldown:0,UUID:[I;0,0,0,0],mobs:[]}
data modify storage rift:temp flux_tag set value {rift_flux: 1b, display: {Lore: ['{"italic":false,"color":"gray","text":"Generated from rifts."}'], Name: '{"italic":false,"color":"dark_purple","text":"Dimensional Flux"}'}}

function rift:utils/load

team add rift.nexus
team modify rift.nexus color light_purple

team add rift.attackers
team modify rift.attackers color red
team modify rift.attackers friendlyFire false

team add rift.builders
team modify rift.builders color red
team modify rift.builders collisionRule never
