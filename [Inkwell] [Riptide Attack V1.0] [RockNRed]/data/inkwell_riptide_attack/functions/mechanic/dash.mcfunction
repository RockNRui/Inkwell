##Run when a player uses a riptide trident
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Dash start.","color":"#CCCDFF"}]


#Give resistance
effect give @s minecraft:resistance 2 4 true
#Set attack speed high to allow damage
attribute @s minecraft:generic.attack_speed base set 10
#Gibe KBR.
attribute @s minecraft:generic.knockback_resistance modifier add 31514192-0114-2651-8151-950000000001 TridentKBR 1 add
#Set timer for ending dash
scoreboard players set @s InkW_Riptide_DT 10
