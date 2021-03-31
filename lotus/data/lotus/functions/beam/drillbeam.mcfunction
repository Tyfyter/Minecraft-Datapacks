particle crit ~ ~ ~ 0 0 0 0.5 1 force
execute if block ~ ~ ~ #lotus:drillthrough positioned ^ ^ ^0.5 run function lotus:beam/drillbeam
execute unless block ~ ~ ~ #lotus:undrillable run setblock ~ ~ ~ air destroy
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.5 2
tp @e[type=item,distance=..1.75] @s