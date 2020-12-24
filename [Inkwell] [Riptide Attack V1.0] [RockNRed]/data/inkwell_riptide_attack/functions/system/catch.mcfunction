###Ran on load
##This function is ran to check the existence of the Core. Core will kill the relevant armorstand one tick earlier

#Armorstand found, run failed install
execute if entity @e[tag=Inkwell_RiptideAttack_CheckV10] run function inkwell_riptide_attack:system/fail_install
#Armorstand found, install
execute unless entity @e[tag=Inkwell_RiptideAttack_CheckV10] unless block 3151409 15 3151409 iron_block run schedule function inkwell_riptide_attack:system/install 1s

#Kill armorstand
kill @e[tag=Inkwell_RiptideAttack_CheckV10,type=armor_stand]