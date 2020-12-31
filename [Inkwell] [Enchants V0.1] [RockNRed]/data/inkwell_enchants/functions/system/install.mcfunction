###Ran when datapack is installed
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Enchants","color":"#9663D4"},{"text":"/Generic:","color":"#FF352E"},{"text":" Installed.","color":"#CCCDFF"}]


##Add scoreboards
scoreboard objectives add InkW_Ench_Chroma dummy

##Configure defaults

##Add teams
#Chroma
team add Inkwell_Chroma
team add Inkwell_ChromaB
team add Inkwell_ChromaC
#Configure team
team modify Inkwell_Chroma friendlyFire true
team modify Inkwell_ChromaB friendlyFire true
team modify Inkwell_ChromaC friendlyFire true


#Module block
setblock 3151412 15 3151409 minecraft:iron_block
#Module sign
setblock 3151412 17 3151409 spruce_wall_sign[facing=south]{Text1:'{"text":"Module:"}',Text2:'{"text":"Enchants"}',Text4:'{"text":"V0.1"}'} replace