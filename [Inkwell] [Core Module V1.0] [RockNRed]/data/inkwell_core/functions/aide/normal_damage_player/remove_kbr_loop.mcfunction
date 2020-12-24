##Function is called to briefly loop itself to remove player KBR and tp leftover golem into the void
#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Clock: Normal player damage KBR/Golem deaht timer.","color":"#CCCDFF"}]

#Remove 1 from player's timer score
scoreboard players remove @a[scores={InkW_PlayerDmgT=1..}] InkW_PlayerDmgT 1
#Add 1 to golem's timer score
scoreboard players add @e[type=iron_golem,tag=InkW_Damage_Golem] InkW_PlayerDmgT 1

#When the player reaches a score of 0, remove their KBR.
execute as @a[scores={InkW_PlayerDmgT=0}] at @s run attribute @s minecraft:generic.knockback_resistance modifier remove 31514192-0114-2651-8151-950000000002
stopsound @a[scores={InkW_PlayerDmgT=1..}] * minecraft:enchant.thorns.hit

#TP golem into the void a few ticks after damage
execute if entity @e[type=iron_golem,scores={InkW_PlayerDmgT=5..}] run tp @e[type=iron_golem,tag=InkW_Damage_Part,scores={InkW_PlayerDmgT=5..}] ~ -1024 ~

#Given a player has timer score, loop this function
execute if entity @a[scores={InkW_PlayerDmgT=1..}] run schedule function inkwell_core:aide/normal_damage_player/remove_kbr_loop 1t