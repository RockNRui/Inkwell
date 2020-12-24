###Ran when datapack is installed

#Add scoreboards
#Hp test timer scoreboard
scoreboard objectives add InkW_Debug_HPTT dummy

#Module block
setblock 3151410 15 3151409 minecraft:iron_block
#Module sign
setblock 3151410 17 3151409 birch_wall_sign[facing=south]{Text1:'{"text":"Module:"}',Text2:'{"text":"Debug Tools"}',Text4:'{"text":"V1.0"}'} replace

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Debug Tools","color":"#BF0D0D"},{"text":"/Generic:","color":"#FF352E"},{"text":" Installed.","color":"#CCCDFF"}]