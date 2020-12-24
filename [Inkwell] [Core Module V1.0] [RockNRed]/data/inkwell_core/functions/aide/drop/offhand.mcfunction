##Run to forcibly drop the player's offhand
#Debug message
execute unless entity @s[nbt=!{Inventory:[{Slot:-106b}]}] run tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Offhand item dropped.","color":"#CCCDFF"}]

#Given the player has an item in their offhand slot, summon a dummy item to paste offhand item onto
execute unless entity @s[nbt=!{Inventory:[{Slot:-106b}]}] run summon item ~ ~1 ~ {Tags:["Inkwell_Core_OffhandDrop"],Invulnerable:1b,PickupDelay:40,Item:{id:"minecraft:stone",Count:1b}}
#Given the player has an item in their offhand slot, tell the player their offhand was dropped
execute unless entity @s[nbt=!{Inventory:[{Slot:-106b}]}] run tellraw @s {"text":"Your offhand item was forcibly dropped","color":"white"}
#Merge offhand item onto dropped item
execute positioned ~ ~1 ~ run data modify entity @e[type=item,limit=1,tag=Inkwell_Core_OffhandDrop,distance=..3] Item merge from entity @s Inventory[{Slot:-106b}]
#Empty offhand slot
replaceitem entity @s weapon.offhand air 1
#Clean up tag
tag @e[type=item,tag=Inkwell_Core_OffhandDrop,limit=1,distance=..3] remove Inkwell_Core_OffhandDrop