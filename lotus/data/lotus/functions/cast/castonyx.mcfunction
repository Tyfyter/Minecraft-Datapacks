execute at @s[scores={mana=10..}] run tag @s add caster
execute as @s[scores={mana=10..,sneaking=..0}] at @s run function lotus:fangbeam
execute as @s[scores={mana=10..,sneaking=1..}] at @s align y rotated ~ 0 positioned ^ ^ ^1 rotated ~60 0 run function lotus:fangcircle
execute as @s[scores={mana=10..}] at @s run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.5 1
execute at @s[scores={mana=10..}] run tag @s remove caster 
execute as @s[scores={mana=10..},tag=!infinitemana] run scoreboard players remove @s mana 10
function lotus:applymanacd