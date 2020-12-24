##Ran when datapack is loaded

execute if score $Inkwell_Core_ShorthandReload InkW_Temp matches 0 as @a at @s run function inkwell_core:mechanic/load_message
execute if score $Inkwell_Core_ShorthandReload InkW_Temp matches 1 as @a at @s run function inkwell_core:mechanic/load_message_shorthand

#Run "catch" function. This function is for other modules to check for the existence of a required Core version.
schedule function inkwell_core:system/catch 1t

#If magic block isn't found, run install.
forceload add 3151419 3151419
execute unless block 3151415 3 3151409 diamond_block run function inkwell_core:system/install

#Cancel failed install loops
schedule clear d:system/fail_install
schedule clear inkwell_riptide_attack:system/fail_install
schedule clear inkwell_guns:system/fail_install

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/Generic:","color":"#FF352E"},{"text":" Loaded.","color":"#CCCDFF"}]