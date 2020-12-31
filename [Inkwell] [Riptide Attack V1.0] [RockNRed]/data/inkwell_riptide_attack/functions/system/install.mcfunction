###Ran when datapack is installed
#Debug message
tellraw @a[tag=Inkwell_Debug] ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Debug/","color":"#FF352E"},{"text":"Riptide Attack","color":"#69C4FC"},{"text":"/Generic:","color":"#FF352E"},{"text":" Installed.","color":"#CCCDFF"}]


##Add scoreboards
#Use trident
scoreboard objectives add InkW_Riptide_Use minecraft.used:minecraft.trident
#Deal damage
scoreboard objectives add InkW_Riptide_Dmg minecraft.custom:minecraft.damage_dealt
#Cooldown
scoreboard objectives add InkW_Riptide_CD dummy
#Dash timer
scoreboard objectives add InkW_Riptide_DT dummy
#Trident Count
scoreboard objectives add InkW_Riptide_TC dummy
#Invul timer
scoreboard objectives add InkW_Riptide_IT dummy

##Configure defaults
#Cooldown
scoreboard players set $Inkwell_Riptide_RiptideDashCooldown InkW_Temp 25

#Module block
setblock 3151409 15 3151409 minecraft:iron_block
#Module sign
setblock 3151409 17 3151409 spruce_wall_sign[facing=south]{Text1:'{"text":"Module:"}',Text2:'{"text":"Riptide Attack"}',Text4:'{"text":"V1.0"}'} replace

#Module shulker
setblock 3151409 16 3151409 minecraft:light_blue_shulker_box[facing=up]{Items:[{Slot:0b,id:"minecraft:trident",Count:1b,tag:{Unbreakable:1b,Enchantments:[{lvl:1s,id:"minecraft:riptide"}],display:{Lore:['{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"Hold right click to charge whilst in"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"the rain or water, and release to"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"fly forward. You damage the first"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"mob you come into contact with"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"with your main hand weapon."}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"The trident itself is useless in the"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"main hand."}],"text":""}'],Name:'{"bold":true,"italic":false,"color":"#CCCDFF","text":"Template Trident"}'},Inkwell_RiptideAttack:1,Damage:12,AttributeModifiers:[{Amount:-10.0d,Slot:"mainhand",AttributeName:"minecraft:generic.attack_speed",Operation:0,UUID:[I;207339276,1587561787,-1189193374,1593634925],Name:"Modifier"}]}},{Slot:1b,id:"minecraft:prismarine_shard",Count:1b,tag:{Unbreakable:1b,Enchantments:[{lvl:1s,id:"minecraft:riptide"}],display:{Lore:['{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"Hold right click to charge whilst in"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"the rain or water, and release to"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"fly forward. You damage the first"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"mob you come into contact with"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"with your main hand weapon."}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"The trident itself is useless in the"}],"text":""}','{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_gray","text":"main hand."}],"text":""}'],Name:'{"extra":[{"bold":true,"italic":false,"color":"#CCCDFF","text":"Template Trident "},{"bold":true,"italic":false,"color":"#E32B2B","text":"[ON COOLDOWN]"}],"text":""}'},Inkwell_RiptideAttack:1,Damage:12,AttributeModifiers:[{Amount:-10.0d,Slot:"mainhand",AttributeName:"minecraft:generic.attack_speed",Operation:0,UUID:[I;207339276,1587561787,-1189193374,1593634925],Name:"Modifier"}]}}]}