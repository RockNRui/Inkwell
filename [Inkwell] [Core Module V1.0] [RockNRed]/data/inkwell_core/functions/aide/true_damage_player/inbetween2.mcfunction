execute as @a[scores={InkW_TrueDamageT=0}] at @s run function inkwell_core:aide/true_damage_player/damage_player3
scoreboard players remove @a[scores={InkW_TrueDamageT=0..}] InkW_TrueDamageT 1
execute if entity @a[scores={InkW_TrueDamageT=0..}] run schedule function inkwell_core:aide/true_damage_player/inbetween2 1t
