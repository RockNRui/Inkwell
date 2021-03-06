##Ran to get the amount of health missing from the target

#Get player's max health
execute store result score $TargetMaxHealth InkW_Temp run attribute @s minecraft:generic.max_health get
#Get player's current health
function inkwell_core:aide/get_target_status/get_health
#Minus the player's health from their max health
scoreboard players operation $TargetMaxHealth InkW_Temp -= $TargetHealth InkW_Temp
#Set player's score to found missing health
scoreboard players operation @s InkW_TMissHealth = $TargetMaxHealth InkW_Temp

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Got missing health, returned ","color":"#CCCDFF"},{"score":{"name":"@s","objective":"InkW_PMissHealth"},"bold":true,"color":"#CCCDFF"},{"text":".","color":"#CCCDFF"}]