
#Add spread tag if parent has it
execute if entity @e[tag=InkW_Pellet_Parent,tag=InkW_Guns_Spread_Pellet,distance=..3,sort=nearest,limit=1] run tag @s add InkW_Gun_Add_Spread

#Align with parent's view pos
tp @s @e[tag=InkW_Pellet_Parent,distance=..3,sort=nearest,limit=1]
#Fix height for players
execute if entity @a[tag=InkW_Pellet_Parent,distance=..3,sort=nearest,limit=1] run tp @s ~ ~1.4 ~

##Stats

#Lifetime
scoreboard players operation @s InkW_Guns_PCo = @e[tag=InkW_Pellet_Parent,distance=..3,sort=nearest,limit=1] InkW_Guns_PCo
execute if entity @s[scores={InkW_Guns_PCo=0}] run scoreboard players set @s InkW_Guns_PLife 20
execute if entity @s[scores={InkW_Guns_PCo=1}] run scoreboard players set @s InkW_Guns_PLife 65
execute if entity @s[scores={InkW_Guns_PCo=2}] run scoreboard players set @s InkW_Guns_PLife 45
execute if entity @s[scores={InkW_Guns_PCo=3}] run scoreboard players set @s InkW_Guns_PLife 35
execute if entity @s[scores={InkW_Guns_PCo=4}] run scoreboard players set @s InkW_Guns_PLife 25

#Damage
scoreboard players operation @s InkW_Guns_GDmg = @e[tag=InkW_Pellet_Parent,distance=..3,sort=nearest,limit=1] InkW_Guns_GDmg
execute if entity @s[tag=InkW_Gun_Add_Spread,scores={InkW_Guns_PCo=0}] run scoreboard players operation @s InkW_Guns_GDmg /= $InkW_Constant_5 InkW_Temp
execute if entity @s[tag=InkW_Gun_Add_Spread,scores={InkW_Guns_PCo=2}] run scoreboard players operation @s InkW_Guns_GDmg /= $InkW_Constant_2 InkW_Temp
execute if entity @s[tag=InkW_Gun_Add_Spread,scores={InkW_Guns_PCo=3}] run scoreboard players operation @s InkW_Guns_GDmg /= $InkW_Constant_3 InkW_Temp
execute if entity @s[tag=InkW_Gun_Add_Spread,scores={InkW_Guns_PCo=4}] run scoreboard players operation @s InkW_Guns_GDmg /= $InkW_Constant_4 InkW_Temp

#Peirce
scoreboard players set @s InkW_Guns_PP 1

#Clean up tags
tag @e[tag=InkW_Guns_Spread_Pellet,distance=..3] remove InkW_Guns_Spread_Pellet
tag @e[type=armor_stand,tag=InkW_Gun_Pellet_Process,distance=..3] remove InkW_Gun_Pellet_Process
