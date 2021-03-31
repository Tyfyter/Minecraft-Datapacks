particle totem_of_undying ~ ~ ~ 0 0 0 0.2 1 force
#tp @s ~ ~ ~
scoreboard players add @s variable 1
execute as @s[scores={mana=1..,variable=6..},tag=!infinitemana] run scoreboard players remove @s mana 1
execute as @s[scores={variable=6..}] run scoreboard players set @s variable 0
execute positioned ^ ^ ^0.5 as @e[dx=0,tag=!caster] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add tpstruck
execute unless entity @e[tag=tpstruck] positioned ^ ^ ^0.5 if block ~ ~ ~ #lotus:nonsolid run function lotus:beam/tpstrikebeam
execute unless entity @e[tag=tpstruck] unless block ^ ^ ^0.5 #lotus:nonsolid run tp @s ~ ~ ~
execute if entity @e[tag=tpstruck] run tp @s ~ ~ ~
effect give @e[type=!#lotus:undead,tag=tpstruck] instant_damage
effect give @e[type=#lotus:undead,tag=tpstruck] instant_health
execute at @s as @s run function lotus:datamanip/getdirstrike
execute as @e[tag=tpstruck] run data modify entity @s Motion set from storage minecraft:1 temppos
tag @e[tag=tpstruck] remove tpstruck