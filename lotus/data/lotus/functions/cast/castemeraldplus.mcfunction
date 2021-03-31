execute at @s[scores={mana=10..}] run tag @s add caster
execute at @s[scores={mana=10..}] run playsound minecraft:item.chorus_fruit.teleport player @s ~ ~ ~
execute as @s[scores={mana=10..}] anchored eyes at @s run function lotus:beam/tpstrikebeam
execute at @s[scores={mana=10..}] run playsound minecraft:item.chorus_fruit.teleport player @s ~ ~ ~
execute at @s[scores={mana=10..}] run tag @s remove caster
execute as @s[scores={mana=10..},tag=!infinitemana] run scoreboard players remove @s mana 10
function lotus:applymanacd