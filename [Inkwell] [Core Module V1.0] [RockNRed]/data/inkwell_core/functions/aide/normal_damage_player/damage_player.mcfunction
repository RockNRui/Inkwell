##Function called to damage the player
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Summoning blaze/snowball.","color":"#CCCDFF"}]

#Give the player full KBR
attribute @s minecraft:generic.knockback_resistance modifier add 31514192-0114-2651-8151-950000000002 CustomDamageKBR 1 add
#Set the player's score to rmeove KBR in X ticks
scoreboard players set @s InkW_PlayerDmgT 6

#Summon iron golem with a thorns chestplate 10k blocks up
summon iron_golem ~ ~10000 ~ {DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,Health:100f,Tags:["InkW_Damage_Golem","InkW_Damage_Part"],CustomName:'{"text":"Custom Damage","italic":false}',ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:thorns",lvl:10s}]}},{}],ArmorDropChances:[0.085F,0.085F,-100.000F,0.085F],Attributes:[{Name:generic.max_health,Base:100}]}
#Merge the iron golem's thorns level to the player's damage score +10
execute positioned ~ ~10003 ~ as @e[type=iron_golem,tag=InkW_Damage_Golem,distance=..3,limit=1] store result entity @s ArmorItems[2].tag.Enchantments[0].lvl short 1 run scoreboard players add @a[scores={InkW_PlayerDmg=1..}] InkW_PlayerDmg 10
#Summon arrow
summon arrow ~ ~10003.1 ~ {damage:1d,Motion:[0.0,-10.0,0.0],Tags:["InkW_Damage_Arrow","InkW_Damage_Part"]}
#Merge player's UUID onto arrow
execute positioned ~ ~10003 ~ run data modify entity @e[type=minecraft:arrow,tag=InkW_Damage_Arrow,distance=..3,sort=nearest,limit=1] Owner set from entity @s UUID


#Run loop for removing KBR
function inkwell_core:aide/normal_damage_player/remove_kbr_loop

#Zero out player damage score
scoreboard players set @a[scores={InkW_PlayerDmg=1..}] InkW_PlayerDmg 0