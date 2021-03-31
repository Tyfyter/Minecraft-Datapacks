particle minecraft:enchanted_hit ~ ~ ~ 0 1 0 1 100 force
summon area_effect_cloud ~ ~ ~ {Tags:["magicmirror"],Duration:0}
tp @e[limit=1,tag=magicmirror] @s
execute store result entity @e[limit=1,tag=magicmirror] Pos[0] double 1 run data get entity @s SpawnX
execute store result entity @e[limit=1,tag=magicmirror] Pos[1] double 1 run data get entity @s SpawnY
execute store result entity @e[limit=1,tag=magicmirror] Pos[2] double 1 run data get entity @s SpawnZ
execute as @e[limit=1,tag=magicmirror] at @s run tp @s ~0.5 ~0.563 ~0.5
tp @s @e[limit=1,tag=magicmirror]
execute at @e[limit=1,tag=magicmirror] run particle minecraft:enchanted_hit ~ ~ ~ 0 1 0 1 100 force