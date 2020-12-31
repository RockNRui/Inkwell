###Ran when datapack is installed
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Guns","color":"#713D3D"},{"text":"/Generic:","color":"#FF352E"},{"text":" Installed.","color":"#CCCDFF"}]


##Add scoreboards
#Wooden
scoreboard objectives add InkW_Guns_Dr_WSw minecraft.dropped:minecraft.wooden_sword
scoreboard objectives add InkW_Guns_Dr_WSh minecraft.dropped:minecraft.wooden_shovel
scoreboard objectives add InkW_Guns_Dr_WPi minecraft.dropped:minecraft.wooden_pickaxe
scoreboard objectives add InkW_Guns_Dr_WAx minecraft.dropped:minecraft.wooden_axe
scoreboard objectives add InkW_Guns_Dr_WHo minecraft.dropped:minecraft.wooden_hoe

#Stone
scoreboard objectives add InkW_Guns_Dr_SSw minecraft.dropped:minecraft.stone_sword
scoreboard objectives add InkW_Guns_Dr_SSh minecraft.dropped:minecraft.stone_shovel
scoreboard objectives add InkW_Guns_Dr_SPi minecraft.dropped:minecraft.stone_pickaxe
scoreboard objectives add InkW_Guns_Dr_SAx minecraft.dropped:minecraft.stone_axe
scoreboard objectives add InkW_Guns_Dr_SHo minecraft.dropped:minecraft.stone_hoe

#Gold
scoreboard objectives add InkW_Guns_Dr_GSw minecraft.dropped:minecraft.golden_sword
scoreboard objectives add InkW_Guns_Dr_GSh minecraft.dropped:minecraft.golden_shovel
scoreboard objectives add InkW_Guns_Dr_GPi minecraft.dropped:minecraft.golden_pickaxe
scoreboard objectives add InkW_Guns_Dr_GAx minecraft.dropped:minecraft.golden_axe
scoreboard objectives add InkW_Guns_Dr_GHo minecraft.dropped:minecraft.golden_hoe

#Iron
scoreboard objectives add InkW_Guns_Dr_ISw minecraft.dropped:minecraft.iron_sword
scoreboard objectives add InkW_Guns_Dr_ISh minecraft.dropped:minecraft.iron_shovel
scoreboard objectives add InkW_Guns_Dr_IPi minecraft.dropped:minecraft.iron_pickaxe
scoreboard objectives add InkW_Guns_Dr_IAx minecraft.dropped:minecraft.iron_axe
scoreboard objectives add InkW_Guns_Dr_IHo minecraft.dropped:minecraft.iron_hoe

#Diamond
scoreboard objectives add InkW_Guns_Dr_DSw minecraft.dropped:minecraft.diamond_sword
scoreboard objectives add InkW_Guns_Dr_DSh minecraft.dropped:minecraft.diamond_shovel
scoreboard objectives add InkW_Guns_Dr_DPi minecraft.dropped:minecraft.diamond_pickaxe
scoreboard objectives add InkW_Guns_Dr_DAx minecraft.dropped:minecraft.diamond_axe
scoreboard objectives add InkW_Guns_Dr_DHo minecraft.dropped:minecraft.diamond_hoe

#Netherite
scoreboard objectives add InkW_Guns_Dr_NSw minecraft.dropped:minecraft.netherite_sword
scoreboard objectives add InkW_Guns_Dr_NSh minecraft.dropped:minecraft.netherite_shovel
scoreboard objectives add InkW_Guns_Dr_NPi minecraft.dropped:minecraft.netherite_pickaxe
scoreboard objectives add InkW_Guns_Dr_NAx minecraft.dropped:minecraft.netherite_axe
scoreboard objectives add InkW_Guns_Dr_NHo minecraft.dropped:minecraft.netherite_hoe

#Misc
scoreboard objectives add InkW_Guns_Dr_MSh minecraft.dropped:minecraft.shears
scoreboard objectives add InkW_Guns_Dr_MFR minecraft.dropped:minecraft.fishing_rod
scoreboard objectives add InkW_Guns_Dr_MFS minecraft.dropped:minecraft.flint_and_steel
scoreboard objectives add InkW_Guns_Dr_MBo minecraft.dropped:minecraft.bow
scoreboard objectives add InkW_Guns_Dr_MCB minecraft.dropped:minecraft.crossbow
scoreboard objectives add InkW_Guns_Dr_MTr minecraft.dropped:minecraft.trident
scoreboard objectives add InkW_Guns_Dr_MSh minecraft.dropped:minecraft.shield
scoreboard objectives add InkW_Guns_Dr_MTo minecraft.dropped:minecraft.totem_of_undying

#Timer
scoreboard objectives add InkW_Guns_Timer dummy
#Pellet lifetime
scoreboard objectives add InkW_Guns_PLife dummy
#Gun cooldown
scoreboard objectives add InkW_Guns_GCool dummy
#Gun cooldown
scoreboard objectives add InkW_Guns_GDmg dummy
#Pellet count
scoreboard objectives add InkW_Guns_PCo dummy
#Pellet Peirce
scoreboard objectives add InkW_Guns_PP dummy




##Configure defaults

#Module block
setblock 3151411 15 3151409 minecraft:iron_block
#Module sign
setblock 3151411 17 3151409 spruce_wall_sign[facing=south]{Text1:'{"text":"Module:"}',Text2:'{"text":"Guns"}',Text4:'{"text":"V1.0"}'} replace