##Runs once every 2 seconds.

#Loop
schedule function inkwell_core:clocks/2_seconds 2s

#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/Generic:","color":"#FF352E"},{"text":" Clock: 2 seconds.","color":"#CCCDFF"}]


##Core
#Trigger menus loop
function inkwell_core:mechanic/trigger_2s

##Riptide Attack
#2 second loop
function inkwell_riptide_attack:mechanic/trident_2s

##Enchant loop
#2 Second
function inkwell_enchants:mechanic/enchant_effect/loops/2_seconds