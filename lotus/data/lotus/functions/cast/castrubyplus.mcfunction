tag @s add caster
execute as @s[scores={mana=5..},predicate=!lotus:sneaking] anchored eyes at @s positioned ^ ^ ^0.75 run function lotus:cast/smallfireball
execute as @s[scores={mana=20..},predicate=lotus:sneaking] anchored eyes at @s positioned ^ ^ ^0.75 run function lotus:cast/fireball
execute as @s[scores={mana=5..}] at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
execute as @s[scores={mana=20..},predicate=lotus:sneaking] at @s run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.25 1
tag @s remove caster 
execute as @s[scores={mana=5..},tag=!infinitemana,predicate=!lotus:sneaking] run scoreboard players remove @s mana 5
execute as @s[scores={mana=20..},tag=!infinitemana,predicate=lotus:sneaking] run scoreboard players remove @s mana 20
function lotus:applymanacd