summon fireball ~ ~ ~ {ExplosionPower:2,direction:[0.0,0.0,0.0],power:[0.0,0.0,0.0],Motion:[0.0,0.0,0.0],Tags:["shoot"]}
execute at @s as @s run function lotus:datamanip/getdirthird
execute as @e[tag=shoot] run data modify entity @s direction set from storage minecraft:1 temppos
execute as @e[tag=shoot] run data modify entity @s power set from storage minecraft:1 temppos
execute as @e[tag=shoot] run data modify entity @s Motion set from storage minecraft:1 temppos
#tag @e[tag=shoot] remove shoot