#execute as @a[scores={carrotstick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] anchored eyes at @s run function lotus:dmgbeam
#execute as @a[scores={carrotstick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomItem:1}}}] run function lotus:pickspell
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomItem:1}}}] run function lotus:equipstaff
execute as @a[scores={block=1..}] run function lotus:shield/pickshield
execute as @a[scores={carrotstick=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomItem:1}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players add @s ringeffect 1
execute as @a[scores={ringeffect=1..}] run function lotus:ring/pickring
scoreboard players set @a[scores={ringeffect=1..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomItem:1}}]}] ringeffect 0
scoreboard players set @a[scores={ringeffect=2..}] healcount 0
scoreboard players set @a[scores={ringeffect=2..}] ringeffect 0
execute as @a[scores={ringeffect=..0}] if score @s mana < @s maxmana run function lotus:manaregen
tag @e[type=minecraft:experience_orb] add init
scoreboard players reset * carrotstick
scoreboard players set * sneaking 0