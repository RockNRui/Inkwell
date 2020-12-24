scoreboard players remove @s InkW_Guns_PP 1
tag @e[type=#inkwell_core:hostile,distance=..2,limit=1,sort=nearest] add InkW_Guns_Hit
scoreboard players operation @e[tag=InkW_Guns_Hit,distance=..3,limit=1,sort=nearest] InkW_MobDmg = @s InkW_Guns_GDmg
execute as @e[tag=InkW_Guns_Hit,distance=..3,limit=1,sort=nearest] run function inkwell_core:aide/mob_damage
tag @e[tag=InkW_Guns_Hit,distance=..3,limit=1,sort=nearest] remove InkW_Guns_Hit