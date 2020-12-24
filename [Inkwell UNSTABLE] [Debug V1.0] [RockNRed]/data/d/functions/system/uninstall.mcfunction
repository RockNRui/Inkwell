###Ran when datapack is uninstalled

#Remove scoreboards
#Hp test timer scoreboard
scoreboard objectives remove InkW_Debug_HPTT

#Uninstall message.
tellraw @a ["",{"text":"⁅","bold":true,"color":"gold"},{"text":"Inkwell","bold":true,"color":"#CDCCFF"},{"text":"⁆ ","bold":true,"color":"gold"},{"text":"Debug Tools (V1.0) ","color":"#BF0D0D"},{"text":"In-game portion uninstalled, however it will re-install upon a /reload. Delete the datapack from your datapacks folder to complete uninstallation.","color":"#CCCDFF"}]

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Debug Tools","color":"#BF0D0D"},{"text":"/Generic:","color":"#FF352E"},{"text":" Uninstalled.","color":"#CCCDFF"}]