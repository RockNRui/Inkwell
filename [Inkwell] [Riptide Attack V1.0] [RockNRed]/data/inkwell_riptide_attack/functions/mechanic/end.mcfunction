##Ran to turn off the mechanic
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" End.","color":"#CCCDFF"}]


#Remove invul KBR. Also useless unless ran manually, or ran in the middle of a dash.
attribute @s minecraft:generic.knockback_resistance modifier remove 31514192-0114-2651-8151-950000000001
#Reset tag. This is not needed for the function when run automatically as this is run when the tag is absent, but is here for when run manually.
tag @s remove Inkwell_RiptideAttack
#Delete trident
replaceitem entity @s weapon.offhand air 1
#Set attack speed back to default
attribute @s minecraft:generic.attack_speed base set 4