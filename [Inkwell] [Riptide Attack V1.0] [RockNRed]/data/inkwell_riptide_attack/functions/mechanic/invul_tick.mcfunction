execute as @a[scores={InkW_Riptide_IT=0}] at @s run effect clear @s resistance
scoreboard players remove @a[scores={InkW_Riptide_IT=0..}] InkW_Riptide_IT 1
execute if entity @a[scores={InkW_Riptide_IT=0..}] run schedule function inkwell_riptide_attack:mechanic/invul_tick 1t