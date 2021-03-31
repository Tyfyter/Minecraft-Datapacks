execute at @s as @s run function lotus:datamanip/getdiry
execute at @s anchored eyes positioned ^ ^ ^1.25 as @e[distance=..1.25] run data modify entity @s Motion set from storage minecraft:1 temppos
execute at @s positioned ^ ^ ^1.25 as @e[distance=..1.25] run data modify entity @s Motion set from storage minecraft:1 temppos
execute at @s anchored eyes positioned ^ ^ ^1.25 as @e[distance=..1.2] unless score @s block matches 1.. run effect give @s wither 1 1
execute at @s positioned ^ ^ ^1.25 as @e[distance=..1.2] unless score @s block matches 1.. run effect give @s wither 1 1
execute at @s anchored eyes positioned ^ ^-0.5 ^0.25 run particle explosion
execute at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 100 0
scoreboard players set @s block 0
#scoreboard players remove @s[scores={block=1..}] block 5