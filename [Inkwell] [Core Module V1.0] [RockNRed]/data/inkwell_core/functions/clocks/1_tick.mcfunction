##Runs once a tick.

#Loop
schedule function inkwell_core:clocks/1_tick 1t

#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/Generic:","color":"#FF352E"},{"text":" Clock: 1 tick.","color":"#CCCDFF"}]

##Inkwell Core
#RNG
function inkwell_core:aide/rng

##Riptide Attack
#Main loop
function inkwell_riptide_attack:mechanic/trident_tick


#Guns
#Main loop
function inkwell_guns:mechanic/loop