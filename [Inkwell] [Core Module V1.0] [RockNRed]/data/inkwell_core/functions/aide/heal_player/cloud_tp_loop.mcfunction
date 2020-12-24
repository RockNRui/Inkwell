##Function is called to briefly loop itself to tp the healing cloud(s) to the player so if the player is moving at high speed they'll absorb the cloud
#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Clock: Heal player cloud tp loop.","color":"#CCCDFF"}]

#Tp cloud
execute as @e[type=minecraft:area_effect_cloud,tag=InkW_Core_HealCloud] at @s run tp @s @p
#Loop function if cloud is alive
execute if entity @e[type=minecraft:area_effect_cloud,tag=InkW_Core_HealCloud] run schedule function inkwell_core:aide/heal_player/cloud_tp_loop 1t