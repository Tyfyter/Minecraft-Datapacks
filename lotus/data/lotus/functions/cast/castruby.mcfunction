execute at @s[scores={mana=10..}] run tag @s add caster
execute as @s[scores={mana=10..}] anchored eyes at @s positioned ^ ^ ^1.25 run function lotus:dmgbeam
execute as @s[scores={mana=10..}] at @s run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.5 1
#execute as @s[scores={mana=10..,health=..16}] run effect give @s instant_health 1 1
execute as @s[scores={mana=10..}] run effect give @s resistance 1 3
execute as @s[scores={mana=10..}] run effect give @s instant_damage 1
#execute as @s[scores={mana=10..}] run effect give @s instant_health 1 1
execute at @s[scores={mana=10..}] run tag @s remove caster 
execute as @s[scores={mana=10..},tag=!infinitemana] run scoreboard players remove @s mana 10
function lotus:applymanacd