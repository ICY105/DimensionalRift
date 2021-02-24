
data modify storage rift:temp nexus.mobs set value []

execute if score $nexus.wave rift.data matches 1.. run data modify storage rift:temp nexus.mobs append value "minecraft:zombie"
execute if score $nexus.wave rift.data matches 1.. run data modify storage rift:temp nexus.mobs append value "minecraft:zombie"
execute if score $nexus.wave rift.data matches 1.. run data modify storage rift:temp nexus.mobs append value "minecraft:zombie"

execute if score $nexus.wave rift.data matches 2.. run data modify storage rift:temp nexus.mobs append value "minecraft:skeleton"
execute if score $nexus.wave rift.data matches 2.. run data modify storage rift:temp nexus.mobs append value "minecraft:zombie"

execute if score $nexus.wave rift.data matches 3.. run data modify storage rift:temp nexus.mobs append value "minecraft:skeleton"
