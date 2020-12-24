###Ran when datapack is uninstalled


##Remove scoreboards
scoreboard objectives remove InkW_Ench_Chroma

##Reset dummy players

##Remove teams
team remove Inkwell_Chroma
team remove Inkwell_ChromaB
team remove Inkwell_ChromaC

#Uninstall message.
tellraw @a ["",{"text":"⁅","bold":true,"color":"gold"},{"text":"Inkwell","bold":true,"color":"#CDCCFF"},{"text":"⁆ ","bold":true,"color":"gold"},{"text":"Enchants (V0.1) ","color":"#9663D4"},{"text":"In-game portion uninstalled, however it will re-install upon a /reload. Delete the datapack from your datapacks folder to complete uninstallation.","color":"#CCCDFF"}]

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Enchants","color":"#9663D4"},{"text":"/Generic:","color":"#FF352E"},{"text":" Uninstalled.","color":"#CCCDFF"}]