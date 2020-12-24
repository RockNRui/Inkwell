#Get player's health
execute store result score $PlayerHealth InkW_Temp run data get entity @s Health
#Remove needed damage
scoreboard players operation $PlayerHealth InkW_Temp -= @s InkW_PlayerDmg
scoreboard players operation @s InkW_TrueDmgHeal = $PlayerHealth InkW_Temp
scoreboard players remove @s InkW_TrueDmgHeal 1
#Remove max health
attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000003 TrueDamageMaxHealth -9999 add
#Timer
scoreboard players set @s InkW_TrueDamageT 2
function inkwell_core:aide/true_damage_player/inbetween1