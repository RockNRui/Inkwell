#Chat spam
execute if score $Inkwell_Core_ChatSpam InkW_Temp matches 1 run function inkwell_core:text/chat_spam
#Bring up menu
function d:configure/config_menu