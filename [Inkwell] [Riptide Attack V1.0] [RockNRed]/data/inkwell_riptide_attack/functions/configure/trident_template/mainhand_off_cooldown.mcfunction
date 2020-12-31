##Clone mainhand item to storage shulker

#Generic menu functions
function inkwell_core:text/menu_generic

#Write mainhand item to storage
data modify storage inkwell_riptide_attack:temp_storage Item set from entity @s SelectedItem
#Set desired slot
data modify storage inkwell_riptide_attack:temp_storage Item.Slot set value 0b
#Merge on working data
data modify storage inkwell_riptide_attack:temp_storage Item.tag.Inkwell_RiptideAttack set value 1
#Merge item onto shulker
data modify block 3151409 16 3151409 Items append from storage inkwell_riptide_attack:temp_storage Item

