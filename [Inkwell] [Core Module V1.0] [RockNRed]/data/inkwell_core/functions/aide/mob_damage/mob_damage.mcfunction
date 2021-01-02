#Sim damage tick given on
execute if score $SimDamageTick InkW_Temp matches 1 run effect give @s minecraft:wither 1 1 true
#Get health, store in mob's temp score
execute store result score @s InkW_Temp run data get entity @s Health
#Minus 1 from damage, given on (to account for wither)
execute if score $SimDamageTick InkW_Temp matches 1 run scoreboard players operation @s InkW_MobDmg -= $InkW_Constant_1 InkW_Temp
#Remove damage from health
scoreboard players operation @s InkW_Temp -= @s InkW_MobDmg
#Zero out damage score
scoreboard players set @s InkW_MobDmg 0
#If mob is set to get 0 health, kill them
execute if entity @s[scores={InkW_Temp=..0}] run kill @s
#If mob is set to get more then 0 health, merge their health from their temp score
execute unless entity @s[scores={InkW_Temp=..0}] store result entity @s Health float 1 run scoreboard players get @s InkW_Temp