execute as @a[scores={InkW_Guns_Timer=0}] at @s run function inkwell_guns:mechanic/try_fire
scoreboard players remove @a[scores={InkW_Guns_Timer=0..}] InkW_Guns_Timer 1
execute if entity @a[scores={InkW_Guns_Timer=0..}] run schedule function inkwell_guns:mechanic/inbetween1 1t
