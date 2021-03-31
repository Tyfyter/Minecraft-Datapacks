execute if entity @s[predicate=!lotus:burnorhell,scores={manaregencd=1..}] as @s run scoreboard players remove @s manaregencd 1
execute if entity @s[predicate=!lotus:burnorhell,scores={manaregencd=..0},tag=!infinitemana] as @s run scoreboard players remove @s mana 1
execute as @s[scores={manaregencd=..0}] run scoreboard players set @s bonusmanacd 5
execute if entity @s[predicate=!lotus:burnorhell,scores={manaregencd=..0}] as @s run function lotus:applymanacd
execute if entity @s[predicate=lotus:burnorhell] if score @s mana < @s maxmana run function lotus:manaregen
#execute if entity @s[predicate=lotus:burnorhell] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"crit",ReapplicationDelay:0,Radius:1f,Duration:6,Effects:[{Id:12b,Amplifier:0b,Duration:10,ShowParticles:0b},{Id:1b,Amplifier:0b,Duration:10,ShowParticles:0b},{Id:5b,Amplifier:0b,Duration:10,ShowParticles:0b}]}
#execute if entity @s[predicate=lotus:burnticks] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:0,Radius:1f,Duration:6,Effects:[{Id:10b,Amplifier:2b,Duration:12,ShowParticles:0b}]}
effect give @s[predicate=lotus:burnorhell] fire_resistance 1 0 true
effect give @s[predicate=lotus:burnorhell] speed 1 0 true
effect give @s[predicate=lotus:burnorhell] haste 1 0 true
effect give @s[predicate=lotus:burnorhell] jump_boost 1 0 true
effect give @s[predicate=lotus:burnorhell] strength 1 0 true
effect give @s[predicate=lotus:burnticks] regeneration 1 2 true
title @s actionbar [{"score":{"name":"@s","objective":"mana"},"color":"gold"},{"text":"/"},{"score":{"name":"@s","objective":"maxmana"},"color":"gold"}]
scoreboard players set @s[scores={mana=..0}] ringeffect 0
execute as @s[scores={ringeffect=..0}] run function lotus:applymanacd
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s manaregentime
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s bonusmanacd
