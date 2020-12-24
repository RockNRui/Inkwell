##Function is called to briefly loop itself to damage the player for quick hp testing
#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Clock: hp test damage.","color":"#CCCDFF"}]


scoreboard players remove @a[scores={InkW_Debug_HPTT=1..}] InkW_Debug_HPTT 1

execute as @a[scores={InkW_Debug_HPTT=0}] at @s run scoreboard players set @s InkW_PlayerDmg 18
execute as @a[scores={InkW_Debug_HPTT=0}] at @s run function inkwell_core:aide/normal_damage_player/attempt_damage

execute if entity @a[scores={InkW_Debug_HPTT=1..}] run schedule function d:hp_test_loop 1t