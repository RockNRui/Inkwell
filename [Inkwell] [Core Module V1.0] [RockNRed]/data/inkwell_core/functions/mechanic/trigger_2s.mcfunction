##Run every 2 seconds. Used for getting trigger menus.

#Enable triggers
scoreboard players enable @a InkW_Credits
scoreboard players enable @a InkW_IntNotice
scoreboard players enable @a[tag=!InkW_NoDebugWarning] InkW_DebugWarn

#Testfor players with the score, and give them ascoiated menu
execute as @a at @s if entity @s[scores={InkW_Credits=1..}] run function inkwell_core:mechanic/credits
execute as @a at @s if entity @s[scores={InkW_IntNotice=1..}] run function inkwell_core:mechanic/int_notice
execute as @a at @s if entity @s[scores={InkW_DebugWarn=1..}] run function inkwell_core:mechanic/dismiss_warning

#Zero out triggers
scoreboard players set @a[scores={InkW_Credits=1..}] InkW_Credits 0
scoreboard players set @a[scores={InkW_IntNotice=1..}] InkW_IntNotice 0
scoreboard players set @a[scores={InkW_DebugWarn=1..}] InkW_DebugWarn 0