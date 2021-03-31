scoreboard players add fangrange variable 1
summon evoker_fangs
execute if block ~ ~ ~ #lotus:cuttable run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~1 ~ #lotus:cuttable run setblock ~ ~1 ~ minecraft:air destroy
execute rotated ~30 0 run teleport @e[type=evoker_fangs,distance=0] ~ ~ ~ facing ^ ^ ^1
effect give @e[distance=..0.75] slowness 1 15
execute as @e[distance=..0.75,type=#lotus:targetable] store result score @s halfhp run data get entity @s Attributes[0].Base 0.5
execute as @e[distance=..0.75,type=#lotus:targetable] store result score @s hp run data get entity @s Health
execute as @e[distance=..0.75,type=#lotus:targetable] run scoreboard players remove @s hp 6
execute as @e[distance=..0.75,type=#lotus:targetable] if score @s hp <= @s halfhp run kill @s
tp @e[type=item,distance=..0.75] @s
execute if score fangrange variable matches ..6 align y rotated ~60 0 positioned ^ ^ ^1.5 run function lotus:fangcircle
scoreboard players reset fangrange variable