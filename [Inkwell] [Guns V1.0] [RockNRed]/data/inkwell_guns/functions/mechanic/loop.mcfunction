
scoreboard players remove @a[scores={InkW_Guns_GCool=-7..}] InkW_Guns_GCool 1
execute as @a[scores={InkW_Guns_GCool=5}] run title @s actionbar {"text":"","color":"yellow"}
execute as @a[scores={InkW_Guns_GCool=1}] run title @s actionbar {"text":"Reloaded!","color":"yellow"}
execute as @a[scores={InkW_Guns_GCool=-7}] run title @s actionbar {"text":"","color":"yellow"}

#Wooden
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_WSw=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_WSh=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_WPi=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_WAx=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_WHo=1..}] run function inkwell_guns:mechanic/return_gun

#Stone
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_SSw=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_SSh=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_SPi=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_SAx=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_SHo=1..}] run function inkwell_guns:mechanic/return_gun

#Gold
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_GSw=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_GSh=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_GPi=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_GAx=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_GHo=1..}] run function inkwell_guns:mechanic/return_gun

#Iron
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_ISw=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_ISh=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_IPi=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_IAx=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_IHo=1..}] run function inkwell_guns:mechanic/return_gun

#Diamond
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_DSw=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_DSh=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_DPi=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_DAx=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_DHo=1..}] run function inkwell_guns:mechanic/return_gun

#Netherite
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_NSw=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_NSh=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_NPi=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_NAx=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_NHo=1..}] run function inkwell_guns:mechanic/return_gun

#Misc
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_MSh=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_MFR=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_MFS=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_MBo=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_MCB=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_MTr=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_MSh=1..}] run function inkwell_guns:mechanic/return_gun
execute as @a[tag=Inkwell_GunAttack] at @s if entity @s[scores={InkW_Guns_Dr_MTo=1..}] run function inkwell_guns:mechanic/return_gun