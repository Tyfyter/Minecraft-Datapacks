execute at @s[scores={mana=20..}] run tag @s add caster
execute at @s[scores={mana=20..}] run playsound minecraft:item.chorus_fruit.teleport player @s ~ ~ ~
execute as @s[scores={mana=20..}] anchored eyes at @s run function lotus:tpbeam
execute at @s[scores={mana=20..}] run playsound minecraft:item.chorus_fruit.teleport player @s ~ ~ ~
execute at @s[scores={mana=20..}] run tag @s remove caster 
execute as @s[scores={mana=20..},tag=!infinitemana] run scoreboard players remove @s mana 20
function lotus:applymanacd