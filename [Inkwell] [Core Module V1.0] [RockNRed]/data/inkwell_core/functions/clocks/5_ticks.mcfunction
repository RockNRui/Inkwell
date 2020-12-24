##Runs once a tick.

#Loop
schedule function inkwell_core:clocks/5_ticks 5t

#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/Generic:","color":"#FF352E"},{"text":" Clock: 5 ticks.","color":"#CCCDFF"}]

##Enchants
#Enchant level calc
function inkwell_enchants:mechanic/levels_calc/calc
#Enchant effect loop
function inkwell_enchants:mechanic/enchant_effect/loops/5_ticks