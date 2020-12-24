##Ran when datapack load message is returned to.

function inkwell_core:text/menu_generic
#Chat spam given enabled
execute if score $Inkwell_Core_ChatSpam InkW_Temp matches 1 run function inkwell_core:text/chat_spam

#Header
scoreboard players set $InkW_HeaderText InkW_Temp 1
scoreboard players set $InkW_HeaderLine InkW_Temp 18
function inkwell_core:text/header
#Quote
function inkwell_core:text/quote
#Upper middle line
function inkwell_core:text/generic_line
#Core load
function inkwell_core:system/inst_message
#Riptide tridents load
function inkwell_riptide_attack:system/inst_message
#Guns load
function inkwell_guns:system/inst_message
#Ebchants
function inkwell_enchants:system/inst_message
#Debug tools load
function d:system/inst_message
#Bottom middle line
function inkwell_core:text/generic_line
#Credits/links bar
function inkwell_core:text/links_bar
#Bottom line
function inkwell_core:text/generic_line
