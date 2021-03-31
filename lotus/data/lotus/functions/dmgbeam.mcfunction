particle damage_indicator ~ ~-0.35 ~ 0 0 0 0.5 1 force
#summon area_effect_cloud ~ ~ ~ {Particle:"explosion",ReapplicationDelay:0,Radius:0.35f,Duration:10,Color:16711680,Effects:[{Id:6b,Amplifier:1b,Duration:5},{Id:24b,Amplifier:0b,Duration:60}]}
#summon creeper ~ ~ ~ {Silent:1b,ExplosionRadius:0b,Fuse:0,ignited:1b}
execute as @e[dx=0,tag=!caster] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @e[type=!#lotus:undead,distance=..1.5] instant_damage 1 1
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @e[type=#lotus:undead,distance=..1.5] instant_health 1 1
execute if block ~ ~ ~ #lotus:nonsolid positioned ^ ^ ^0.5 run function lotus:dmgbeam
#execute unless block ^ ^ ^1 air run summon creeper ~ ~ ~ {Silent:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
#execute unless block ^ ^ ^1 air run tp @s ~ ~ ~