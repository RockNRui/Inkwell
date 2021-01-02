#Remove on pierce
scoreboard players remove @s InkW_Guns_PP 1
#Tag hit mob
tag @e[type=#inkwell_core:hostile,distance=..2,limit=1,sort=nearest] add InkW_Guns_Hit
#Put the bullet's damage onto the mob's damage score
scoreboard players operation @e[tag=InkW_Guns_Hit,distance=..3,limit=1,sort=nearest] InkW_MobDmg = @s InkW_Guns_GDmg
#Set damage spoofing to true
scoreboard players set $SimDamageTick InkW_Temp 1
#Attempt the damage
execute as @e[tag=InkW_Guns_Hit,distance=..3,limit=1,sort=nearest] run function inkwell_core:aide/mob_damage/attempt_damage
#Remove hit mob tag
tag @e[tag=InkW_Guns_Hit,distance=..3,limit=1,sort=nearest] remove InkW_Guns_Hit