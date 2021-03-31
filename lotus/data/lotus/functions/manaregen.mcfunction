execute as @s[scores={manaregencd=1..}] run scoreboard players remove @s manaregencd 1
execute as @s[scores={manaregencd=..0}] run scoreboard players operation @s mana += @s manaregen
execute as @s[scores={manaregencd=..0}] run scoreboard players operation @s mana += @s bonusmanaregen
execute as @s[scores={manaregencd=..0}] run function lotus:applymanacd
title @s actionbar [{"score":{"name":"@s","objective":"mana"},"color":"dark_blue"},{"text":"/"},{"score":{"name":"@s","objective":"maxmana"},"color":"dark_blue"}]
execute as @s[scores={manaregencd=1..}] run scoreboard players set @s bonusmanaregen 0
execute as @s[scores={manaregencd=1..}] run scoreboard players set @s bonusmanacd 0