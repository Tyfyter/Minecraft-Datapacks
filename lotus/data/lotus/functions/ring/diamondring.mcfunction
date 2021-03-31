execute as @s[scores={manaregencd=1..}] run scoreboard players remove @s manaregencd 1
execute as @s[scores={manaregencd=..0},tag=!infinitemana] run scoreboard players remove @s mana 1
execute as @s[scores={manaregencd=..0}] run scoreboard players set @s bonusmanacd -2
execute as @s[scores={manaregencd=..0}] run function lotus:applymanacd
effect give @s resistance 1 3
effect give @s slowness 1 2
title @s actionbar [{"score":{"name":"@s","objective":"mana"},"color":"aqua"},{"text":"/"},{"score":{"name":"@s","objective":"maxmana"},"color":"aqua"}]
scoreboard players set @s[scores={mana=..0}] ringeffect 0
execute as @s[scores={ringeffect=..0}] run function lotus:applymanacd
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s manaregentime
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s bonusmanacd