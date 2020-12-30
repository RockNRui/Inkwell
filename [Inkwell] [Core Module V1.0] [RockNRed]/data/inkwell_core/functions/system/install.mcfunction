###Ran once to install the Core datapack.
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/Generic:","color":"#FF352E"},{"text":" Installed.","color":"#CCCDFF"}]


#Forceload chunk.
forceload add 3151419 3151419

##Add scoreboards
#Temp score location
scoreboard objectives add InkW_Temp dummy
#Credits trigger
scoreboard objectives add InkW_Credits trigger
#Install notice trigger
scoreboard objectives add InkW_IntNotice trigger
#Disable debug warning message
scoreboard objectives add InkW_DebugWarn trigger
#Aide player damage tracker
scoreboard objectives add InkW_PlayerDmg dummy
#Aide player damage timer
scoreboard objectives add InkW_PlayerDmgT dummy
#Aide normal player damage death
scoreboard objectives add InkW_Dmg_Death minecraft.killed_by:minecraft.iron_golem
#Aide player missing health
scoreboard objectives add InkW_PMissHealth dummy
#Aide max health fix timer
scoreboard objectives add InkW_TrueDamageT dummy
#Aide player heal
scoreboard objectives add InkW_PlayerHeal dummy
#Aide player heal timer for removing regen
scoreboard objectives add InkW_PlayerHealT dummy
#Aide player true damage amount to be re-healed
scoreboard objectives add InkW_TrueDmgHeal dummy
#Aide mob damage health to deal
scoreboard objectives add InkW_MobDmg dummy
#Aide rng
scoreboard objectives add InkW_RNG dummy

##Set constants
#1
scoreboard players set $InkW_Constant_1 InkW_Temp 1
#2
scoreboard players set $InkW_Constant_2 InkW_Temp 2
#3
scoreboard players set $InkW_Constant_3 InkW_Temp 3
#4
scoreboard players set $InkW_Constant_4 InkW_Temp 4
#5
scoreboard players set $InkW_Constant_5 InkW_Temp 5
#8
scoreboard players set $InkW_Constant_8 InkW_Temp 8
#10
scoreboard players set $InkW_Constant_10 InkW_Temp 10
#20
scoreboard players set $InkW_Constant_20 InkW_Temp 20

#Default rng seed
scoreboard players set $prng InkW_RNG 1709505025
#RNG credit
scoreboard players set $Made_by_14er!_Thank_you InkW_RNG 1900000000

##Set configs
#Shorthand reload- default 0 (false)
scoreboard players set $Inkwell_Core_ShorthandReload InkW_Temp 0
scoreboard players set $Inkwell_Core_OptionRepeat InkW_Temp 1
scoreboard players set $Inkwell_Core_ChatSpam InkW_Temp 1

###Add team for custom player damage
##Add
team add InkW_PlayerDmg
##Configure
#Collision
team modify InkW_PlayerDmg collisionRule never
#Friendlyfire
team modify InkW_PlayerDmg friendlyFire true
#Seefriendlyinvisibles
team modify InkW_PlayerDmg seeFriendlyInvisibles false




##Build
#Clear chunk
fill 3151408 0 3151408 3151423 120 3151423 air
fill 3151408 121 3151408 3151423 220 3151423 air
fill 3151408 221 3151408 3151423 255 3151423 air
#Build bocks
fill 3151408 0 3151408 3151423 120 3151423 bedrock
fill 3151408 121 3151408 3151423 220 3151423 bedrock
fill 3151408 221 3151408 3151423 255 3151423 bedrock
#Clear upper magic block area
fill 3151409 17 3151409 3151422 15 3151422 air replace bedrock
#"Cafe"
setblock 3151408 0 3151408 structure_block[mode=load]{name:"inkwell_core:forceload_chunk",rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock 3151408 1 3151408 minecraft:redstone_block
#Magic blocks
setblock 3151415 3 3151409 minecraft:diamond_block
setblock 3151416 3 3151409 minecraft:iron_block
#Clean up entities
kill @e[x=3151408,y=0,z=3151408,dx=16,dy=255,dz=255,type=!player,tag=!Inkwell_FC_Entity]