##Run to forcibly drop the player's head slot
#Debug message
execute unless entity @s[nbt=!{Inventory:[{Slot:103b}]}] run tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Head item dropped.","color":"#CCCDFF"}]

#Given the player has an item in their head slot, summon a dummy item to paste head item onto
execute unless entity @s[nbt=!{Inventory:[{Slot:103b}]}] run summon item ~ ~1 ~ {Tags:["Inkwell_Core_HeadDrop"],Invulnerable:1b,PickupDelay:40,Item:{id:"minecraft:stone",Count:1b}}
#Given the player has an item in their head slot, tell the player their head was dropped
execute unless entity @s[nbt=!{Inventory:[{Slot:103b}]}] run tellraw @s {"text":"Your head item was forcibly dropped","color":"white"}
#Merge head item onto dropped item
execute positioned ~ ~1 ~ run data modify entity @e[type=item,limit=1,tag=Inkwell_Core_HeadDrop,distance=..3] Item merge from entity @s Inventory[{Slot:103b}]
#Empty head slot
replaceitem entity @s armor.head air 1
#Clean up tag
tag @e[type=item,tag=Inkwell_Core_HeadDrop,limit=1,distance=..3] remove Inkwell_Core_HeadDrop