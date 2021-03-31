scoreboard players operation @s block /= 2 variable
scoreboard players operation @s mana += @s block
scoreboard players operation @s mana < @s maxmana
scoreboard players set @s manaregencd 0
title @s actionbar [{"score":{"name":"@s","objective":"mana"},"color":"dark_blue"},{"text":"/"},{"score":{"name":"@s","objective":"maxmana"},"color":"dark_blue"}]
scoreboard players reset @s block