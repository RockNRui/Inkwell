#Get target's current health
execute store result score $TargetHealth InkW_Temp run data get entity @s Health

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Got health, returned ","color":"#CCCDFF"},{"score":{"name":"$PlayerHealth","objective":"InkW_Temp"},"bold":true,"color":"#CCCDFF"},{"text":".","color":"#CCCDFF"}]