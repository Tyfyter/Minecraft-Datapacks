particle end_rod ~ ~-0.35 ~ 0 0 0 0.1 1 force
execute at @e[type=#lotus:undead,distance=..1.75] run summon lightning_bolt
execute if block ~ ~ ~ #lotus:nonsolid positioned ^ ^ ^0.65 run function lotus:smitebeam