###Ran when datapack is installed
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/Generic:","color":"#FF352E"},{"text":" Installed.","color":"#CCCDFF"}]


##Add scoreboards
#Use trident
scoreboard objectives add InkW_Riptide_Use minecraft.used:minecraft.trident
#Deal damage
scoreboard objectives add InkW_Riptide_Dmg minecraft.custom:minecraft.damage_dealt
#Cooldown
scoreboard objectives add InkW_Riptide_CD dummy
#Dash timer
scoreboard objectives add InkW_Riptide_DT dummy
#Trident Count
scoreboard objectives add InkW_Riptide_TC dummy
#Invul timer
scoreboard objectives add InkW_Riptide_IT dummy

##Configure defaults
#Cooldown
scoreboard players set $Inkwell_Riptide_RiptideDashCooldown InkW_Temp 25

#Module block
setblock 3151409 15 3151409 minecraft:iron_block
#Module sign
setblock 3151409 17 3151409 birch_wall_sign[facing=south]{Text1:'{"text":"Module:"}',Text2:'{"text":"Riptide Attack"}',Text4:'{"text":"V1.0"}'} replace