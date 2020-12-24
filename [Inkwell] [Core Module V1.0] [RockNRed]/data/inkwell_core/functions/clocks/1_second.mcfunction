##Runs once every 1 seconds.

#Loop
schedule function inkwell_core:clocks/1_second 1s

#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/Generic:","color":"#FF352E"},{"text":" Clock: 1 second.","color":"#CCCDFF"}]


##Enchant loop
#1 Second
function inkwell_enchants:mechanic/enchant_effect/loops/1_second