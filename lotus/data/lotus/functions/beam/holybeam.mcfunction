particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @e[type=#lotus:undead,distance=..1.75] run particle flash ~ ~ ~ 0 0 0 0 1 force
effect give @e[type=!zombie_villager,distance=..1.75] instant_health 2
execute as @e[type=zombie_villager,distance=..1.75] run data modify entity @s ConversionTime set value 0
execute positioned ^ ^ ^0.75 if block ~ ~ ~ #lotus:nonsolid run function lotus:beam/holybeam