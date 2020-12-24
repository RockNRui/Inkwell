##Runs once every 5 seconds.

#Loop
schedule function inkwell_core:clocks/5_seconds 5s

#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/Generic:","color":"#FF352E"},{"text":" Clock: 5 seconds.","color":"#CCCDFF"}]


##Core
#Credits loop
function inkwell_core:mechanic/forceload_loop