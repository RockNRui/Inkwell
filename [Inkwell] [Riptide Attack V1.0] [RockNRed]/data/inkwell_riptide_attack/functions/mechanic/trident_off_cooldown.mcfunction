##Run to replace the player's offhand with the off-cooldown trident
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/","color":"#FF352E"},{"text":"⁅","bold":true,"color":"#FCB51D"},{"selector":"@s","bold":true,"color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":":","color":"#FF352E"},{"text":" Off-cooldown equip.","color":"#CCCDFF"}]


#Merge riptide module shulker to working shulker
data modify block 3151409 16 3151422 Items set from block 3151409 16 3151409 Items
#Loot shulker into offhand
loot replace entity @s weapon.offhand 1 mine 3151409 16 3151422 air{drop_contents:1b}