##Config menu for this module.

#Chat spam
execute if score $Inkwell_Core_ChatSpam InkW_Temp matches 1 if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 run function inkwell_core:text/chat_spam
#Generic menu actions
function inkwell_core:text/menu_generic

#Tellraws
#Header
scoreboard players set $InkW_HeaderText InkW_Temp 2
scoreboard players set $InkW_HeaderLine InkW_Temp 17
function inkwell_core:text/header

#Change trident
tellraw @s ["",{"text":"> Offhand Trident Template ","color":"#CCCDFF"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"↓","color":"#5166D2","clickEvent":{"action":"run_command","value":"/function inkwell_riptide_attack:configure/trident_template/get_default"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get the template off and on cooldown trident items.","color":"#CCCDFF"}}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"↑","color":"#5166D2","clickEvent":{"action":"run_command","value":"/function inkwell_riptide_attack:configure/trident_template/mainhand_off_cooldown"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set your MAINHAND item as the default \"off cooldown\" trident.","color":"#CCCDFF"},{"text":"\n"},{"text":"Must be a \"minecraft:trident\"","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"↑","color":"#5166D2","clickEvent":{"action":"run_command","value":"/function inkwell_riptide_attack:configure/trident_template/mainhand_on_cooldown"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set your MAINHAND item as the default \"on cooldown\" trident.","color":"#CCCDFF"},{"text":"\n"},{"text":"Must be a \"minecraft:prismarine_shard\"","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"?","bold":true,"color":"#CCCDFF","hoverEvent":{"action":"show_text","contents":["",{"text":"When using the riptide attack, the player will get a special trident forced into their offhand. This item has 2 states, one for off cooldown and one for on cooldown.","color":"#CCCDFF"},{"text":"\n"},{"text":"From here you can get the templates for these items, edit them how you wish, then place them in your mainhand and click the respective button to set them.","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"}]

#Return button
function inkwell_core:text/return

#Bottom line
function inkwell_core:text/generic_line

#Kill armorstands
kill @e[type=minecraft:armor_stand,tag=InkW_OptionMenuPart]