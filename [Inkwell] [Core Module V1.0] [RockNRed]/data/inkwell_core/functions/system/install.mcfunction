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




####Build
###Bocks :)
#Replace lower, temp
fill 3151423 57 3151423 3151408 0 3151408 air
#Lowest floor
fill 3151423 0 3151423 3151408 0 3151408 minecraft:bedrock
#North wall
fill 3151408 1 3151408 3151423 255 3151408 minecraft:bedrock
#East wall
fill 3151423 255 3151408 3151423 0 3151423 bedrock
#South wall
fill 3151423 255 3151423 3151408 0 3151423 bedrock
#West wall
fill 3151408 255 3151423 3151408 0 3151408 bedrock
#Top fill
fill 3151408 255 3151408 3151423 130 3151423 bedrock
#Bottom fill
fill 3151408 18 3151408 3151423 129 3151423 bedrock
#Sea lantern floor
fill 3151409 1 3151422 3151422 1 3151409 minecraft:sea_lantern
#Sea lantern floor center
fill 3151415 1 3151416 3151416 1 3151415 minecraft:bedrock
#Sea lantern cieling
fill 3151422 18 3151409 3151409 18 3151422 minecraft:sea_lantern

###Sign
##Middle
fill 3151409 6 3151409 3151422 11 3151409 minecraft:stone_brick_wall
#Top
fill 3151409 12 3151409 3151422 12 3151409 minecraft:cyan_terracotta
#Bottom
fill 3151409 5 3151409 3151422 5 3151409 minecraft:cyan_terracotta

##I
#Top
fill 3151410 10 3151409 3151412 10 3151409 minecraft:clay
#Bottom
fill 3151410 7 3151409 3151412 7 3151409 clay
#Middle
fill 3151411 8 3151409 3151411 9 3151409 minecraft:clay

##N
#Left
fill 3151414 7 3151409 3151414 10 3151409 minecraft:clay
#Right
fill 3151417 10 3151409 3151417 7 3151409 minecraft:clay
#Middle left
setblock 3151415 9 3151409 minecraft:clay
#Middle right
setblock 3151416 8 3151409 minecraft:clay

##K
#Left
fill 3151419 7 3151409 3151419 10 3151409 minecraft:clay
#Right, top
setblock 3151421 10 3151409 minecraft:clay
#Right, bottom
fill 3151421 8 3151409 3151421 7 3151409 minecraft:clay
#Middle
setblock 3151420 9 3151409 minecraft:clay

###Lanterns
##Top
#Left
setblock 3151409 13 3151409 minecraft:soul_lantern
#Middle left
setblock 3151413 13 3151409 minecraft:soul_lantern
#Middle right
setblock 3151418 13 3151409 minecraft:soul_lantern
#Right
setblock 3151422 13 3151409 minecraft:soul_lantern

###Top floor
##Glass floor
#Black outer
fill 3151409 14 3151409 3151422 14 3151422 minecraft:black_stained_glass
#Cyan inner
fill 3151420 14 3151420 3151411 14 3151411 minecraft:cyan_stained_glass
#Hole
fill 3151420 14 3151420 3151412 14 3151419 air
#Spruce landing
fill 3151413 14 3151419 3151412 14 3151420 minecraft:spruce_planks
##Stairs, bottom to top
#Walkway
fill 3151419 9 3151419 3151419 9 3151420 minecraft:spruce_stairs[facing=west]
fill 3151418 10 3151420 3151418 10 3151419 minecraft:spruce_stairs[facing=west]
fill 3151417 11 3151420 3151417 11 3151419 minecraft:spruce_stairs[facing=west]
fill 3151416 12 3151420 3151416 12 3151419 minecraft:spruce_stairs[facing=west]
fill 3151415 13 3151420 3151415 13 3151419 minecraft:spruce_stairs[facing=west]
fill 3151414 14 3151420 3151414 14 3151419 minecraft:spruce_stairs[facing=west]
#Under slope
fill 3151418 9 3151419 3151418 9 3151420 minecraft:spruce_stairs[facing=east,half=top]
fill 3151417 10 3151419 3151417 10 3151420 minecraft:spruce_stairs[facing=east,half=top]
fill 3151416 11 3151419 3151416 11 3151420 minecraft:spruce_stairs[facing=east,half=top]
fill 3151415 12 3151419 3151415 12 3151420 minecraft:spruce_stairs[facing=east,half=top]
fill 3151414 13 3151419 3151414 13 3151420 minecraft:spruce_stairs[facing=east,half=top]


###Cage
##Walls
#Bottom
fill 3151414 2 3151410 3151417 2 3151409 minecraft:cyan_terracotta
#Top
fill 3151417 4 3151410 3151414 4 3151409 minecraft:cyan_terracotta
#Bars
fill 3151414 3 3151410 3151417 3 3151409 minecraft:iron_bars
#Air in bars
fill 3151416 3 3151409 3151415 3 3151409 air
#Magic blocks
setblock 3151415 3 3151409 minecraft:diamond_block
setblock 3151416 3 3151409 minecraft:iron_block
#Signs
setblock 3151415 2 3151411 spruce_wall_sign[facing=south]{Text1:'{"text":"These blocks"}',Text2:'{"text":"are used to"}',Text3:'{"text":"track elements"}',Text4:'{"text":"of Inkwell."}'} replace
setblock 3151416 2 3151411 spruce_wall_sign[facing=south]{Text1:'{"text":"Please do not"}',Text2:'{"text":"touch them"}',Text3:'{"text":"under any"}',Text4:'{"text":"circumstances!"}'} replace

###Config platform
##Walls
#Left bottom
fill 3151420 2 3151412 3151422 2 3151412 minecraft:cyan_terracotta
#Left top
fill 3151420 3 3151412 3151422 5 3151412 stone_bricks
#Right bottom
fill 3151422 2 3151419 3151420 2 3151419 minecraft:cyan_terracotta
#Right top
fill 3151422 3 3151419 3151420 7 3151419 stone_bricks
#Floor
fill 3151422 2 3151418 3151421 2 3151413 minecraft:spruce_planks
#Slabs
fill 3151420 2 3151418 3151420 2 3151413 minecraft:spruce_slab
#Stairs
fill 3151420 2 3151414 3151420 2 3151417 minecraft:spruce_stairs[facing=east]

###Tp platform
##Walls
#Left
fill 3151418 2 3151422 3151418 7 3151420 stone_bricks
#Right
fill 3151413 2 3151422 3151413 7 3151420 stone_bricks
#Front
fill 3151413 2 3151419 3151418 7 3151419 stone_bricks
#Floor
fill 3151417 2 3151422 3151414 2 3151420 minecraft:spruce_planks
#Bedrock Cieling
fill 3151417 7 3151420 3151414 7 3151422 stone_bricks
#Front gap
fill 3151417 6 3151419 3151414 5 3151419 air
#Cieling 2
fill 3151417 6 3151420 3151414 6 3151422 minecraft:dark_oak_planks
#Cieling slope
fill 3151417 6 3151420 3151414 6 3151420 dark_oak_stairs[facing=south,half=top]
fill 3151417 7 3151419 3151414 7 3151419 dark_oak_stairs[facing=south,half=top]
#Outer lower border
fill 3151413 2 3151419 3151418 2 3151419 minecraft:cyan_terracotta
#Floor outer spruce
fill 3151416 2 3151419 3151415 2 3151419 minecraft:spruce_planks
#Stairs
fill 3151416 2 3151418 3151415 2 3151418 spruce_stairs[facing=south]
##Lanterns
setblock 3151414 5 3151422 minecraft:soul_lantern[hanging=true]
setblock 3151417 5 3151422 minecraft:soul_lantern[hanging=true]
##Door
#Top left (from tp in facing forward
setblock 3151415 4 3151419 iron_door[facing=south,half=upper,hinge=right,open=false,powered=false]
#Bottom left
setblock 3151415 3 3151419 iron_door[facing=south,half=lower,hinge=right,open=false,powered=false]
#Top right
setblock 3151416 4 3151419 minecraft:iron_door[facing=south,half=upper,hinge=left,open=false,powered=false]
#Bottom right
setblock 3151416 3 3151419 minecraft:iron_door[facing=south,half=lower,hinge=left,open=false,powered=false]


###Stairs
#Floor on entry hut
fill 3151422 8 3151422 3151409 8 3151419 minecraft:spruce_planks
#Cyan line
fill 3151412 8 3151418 3151422 8 3151418 minecraft:cyan_terracotta
#Fence above it
fill 3151412 9 3151418 3151422 9 3151418 minecraft:dark_oak_fence

##Bottom stairs, top to bottom
fill 3151411 8 3151418 3151409 8 3151418 spruce_stairs[facing=south]
fill 3151411 7 3151417 3151409 7 3151417 spruce_stairs[facing=south]
fill 3151411 6 3151416 3151409 6 3151416 spruce_stairs[facing=south]
fill 3151411 5 3151415 3151409 5 3151415 spruce_stairs[facing=south]
fill 3151411 4 3151414 3151409 4 3151414 spruce_stairs[facing=south]
fill 3151411 3 3151413 3151409 3 3151413 spruce_stairs[facing=south]
fill 3151411 2 3151412 3151409 2 3151412 spruce_stairs[facing=south]
#Stair blocks, bottom to top from top left.
setblock 3151412 7 3151419 minecraft:spruce_planks
setblock 3151411 7 3151419 minecraft:spruce_planks
setblock 3151411 7 3151418 minecraft:spruce_planks
setblock 3151411 6 3151417 minecraft:spruce_planks
setblock 3151411 5 3151416 minecraft:spruce_planks
setblock 3151411 4 3151415 minecraft:spruce_planks
setblock 3151411 3 3151414 minecraft:spruce_planks
setblock 3151411 2 3151413 minecraft:spruce_planks
#Walls, left to right ordering, top down filling.
fill 3151412 6 3151419 3151411 3 3151418 stone_brick_wall
fill 3151412 6 3151418 3151412 3 3151418 air
fill 3151411 5 3151417 3151411 3 3151417 stone_brick_wall
fill 3151411 4 3151416 3151411 3 3151416 minecraft:stone_brick_wall
setblock 3151411 3 3151415 stone_brick_wall
#Stair wall bottom border
fill 3151411 2 3151414 3151411 2 3151419 minecraft:cyan_terracotta
setblock 3151412 2 3151419 minecraft:cyan_terracotta

###Empty room
#Floor
fill 3151422 2 3151422 3151419 2 3151420 minecraft:spruce_planks
#Stair
setblock 3151419 2 3151419 spruce_stairs[facing=south]
#Lantern
setblock 3151421 7 3151421 minecraft:soul_lantern[hanging=true]





