forceload add -3 -3 3 3
execute positioned 0 0 0 align xyz positioned ~ ~0.45 ~ run summon area_effect_cloud ^ ^ ^1.25 {Tags:["sendpos"],Duration:0}
execute as @e[type=area_effect_cloud,tag=sendpos] run data modify storage minecraft:1 temppos set from entity @s Pos
forceload remove -3 -3 3 3