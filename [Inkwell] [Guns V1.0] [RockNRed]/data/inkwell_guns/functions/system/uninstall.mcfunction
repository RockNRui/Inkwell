###Ran when datapack is uninstalled

#End mechanic for active players
execute as @a at @s run function inkwell_riptide_attack:mechanic/end

##Remove scoreboards
#Wooden
scoreboard objectives remove InkW_Guns_Dr_WSw
scoreboard objectives remove InkW_Guns_Dr_WSh
scoreboard objectives remove InkW_Guns_Dr_WPi
scoreboard objectives remove InkW_Guns_Dr_WAx
scoreboard objectives remove InkW_Guns_Dr_WHo

#Stone
scoreboard objectives remove InkW_Guns_Dr_SSw
scoreboard objectives remove InkW_Guns_Dr_SSh
scoreboard objectives remove InkW_Guns_Dr_SPi
scoreboard objectives remove InkW_Guns_Dr_SAx
scoreboard objectives remove InkW_Guns_Dr_SHo

#Gold
scoreboard objectives remove InkW_Guns_Dr_GSw
scoreboard objectives remove InkW_Guns_Dr_GSh
scoreboard objectives remove InkW_Guns_Dr_GPi
scoreboard objectives remove InkW_Guns_Dr_GAx
scoreboard objectives remove InkW_Guns_Dr_GHo

#Iron
scoreboard objectives remove InkW_Guns_Dr_ISw
scoreboard objectives remove InkW_Guns_Dr_ISh
scoreboard objectives remove InkW_Guns_Dr_IPi
scoreboard objectives remove InkW_Guns_Dr_IAx
scoreboard objectives remove InkW_Guns_Dr_IHo

#Diamond
scoreboard objectives remove InkW_Guns_Dr_DSw
scoreboard objectives remove InkW_Guns_Dr_DSh
scoreboard objectives remove InkW_Guns_Dr_DPi
scoreboard objectives remove InkW_Guns_Dr_DAx
scoreboard objectives remove InkW_Guns_Dr_DHo

#Netherite
scoreboard objectives remove InkW_Guns_Dr_NSw
scoreboard objectives remove InkW_Guns_Dr_NSh
scoreboard objectives remove InkW_Guns_Dr_NPi
scoreboard objectives remove InkW_Guns_Dr_NAx
scoreboard objectives remove InkW_Guns_Dr_NHo

#Misc
scoreboard objectives remove InkW_Guns_Dr_MSh
scoreboard objectives remove InkW_Guns_Dr_MFR
scoreboard objectives remove InkW_Guns_Dr_MFS
scoreboard objectives remove InkW_Guns_Dr_MBo
scoreboard objectives remove InkW_Guns_Dr_MCB
scoreboard objectives remove InkW_Guns_Dr_MTr
scoreboard objectives remove InkW_Guns_Dr_MSh
scoreboard objectives remove InkW_Guns_Dr_MTo

#Timer
scoreboard objectives remove InkW_Guns_Timer
#Pellet lifetime
scoreboard objectives remove InkW_Guns_PLife
#Gun cooldown
scoreboard objectives remove InkW_Guns_GCool
#Gun cooldown
scoreboard objectives remove InkW_Guns_GDmg
#Pellet count
scoreboard objectives remove InkW_Guns_PCo
#Pellet Peirce
scoreboard objectives remove InkW_Guns_PP



##Reset dummy players


#Uninstall message.
tellraw @a ["",{"text":"⁅","bold":true,"color":"gold"},{"text":"Inkwell","bold":true,"color":"#CDCCFF"},{"text":"⁆ ","bold":true,"color":"gold"},{"text":"Guns (V1.0) ","color":"#713D3D"},{"text":"In-game portion uninstalled, however it will re-install upon a /reload. Delete the datapack from your datapacks folder to complete uninstallation.","color":"#CCCDFF"}]

#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Guns","color":"#713D3D"},{"text":"/Generic:","color":"#FF352E"},{"text":" Uninstalled.","color":"#CCCDFF"}]