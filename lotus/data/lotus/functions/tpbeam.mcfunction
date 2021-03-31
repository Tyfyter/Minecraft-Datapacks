particle totem_of_undying ~ ~ ~ 0 0 0 0 1 force
#tp @s ~ ~ ~
execute positioned ^ ^ ^0.75 if block ~ ~ ~ #lotus:nonsolid run function lotus:tpbeam
execute unless block ^ ^ ^0.75 air run tp @s ~ ~ ~