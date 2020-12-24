#Chat spam
execute if score $Inkwell_Core_ChatSpam InkW_Temp matches 1 run function inkwell_core:text/chat_spam

#Generic menu
function inkwell_core:text/menu_generic

#Header
scoreboard players set $InkW_HeaderText InkW_Temp 1
scoreboard players set $InkW_HeaderLine InkW_Temp 18
function inkwell_core:text/header

tellraw @s {"text":"> This message popup will only show upon the first installation (or subsequent updates) of core, please read carefully.","color":"#CCCDFF"}
tellraw @s {"text":" > Please note the difference between \"Installed\" and \"Loaded\" in the reload message. If you have issues, it could be because a module didn't install properly. If you notice modules loading without installing, please report it.","color":"#CCCDFF"}
tellraw @s {"text":" > This datapack series takes advantage of a forceloaded chunk at 3151415 Y 3151415. This is required for the core and subsequent modules to work. Please do not unload it.","color":"#CCCDFF"}
function inkwell_core:text/return

#Bottom line
function inkwell_core:text/generic_line