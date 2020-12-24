###Ran when datapack is loaded

#Summon an armorstand for the Core datapack to kill for this one to thus check the existence of
summon minecraft:armor_stand ~ ~ ~ {Tags:["Inkwell_DebugTools_CheckV10"]}
#Schedule function to check armorstand's status
schedule function d:system/catch 2t

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Debug Tools","color":"#BF0D0D"},{"text":"/Generic:","color":"#FF352E"},{"text":" Loaded.","color":"#CCCDFF"}]