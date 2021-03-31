execute as @s[scores={absorbed=2..},tag=!infinitemana] run scoreboard players remove @s mana 1
execute as @s[scores={absorbed=1..}] run scoreboard players remove @s absorbed 2
execute as @s[scores={absorbed=..-1}] run scoreboard players set @s absorbed 0
effect give @s absorption 1 0 true
title @s actionbar [{"score":{"name":"@s","objective":"mana"},"color":"aqua"},{"text":"/"},{"score":{"name":"@s","objective":"maxmana"},"color":"aqua"}]
scoreboard players set @s[scores={mana=..0}] ringeffect 0
scoreboard players set @s[scores={ringeffect=..0}] absorbed 0
execute as @s[scores={ringeffect=..0}] run function lotus:applymanacd
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s manaregentime
execute as @s[scores={ringeffect=..0}] run scoreboard players operation @s manaregencd += @s bonusmanacd