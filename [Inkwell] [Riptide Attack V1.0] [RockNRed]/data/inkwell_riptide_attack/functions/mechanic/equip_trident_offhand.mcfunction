##Run to equip the trident version of the item to the offhand safely
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Equip trident in offhand...","color":"#CCCDFF"}]


#Drop pre-existing offhand item
function inkwell_core:aide/drop/offhand
#If the trident is off cooldown, run function to replace offhand with off cooldown verison
execute if entity @s[scores={InkW_Riptide_CD=0}] run function inkwell_riptide_attack:mechanic/trident_off_cooldown
#If the trident is on cooldown, run function to replace offhand with on cooldown verison
execute if entity @s[scores={InkW_Riptide_CD=1..}] run function inkwell_riptide_attack:mechanic/trident_on_cooldown
