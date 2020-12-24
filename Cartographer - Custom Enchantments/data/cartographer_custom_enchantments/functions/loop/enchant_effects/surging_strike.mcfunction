playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 5 2
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 5 1.5

particle minecraft:cloud ^ ^1.5 ^3 0.2 0.2 0.2 0 2 normal
particle minecraft:cloud ^ ^1.5 ^4 0.2 0.2 0.2 0 3 normal
particle minecraft:cloud ^ ^1.5 ^5 0.2 0.2 0.2 0 4 normal
particle minecraft:cloud ^ ^1.5 ^6 0.2 0.2 0.2 0 5 normal
particle minecraft:cloud ^ ^1.5 ^7 0.2 0.2 0.2 0 6 normal

execute as @s at @s positioned ^ ^1.5 ^3 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @s at @s positioned ^ ^1.5 ^3 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/push
execute as @s at @s positioned ^ ^1.5 ^4 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @s at @s positioned ^ ^1.5 ^4 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/push
execute as @s at @s positioned ^ ^1.5 ^5 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @s at @s positioned ^ ^1.5 ^5 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/push
execute as @s at @s positioned ^ ^1.5 ^6 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @s at @s positioned ^ ^1.5 ^6 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/push
execute as @s at @s positioned ^ ^1.5 ^7 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @s at @s positioned ^ ^1.5 ^7 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/push

execute as @s at @s positioned ^ ^1.5 ^3 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run effect give @s wither 1 1 true
execute as @s[scores={surging_strike=1}] at @s positioned ^ ^1.5 ^3 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/1
execute as @s[scores={surging_strike=2}] at @s positioned ^ ^1.5 ^3 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/3
execute as @s[scores={surging_strike=3}] at @s positioned ^ ^1.5 ^3 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/5
execute as @s at @s positioned ^ ^1.5 ^4 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run effect give @s wither 1 1 true
execute as @s[scores={surging_strike=1}] at @s positioned ^ ^1.5 ^4 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/1
execute as @s[scores={surging_strike=2}] at @s positioned ^ ^1.5 ^4 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/3
execute as @s[scores={surging_strike=3}] at @s positioned ^ ^1.5 ^4 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/5
execute as @s at @s positioned ^ ^1.5 ^5 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run effect give @s wither 1 1 true
execute as @s[scores={surging_strike=1}] at @s positioned ^ ^1.5 ^5 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/1
execute as @s[scores={surging_strike=2}] at @s positioned ^ ^1.5 ^5 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/3
execute as @s[scores={surging_strike=3}] at @s positioned ^ ^1.5 ^5 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/5
execute as @s at @s positioned ^ ^1.5 ^6 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run effect give @s wither 1 1 true
execute as @s[scores={surging_strike=1}] at @s positioned ^ ^1.5 ^6 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/1
execute as @s[scores={surging_strike=2}] at @s positioned ^ ^1.5 ^6 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/3
execute as @s[scores={surging_strike=3}] at @s positioned ^ ^1.5 ^6 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/5
execute as @s at @s positioned ^ ^1.5 ^7 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run effect give @s wither 1 1 true
execute as @s[scores={surging_strike=1}] at @s positioned ^ ^1.5 ^7 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/1
execute as @s[scores={surging_strike=2}] at @s positioned ^ ^1.5 ^7 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/3
execute as @s[scores={surging_strike=3}] at @s positioned ^ ^1.5 ^7 run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/5