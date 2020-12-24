###Ran to clear extra tridents from the player
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Player had too many riptide weapons! Clearing...","color":"#CCCDFF"}]


##Clear
#Trident
clear @s minecraft:trident{Inkwell_RiptideAttack:1}
#Prismarine
clear @s minecraft:prismarine_shard{Inkwell_RiptideAttack:1}

##Re-equip
function inkwell_riptide_attack:mechanic/equip_trident_offhand