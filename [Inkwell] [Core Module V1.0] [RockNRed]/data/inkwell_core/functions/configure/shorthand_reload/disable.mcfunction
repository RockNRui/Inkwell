##Disable shorthand reload

#Remove tag
tag @s remove Inkwell_CanToggle
#Disable via score
scoreboard players set $Inkwell_Core_ShorthandReload InkW_Temp 0
#Actionbar message
title @s actionbar ["",{"text":"Reload Message Shorthand Mode ","color":"#CCCDFF"},{"text":"disabled","color":"#FF352E"},{"text":".","color":"#CCCDFF"}]
