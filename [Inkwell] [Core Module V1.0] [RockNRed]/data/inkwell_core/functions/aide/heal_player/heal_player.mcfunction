##Function called to heal the player
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Healing player.","color":"#CCCDFF"}]

#If a player is needed to heal a threshhold of health, heal that amount of remove that amount from their score
execute if score @s InkW_PlayerHeal matches 128.. run function inkwell_core:aide/heal_player/heal_amount/128
execute if score @s InkW_PlayerHeal matches 64.. run function inkwell_core:aide/heal_player/heal_amount/64
execute if score @s InkW_PlayerHeal matches 32.. run function inkwell_core:aide/heal_player/heal_amount/32
execute if score @s InkW_PlayerHeal matches 16.. run function inkwell_core:aide/heal_player/heal_amount/16
execute if score @s InkW_PlayerHeal matches 8.. run function inkwell_core:aide/heal_player/heal_amount/8
execute if score @s InkW_PlayerHeal matches 4.. run function inkwell_core:aide/heal_player/heal_amount/4
execute if score @s InkW_PlayerHeal matches 2.. run function inkwell_core:aide/heal_player/heal_amount/2
execute if score @s InkW_PlayerHeal matches 1 run function inkwell_core:aide/heal_player/heal_amount/1
#Then, loop the function if they have health needed healing remaining
execute if score @s InkW_PlayerHeal matches 1.. run function inkwell_core:aide/heal_player/heal_player
#Start loop for tp'ing cloud to the player
function inkwell_core:aide/heal_player/cloud_tp_loop