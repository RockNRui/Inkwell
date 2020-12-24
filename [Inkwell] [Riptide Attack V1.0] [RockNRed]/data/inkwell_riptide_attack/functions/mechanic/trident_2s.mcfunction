##Run every 2 seconds
#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/Generic:","color":"#FF352E"},{"text":" Clock: 2 seconds.","color":"#CCCDFF"}]


#Kill dropped tridents
kill @e[type=item,nbt={Item:{tag:{Inkwell_RiptideAttack:1}}}]
#If the player has the tag but not the trident, run the function to re-equip.
execute as @a at @s if entity @s[tag=Inkwell_RiptideAttack,nbt=!{Inventory:[{Slot:-106b,tag:{Inkwell_RiptideAttack:1}}]}] run function inkwell_riptide_attack:mechanic/equip_trident_offhand
#If a player without the tag has the trident, run a cleanup function
execute as @a[tag=!Inkwell_RiptideDebug] at @s if entity @s[tag=!Inkwell_RiptideAttack,nbt={Inventory:[{Slot:-106b,tag:{Inkwell_RiptideAttack:1}}]}] run function inkwell_riptide_attack:mechanic/end

#Run function to clear extra tridents off the player
execute as @a[tag=!Inkwell_RiptideDebug] at @s run function inkwell_riptide_attack:mechanic/clear_extra

#Init CD score
scoreboard players add @a InkW_Riptide_CD 0