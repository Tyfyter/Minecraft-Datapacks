execute as @s[scores={manaregencd=1..}] run scoreboard players remove @s manaregencd 1
execute at @s[scores={manaregencd=..0}] anchored eyes run particle minecraft:enchanted_hit ^0.4 ^-0.25 ^0.4 0 0 0 0 1 force
execute as @s[scores={manaregencd=..0},tag=!infinitemana] run scoreboard players remove @s mana 1
execute as @s[scores={manaregencd=..0}] run scoreboard players set @s bonusmanacd 10
execute as @s[scores={manaregencd=..0}] run function lotus:applymanacd
execute at @s at @e[type=experience_orb,distance=..10,tag=!init] run scoreboard players add @s mana 5
title @s actionbar [{"score":{"name":"@s","objective":"mana"},"color":"dark_blue"},{"text":"/"},{"score":{"name":"@s","objective":"maxmana"},"color":"dark_blue"}]
scoreboard players set @s[scores={mana=..0}] ringeffect 0
execute as @s[scores={ringeffect=..0}] run function lotus:applymanacd
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s manaregentime
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s bonusmanacd