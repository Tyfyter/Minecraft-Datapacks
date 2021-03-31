execute if entity @s[nbt=!{Fire:-20s}] as @s[scores={manaregencd=1..}] run scoreboard players remove @s manaregencd 1
execute if entity @s[nbt=!{Fire:-20s}] as @s[scores={manaregencd=..0},tag=!infinitemana] run scoreboard players remove @s mana 1
execute if entity @s[nbt=!{Fire:-20s}] as @s[scores={manaregencd=..0}] run function lotus:applymanacd
execute if entity @s[nbt={Fire:-20s}] if score @s mana < @s maxmana run function lotus:manaregen
execute if entity @s[nbt=!{Fire:-20s}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"crit",ReapplicationDelay:0,Radius:1f,Duration:6,Effects:[{Id:12b,Amplifier:0b,Duration:6,ShowParticles:0b}]}
title @s actionbar [{"score":{"name":"@s","objective":"mana"},"color":"gold"},{"text":"/"},{"score":{"name":"@s","objective":"maxmana"},"color":"gold"}]
scoreboard players set @s[scores={mana=..0}] ringeffect 0
execute as @s[scores={ringeffect=..0}] run function lotus:applymanacd
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s manaregentime
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s bonusmanacd
