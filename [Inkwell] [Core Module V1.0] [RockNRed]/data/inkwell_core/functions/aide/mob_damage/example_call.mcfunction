#Sim damage tick? 0 for no, 1 for yes. Default: no.
scoreboard players set $SimDamageTick InkW_Temp 1
#Set damage ammount
scoreboard players set @s InkW_MobDmg 5
#Do damage
function inkwell_core:aide/mob_damage/attempt_damage