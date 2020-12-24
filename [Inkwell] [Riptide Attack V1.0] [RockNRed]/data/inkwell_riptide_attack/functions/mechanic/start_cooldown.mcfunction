##Ran at the end of a player's dash, placing their trident on cooldown
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Cooldown start.","color":"#CCCDFF"}]


#Set cooldown timer
scoreboard players set @s InkW_Riptide_CD 25
#Replace offhand with "on cooldown" version
function inkwell_riptide_attack:mechanic/trident_on_cooldown