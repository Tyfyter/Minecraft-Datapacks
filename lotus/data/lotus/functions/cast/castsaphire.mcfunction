execute at @s[scores={mana=15..}] run tag @s add caster
execute as @s[scores={mana=15..}] anchored eyes at @s positioned ^ ^ ^1.25 run function lotus:freezebeam
execute at @s[scores={mana=15..}] run tag @s remove caster 
execute as @s[scores={mana=15..},tag=!infinitemana] run scoreboard players remove @s mana 15
function lotus:applymanacd