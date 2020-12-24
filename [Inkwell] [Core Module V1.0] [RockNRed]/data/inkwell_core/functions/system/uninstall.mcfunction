##Ran when datapack is uninstalled

#Remove forceloaded chunk.
forceload remove 3151419 3151419

##Remove scoreboards
#Temp score location
scoreboard objectives remove InkW_Temp
#Credits trigger
scoreboard objectives remove InkW_Credits
#Install notice trigger
scoreboard objectives remove InkW_IntNotice
#Disable debug warning message
scoreboard objectives remove InkW_DebugWarn
#Aide player damage tracker
scoreboard objectives remove InkW_PlayerDmg
#Aide player damage timer
scoreboard objectives remove InkW_PlayerDmgT
#Aide normal player damage death
scoreboard objectives remove InkW_Dmg_Death
#Aide player missing health
scoreboard objectives remove InkW_PMissHealth
#Aide max health fix timer
scoreboard objectives remove InkW_TrueDamageT
#Aide player heal
scoreboard objectives remove InkW_PlayerHeal
#Aide player heal timer for removing regen
scoreboard objectives remove InkW_PlayerHealT
#Aide player true damage amount to be re-healed
scoreboard objectives remove InkW_TrueDmgHeal
#Aide mob damage health to deal
scoreboard objectives remove InkW_MobDmg
#Aide rng
scoreboard objectives remove InkW_RNG


##Remove custom damage team
team remove InkW_PlayerDmg

#Uninstall message.
tellraw @a ["",{"text":"⁅","bold":true,"color":"gold"},{"text":"Inkwell","bold":true,"color":"#CDCCFF"},{"text":"⁆ ","bold":true,"color":"gold"},{"text":"Inkwell Core (V1.0) ","color":"#9C6D93"},{"text":"In-game portion uninstalled, however it will re-install upon a /reload. Delete the datapack from your datapacks folder to complete uninstallation.","color":"#CCCDFF"}]

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/Generic:","color":"#FF352E"},{"text":" Installed.","color":"#CCCDFF"}]