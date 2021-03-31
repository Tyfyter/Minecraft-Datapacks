execute at @s[scores={mana=5..}] run tag @s add caster
execute as @s[scores={mana=5..}] at @s anchored eyes at @s run function lotus:beam/drillbeam
execute at @s[scores={mana=5..}] run tag @s remove caster 
execute as @s[scores={mana=5..},tag=!infinitemana] run scoreboard players remove @s mana 5
function lotus:applymanacd