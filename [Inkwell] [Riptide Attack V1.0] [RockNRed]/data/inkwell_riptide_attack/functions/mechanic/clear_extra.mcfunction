##Run every 2 seconds to clear extra tridents from the player
#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Checking for extra tridents...","color":"#CCCDFF"}]


#Get # of tridents in inventory
execute store result score $Riptide_TridentCount_Trident InkW_Temp run clear @s trident{Inkwell_RiptideAttack:1} 0
#Get # of trident-shards in inventory
execute store result score $Riptide_TridentCount_Shard InkW_Temp run clear @s prismarine_shard{Inkwell_RiptideAttack:1} 0
#Add total count to one scoreboard
scoreboard players operation RockNRed InkW_Riptide_TC += $Riptide_TridentCount_Trident InkW_Temp
scoreboard players operation RockNRed InkW_Riptide_TC += $Riptide_TridentCount_Shard InkW_Temp

#If they have more then one, clear them all & re-equip
execute if score @s InkW_Riptide_TC matches 2.. run function inkwell_riptide_attack:mechanic/clear
#Zero out score
scoreboard players set @s InkW_Riptide_TC 0
scoreboard players set $Riptide_TridentCount_Trident InkW_Temp 0
scoreboard players set $Riptide_TridentCount_Shard InkW_Temp 0