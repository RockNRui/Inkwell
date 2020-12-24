#Move forward
tp @s ^ ^ ^.4
#Particles
particle crit ~ ~ ~ 0.01 0.01 0.01 0.01 3
#Hit entity
execute if entity @e[type=#inkwell_core:hostile,distance=..2] run function inkwell_guns:mechanic/pellet/hit
#Kill if coliding with a block
execute unless block ~ ~ ~ #inkwell_core:can_raycast run kill @s
#Kill if range reached
execute as @s at @s if entity @s[scores={InkW_Guns_PLife=..1}] run kill @s
#Kill if peirce reached
execute as @s at @s if entity @s[scores={InkW_Guns_PP=0}] run kill @s
#Add spread
execute if entity @s[tag=InkW_Gun_Add_Spread] run function inkwell_guns:mechanic/pellet/spread