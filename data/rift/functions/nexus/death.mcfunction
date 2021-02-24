
tellraw @a[distance=..96] [{"text":"The Nexus has been destroyed, collapsing the dimensional rift!","color":"dark_red"}]
playsound minecraft:entity.wither.death voice @a[distance=..96] ~ ~ ~ 1 1 1
execute as @e[tag=rift.mob,distance=..96] run tp @s ~ -300 ~
kill @s
