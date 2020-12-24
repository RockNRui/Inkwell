

###Stats
##Cooldown
#Get player damage
execute store result score $InkW_Guns_GC InkW_Temp run attribute @s minecraft:generic.attack_damage get
#* by 20 (for converting seconds -> ticks)
scoreboard players operation $InkW_Guns_GC InkW_Temp *= $InkW_Constant_20 InkW_Temp
#/ by 8
scoreboard players operation $InkW_Guns_GC InkW_Temp /= $InkW_Constant_8 InkW_Temp
#Add 5 ticks
scoreboard players operation $InkW_Guns_GC InkW_Temp += $InkW_Constant_5 InkW_Temp
#Store cooldown
scoreboard players operation @s InkW_Guns_GCool = $InkW_Guns_GC InkW_Temp

##Pellet count
execute store result score @s InkW_Guns_PCo run attribute @s minecraft:generic.attack_speed get

##Damage
execute store result score @s InkW_Guns_GDmg run attribute @s minecraft:generic.attack_damage get

#Set player as pellet parent
tag @s add InkW_Pellet_Parent
#Summon pellet
function inkwell_guns:mechanic/pellet/summon_pellet

execute if score @s InkW_Guns_PCo matches 2.. run function inkwell_guns:mechanic/pellet/summon_pellet_spread
execute if score @s InkW_Guns_PCo matches 3.. run function inkwell_guns:mechanic/pellet/summon_pellet_spread
execute if score @s InkW_Guns_PCo matches 4.. run function inkwell_guns:mechanic/pellet/summon_pellet_spread

execute if score @s InkW_Guns_PCo matches 0 run function inkwell_guns:mechanic/pellet/summon_pellet_spread
execute if score @s InkW_Guns_PCo matches 0 run function inkwell_guns:mechanic/pellet/summon_pellet_spread
execute if score @s InkW_Guns_PCo matches 0 run function inkwell_guns:mechanic/pellet/summon_pellet_spread
execute if score @s InkW_Guns_PCo matches 0 run function inkwell_guns:mechanic/pellet/summon_pellet_spread

#Clean up parent tags
tag @a[tag=InkW_Pellet_Parent,distance=..3] remove InkW_Pellet_Parent
tag @e[type=armor_stand,tag=InkW_Pellet_Parent,distance=..3] remove InkW_Pellet_Parent
#Start step function
execute as @e[type=minecraft:armor_stand,tag=InkW_Gun_Pellet,distance=..3,limit=1,sort=nearest,scores={InkW_Guns_PLife=1..}] at @s run function inkwell_guns:mechanic/pellet/pellet_step

##Effects
#Sound
playsound minecraft:entity.generic.explode player @a[distance=..50] ~ ~ ~ 1 1.6
playsound minecraft:item.trident.throw master @a[distance=..3] ~ ~ ~ 0.1 0.1
#Particles
execute positioned ^ ^1.1 ^.2 run particle minecraft:smoke ~ ~ ~ 0.01 0.01 0.01 0.01 1
#Recoil
tp @s ~ ~ ~ ~ ~-.5
execute if score @s InkW_Guns_GDmg matches 1.. run tp @s ~ ~ ~ ~ ~-.5
execute if score @s InkW_Guns_GDmg matches 5.. run tp @s ~ ~ ~ ~ ~-.5
execute if score @s InkW_Guns_GDmg matches 10.. run tp @s ~ ~ ~ ~ ~-1
execute if score @s InkW_Guns_GDmg matches 15.. run tp @s ~ ~ ~ ~ ~-.5
execute if score @s InkW_Guns_GDmg matches 20.. run tp @s ~ ~ ~ ~ ~-1
execute if score @s InkW_Guns_GDmg matches 25.. run tp @s ~ ~ ~ ~ ~-.5
execute if score @s InkW_Guns_GDmg matches 30.. run tp @s ~ ~ ~ ~ ~-.5
execute if score @s InkW_Guns_GDmg matches 35.. run tp @s ~ ~ ~ ~ ~-.5