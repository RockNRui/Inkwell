###Run every tick
#Debug message
tellraw @a[tag=Inkwell_Debug_Full] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/Generic:","color":"#FF352E"},{"text":" Clock: 1 tick.","color":"#CCCDFF"}]

##Dash mechanics
#If the player has a used score aswell as is holding the weapon, nulify use
execute as @a at @s if entity @s[tag=Inkwell_RiptideAttack,scores={InkW_Riptide_Use=1..},nbt={SelectedItem:{tag:{Inkwell_RiptideAttack:1}}}] run scoreboard players set @s InkW_Riptide_Use 0
#When use is detected, run dash function
execute as @a at @s if entity @s[tag=Inkwell_RiptideAttack,scores={InkW_Riptide_Use=1..},nbt={Inventory:[{Slot:-106b,tag:{Inkwell_RiptideAttack:1}}]}] run function inkwell_riptide_attack:mechanic/dash

#Tick down invul timer
scoreboard players remove @a[scores={InkW_Riptide_DT=1..}] InkW_Riptide_DT 1
#If on the ground, tick down timer faster
scoreboard players remove @a[nbt={OnGround:1b},scores={InkW_Riptide_DT=4..}] InkW_Riptide_DT 2

#If player dealt damage, set their riptide timer down to instantly end the dash
execute as @a at @s if entity @s[scores={InkW_Riptide_DT=1..,InkW_Riptide_Dmg=30..}] run scoreboard players set @s InkW_Riptide_DT 1

#When timer is 0, run dash finish function
execute as @a at @s if entity @s[scores={InkW_Riptide_DT=1}] run function inkwell_riptide_attack:mechanic/end_dash

#Zero out relevant scores
scoreboard players set @a[scores={InkW_Riptide_Use=1..}] InkW_Riptide_Use 0
scoreboard players set @a[scores={InkW_Riptide_Dmg=1..}] InkW_Riptide_Dmg 0

##Cooldown mechanics
#Tick down cooldown
scoreboard players remove @a[scores={InkW_Riptide_CD=1..}] InkW_Riptide_CD 1
#When timer is 0, run cooldown finish function
execute as @a at @s if entity @s[scores={InkW_Riptide_CD=1}] run function inkwell_riptide_attack:mechanic/end_cooldown