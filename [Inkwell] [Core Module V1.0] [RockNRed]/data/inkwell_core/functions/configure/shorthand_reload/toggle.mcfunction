##Toggle shorthand reload

#Generic menu actions
function inkwell_core:text/menu_generic


tag @s add Inkwell_CanToggle
execute if entity @s[tag=Inkwell_CanToggle] if score $Inkwell_Core_ShorthandReload InkW_Temp matches 0 run function inkwell_core:configure/shorthand_reload/enable
execute if entity @s[tag=Inkwell_CanToggle] if score $Inkwell_Core_ShorthandReload InkW_Temp matches 1 run function inkwell_core:configure/shorthand_reload/disable
tag @s remove Inkwell_CanToggle

execute if score $Inkwell_Core_OptionRepeat InkW_Temp matches 1 run function inkwell_core:configure/config_menu