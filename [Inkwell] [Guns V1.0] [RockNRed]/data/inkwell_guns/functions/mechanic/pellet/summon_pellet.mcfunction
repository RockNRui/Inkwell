
#Summon pellet
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["InkW_Gun_Pellet","InkW_Gun_Pellet_Process"]}
#Summon fixes/stat pasting
execute as @e[type=minecraft:armor_stand,tag=InkW_Gun_Pellet,tag=InkW_Gun_Pellet_Process,distance=..3] at @s run function inkwell_guns:mechanic/pellet/summon_fixes