###Ran when datapack is uninstalled

#End mechanic for active players
execute as @a at @s run function inkwell_riptide_attack:mechanic/end

##Add scoreboards
#Use trident
scoreboard objectives remove InkW_Riptide_Use
#Deal damage
scoreboard objectives remove InkW_Riptide_Dmg
#Cooldown
scoreboard objectives remove InkW_Riptide_CD
#Dash timer
scoreboard objectives remove InkW_Riptide_DT
#Trident Count
scoreboard objectives remove InkW_Riptide_TC

##Reset dummy players
#Cooldown config
scoreboard players reset $Inkwell_Riptide_RiptideDashCooldown

#Uninstall message.
tellraw @a ["",{"text":"⁅","bold":true,"color":"gold"},{"text":"Inkwell","bold":true,"color":"#CDCCFF"},{"text":"⁆ ","bold":true,"color":"gold"},{"text":"Riptide Attack (V1.0) ","color":"#69C4FC"},{"text":"In-game portion uninstalled, however it will re-install upon a /reload. Delete the datapack from your datapacks folder to complete uninstallation.","color":"#CCCDFF"}]

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/Generic:","color":"#FF352E"},{"text":" Uninstalled.","color":"#CCCDFF"}]