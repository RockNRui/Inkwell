###Ran on load
##This function is ran to check the existence of the Core. Core will kill the relevant armorstand one tick earlier

#Armorstand found, run failed install
execute if entity @e[type=armor_stand,tag=Inkwell_Enchants_CheckV01,distance=..3] run function inkwell_enchants:system/fail_install
#Armorstand found, install
execute unless entity @e[type=armor_stand,tag=Inkwell_Enchants_CheckV01,distance=..3] unless block 3151412 15 3151409 iron_block run schedule function inkwell_enchants:system/install 1s

#Kill armorstand
kill @e[type=armor_stand,tag=Inkwell_Enchants_CheckV01,distance=..3]