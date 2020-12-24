##Ran at the end of a riptide dash
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Dash end.","color":"#CCCDFF"}]


#Remove resistance
#effect clear @s minecraft:resistance
#Set attack speed back to 0, preventing swinging
attribute @s minecraft:generic.attack_speed base set 0
#Remove invul KBR.
attribute @s minecraft:generic.knockback_resistance modifier remove 31514192-0114-2651-8151-950000000001
#Start cooldown
function inkwell_riptide_attack:mechanic/start_cooldown
#Remove res 5 briefly after
scoreboard players set @s InkW_Riptide_IT 2
function inkwell_riptide_attack:mechanic/invul_tick