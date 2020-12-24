###Ran when datapack is loaded

#Summon an armorstand for the Core datapack to kill for this one to thus check the existence of
summon minecraft:armor_stand ~ ~ ~ {Tags:["Inkwell_Enchants_CheckV01"]}
#Schedule function to check armorstand's status
schedule function inkwell_enchants:system/catch 2t

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Enchants","color":"#9663D4"},{"text":"/Generic:","color":"#FF352E"},{"text":" Loaded.","color":"#CCCDFF"}]