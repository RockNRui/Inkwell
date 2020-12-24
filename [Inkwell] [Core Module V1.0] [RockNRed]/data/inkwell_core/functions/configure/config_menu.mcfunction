##Config menu for this module.


#Chat spam
execute if score $Inkwell_Core_ChatSpam InkW_Temp matches 1 if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 run function inkwell_core:text/chat_spam
#Generic menu actions
function inkwell_core:text/menu_generic

#Tellraws
#Header
scoreboard players set $InkW_HeaderText InkW_Temp 1
scoreboard players set $InkW_HeaderLine InkW_Temp 18
function inkwell_core:text/header

#Config - Shorthand mode
execute if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 if score $Inkwell_Core_ShorthandReload InkW_Temp matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["InkW_OptionMenuPart","InkW_OptionStatus_ReloadShorthand"],CustomName:'[{"text":"⁅","color":"#FCB51D","bold":true,"italic":false},{"text":"X","color":"#FF352E","bold":false,"italic":false},{"text":"⁆","color":"#FCB51D","bold":true,"italic":false}]'}
execute if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 if score $Inkwell_Core_ShorthandReload InkW_Temp matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["InkW_OptionMenuPart","InkW_OptionStatus_ReloadShorthand"],CustomName:'[{"text":"⁅","color":"#FCB51D","bold":true,"italic":false},{"text":"✓","color":"#3ABC20","bold":false,"italic":false},{"text":"⁆","color":"#FCB51D","bold":true,"italic":false}]'}
tellraw @s ["",{"text":"> Reload Message Shorthand Mode ","color":"#CCCDFF"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"↔","color":"#5166D2","clickEvent":{"action":"run_command","value":"/function inkwell_core:configure/shorthand_reload/toggle"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Default: Disabled","color":"#CCCDFF"},{"text":"\n"},{"text":"Click to toggle.","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"?","bold":true,"color":"#CCCDFF","hoverEvent":{"action":"show_text","contents":["",{"text":"When enabled, this will turn the message shown upon a reload into a less informative but less spammy version.","color":"#CCCDFF"},{"text":"\n"},{"text":"(Not Recommended.)","color":"#CCCDFF"},{"text":"\n"},{"text":"Crediting creators and contributors is important. Please do not attempt to disable this message without contacting me.","color":"#FF352E"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"selector":"@e[tag=InkW_OptionStatus_ReloadShorthand]"}]

#Config - Options toggle status mode
execute if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["InkW_OptionMenuPart","InkW_OptionStatus_OptionRepeat"],CustomName:'[{"text":"⁅","color":"#FCB51D","bold":true,"italic":false},{"text":"✓","color":"#3ABC20","bold":false,"italic":false},{"text":"⁆","color":"#FCB51D","bold":true,"italic":false}]'}
tellraw @s ["",{"text":"> Option Menu Repeat Mode          ","color":"#CCCDFF"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"↔","color":"#5166D2","clickEvent":{"action":"run_command","value":"/function inkwell_core:configure/option_repeat/toggle"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Default: Enabled","color":"#CCCDFF"},{"text":"\n"},{"text":"Click to toggle.","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"?","bold":true,"color":"#CCCDFF","hoverEvent":{"action":"show_text","contents":{"text":"When enabled, configuring an option will repeat the menu in chat. Allowing you to see the status of any given option reflected in chat.","color":"#CCCDFF"}}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"selector":"@e[tag=InkW_OptionStatus_OptionRepeat]"}]

#Config - Chat spam mode
execute if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 if score $Inkwell_Core_ChatSpam InkW_Temp matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["InkW_OptionMenuPart","InkW_OptionStatus_ChatSpam"],CustomName:'[{"text":"⁅","color":"#FCB51D","bold":true,"italic":false},{"text":"X","color":"#FF352E","bold":false,"italic":false},{"text":"⁆","color":"#FCB51D","bold":true,"italic":false}]'}
execute if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 if score $Inkwell_Core_ChatSpam InkW_Temp matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["InkW_OptionMenuPart","InkW_OptionStatus_ChatSpam"],CustomName:'[{"text":"⁅","color":"#FCB51D","bold":true,"italic":false},{"text":"✓","color":"#3ABC20","bold":false,"italic":false},{"text":"⁆","color":"#FCB51D","bold":true,"italic":false}]'}
tellraw @s ["",{"text":"> Menu Clear Chat Mode              ","color":"#CCCDFF"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"↔","color":"#5166D2","clickEvent":{"action":"run_command","value":"/function inkwell_core:configure/chat_spam/toggle"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Default: Enabled","color":"#CCCDFF"},{"text":"\n"},{"text":"Click to toggle.","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"?","bold":true,"color":"#CCCDFF","hoverEvent":{"action":"show_text","contents":{"text":"When enabled, any new menu will spam your chat prior to clear it.","color":"#CCCDFF"}}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"selector":"@e[tag=InkW_OptionStatus_ChatSpam]"}]

#Return button
function inkwell_core:text/return

#Bottom line
function inkwell_core:text/generic_line

#Kill armorstands
kill @e[type=minecraft:armor_stand,tag=InkW_OptionMenuPart]