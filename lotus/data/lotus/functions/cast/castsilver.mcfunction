execute at @s[scores={mana=25..}] run tag @s add caster
execute as @s[scores={mana=25..}] anchored eyes at @s run function lotus:smitebeam
execute at @s[scores={mana=25..}] run tag @s remove caster 
execute as @s[scores={mana=25..},tag=!infinitemana] run scoreboard players remove @s mana 25
function lotus:applymanacd