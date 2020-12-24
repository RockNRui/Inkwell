##Run to forcibly drop the player's mainhand
#Debug message
execute unless entity @s[nbt=!{SelectedItem:{}}] run tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Mainhand item dropped.","color":"#CCCDFF"}]

#Given the player has an item in their mainhand slot, summon a dummy item to paste mainhand item onto
execute unless entity @s[nbt=!{SelectedItem:{}}] run summon item ~ ~1 ~ {Tags:["Inkwell_Core_MainhandDrop"],Invulnerable:1b,PickupDelay:40,Item:{id:"minecraft:stone",Count:1b}}
#Given the player has an item in their mainand slot, tell the player their mainhand was dropped
execute unless entity @s[nbt=!{SelectedItem:{}}] run tellraw @s {"text":"Your mainhand item was forcibly dropped","color":"white"}
#Merge mainhand item onto dropped item
execute positioned ~ ~1 ~ run data modify entity @e[type=item,limit=1,tag=Inkwell_Core_MainhandDrop,distance=..3] Item merge from entity @s SelectedItem
#Empty mainhand slot
replaceitem entity @s weapon.mainhand air 1
#Clean up tag
tag @e[type=item,tag=Inkwell_Core_MainhandDrop,limit=1,distance=..3] remove Inkwell_Core_MainhandDrop