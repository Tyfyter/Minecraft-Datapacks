particle splash ~ ~-0.35 ~ 0 0 0 0.5 1 force
execute as @e[dx=0,tag=!caster] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s slowness 5 120
execute if block ~ ~ ~ #lotus:nonsolid positioned ^ ^ ^0.5 run function lotus:freezebeam