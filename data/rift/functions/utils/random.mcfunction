
## $utils.in_0: max output value (0-100,000,000)
#> $utils.out_0: generated random number

#LCG
scoreboard players operation $utils.rng_seed rift.data *= $cons.rng_a rift.data
scoreboard players add $utils.rng_seed rift.data 12345

#output
scoreboard players operation $utils.out_0 rift.data = $utils.rng_seed rift.data
scoreboard players operation $utils.out_0 rift.data /= $cons.16 rift.data
scoreboard players operation $utils.out_0 rift.data %= $utils.in_0 rift.data
execute if score $utils.out_0 rift.data matches ..-1 run scoreboard players operation $utils.out_0 rift.data *= $cons.-1 du_data

#check for 0 range
execute if score $utils.in_0 rift.data matches 0 run scoreboard players set $utils.out_0 rift.data 0
