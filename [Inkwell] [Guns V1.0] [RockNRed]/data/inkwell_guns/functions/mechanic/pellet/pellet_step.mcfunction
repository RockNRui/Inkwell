execute as @e[type=armor_stand,tag=InkW_Gun_Pellet] at @s run function inkwell_guns:mechanic/pellet/individual
scoreboard players remove @e[type=armor_stand,tag=InkW_Gun_Pellet] InkW_Guns_PLife 1
execute as @e[type=armor_stand,tag=InkW_Gun_Pellet] at @s if entity @s[scores={InkW_Guns_PLife=-1..}] run function inkwell_guns:mechanic/pellet/pellet_step
