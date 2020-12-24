##Config menu for this module.

#Chat spam
execute if score $Inkwell_Core_ChatSpam InkW_Temp matches 1 if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 run function inkwell_core:text/chat_spam
#Generic menu actions
function inkwell_core:text/menu_generic

#Tellraws
#Header
scoreboard players set $InkW_HeaderText InkW_Temp 5
scoreboard players set $InkW_HeaderLine InkW_Temp 20
function inkwell_core:text/header

#Filler text
tellraw @s {"text":"There are no configuration options for this module.","italic":true,"color":"#CCCDFF","clickEvent":{"action":"run_command","value":""}}

#Return button
function inkwell_core:text/return

#Bottom line
function inkwell_core:text/generic_line

#Kill armorstands
kill @e[type=minecraft:armor_stand,tag=InkW_OptionMenuPart]