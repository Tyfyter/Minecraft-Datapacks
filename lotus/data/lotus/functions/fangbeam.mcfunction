scoreboard players add fangrange variable 1
execute if score fangrange variable matches 3.. run summon evoker_fangs
execute if block ~ ~ ~ #lotus:cuttable run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~1 ~ #lotus:cuttable run setblock ~ ~1 ~ minecraft:air destroy
execute if score fangrange variable matches 3.. run teleport @e[type=evoker_fangs,distance=0] ~ ~ ~ facing ^ ^ ^1
execute if score fangrange variable matches 4.. run effect give @e[distance=..1.75] slowness 1 15
execute if score fangrange variable matches 4.. as @e[distance=..1.75,type=#lotus:targetable] store result score @s halfhp run data get entity @s Attributes[0].Base 0.5
execute if score fangrange variable matches 4.. as @e[distance=..1.75,type=#lotus:targetable] store result score @s hp run data get entity @s Health
execute if score fangrange variable matches 4.. as @e[distance=..1.75,type=#lotus:targetable] run scoreboard players remove @s hp 6
execute if score fangrange variable matches 4.. as @e[distance=..1.75,type=#lotus:targetable] if score @s hp <= @s halfhp run kill @s
tp @e[type=item,distance=..1.75] @s
execute if score fangrange variable matches ..25 align y rotated ~ 0 positioned ^ ^ ^0.75 if block ~ ~-1 ~ #lotus:nonsolid positioned ~ ~-1 ~ run function lotus:fangbeam
execute if score fangrange variable matches ..25 align y rotated ~ 0 positioned ^ ^ ^0.75 unless block ~ ~-1 ~ #lotus:nonsolid if block ~ ~ ~ #lotus:nonsolid run function lotus:fangbeam
execute if score fangrange variable matches ..25 align y rotated ~ 0 positioned ^ ^ ^0.75 unless block ~ ~ ~ #lotus:nonsolid if block ~ ~1 ~ #lotus:nonsolid if block ~ ~2 ~ #lotus:nonsolid positioned ~ ~1 ~ run function lotus:fangbeam
scoreboard players reset fangrange variable