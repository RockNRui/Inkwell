##Ran to show the credits


#Generic menu
function inkwell_core:text/menu_generic
#Add tag
tag @s add InkW_NoDebugWarning

execute if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 run function inkwell_core:mechanic/home_message