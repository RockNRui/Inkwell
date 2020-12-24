effect give @e[type=#cartographer_core:hostile,distance=..8] minecraft:blindness 3 0
execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run tp @s ~ ~ ~ facing entity @p feet
#execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run function cartographer_core:helper/push_half

playsound minecraft:entity.firework_rocket.launch player @a[distance=..8] ~ ~ ~ 5 1.5

particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal

execute if entity @s[scores={second_wind=1..},tag=bracing] run function cartographer_custom_enchantments:loop/enchant_effects/second_wind

execute if entity @s[scores={second_wind=1..,second_wind_cool=..240},tag=!bracing] run scoreboard players add @s second_wind_cool 10

effect clear @s resistance

tag @s remove evading
tag @s remove bracing