##Ran to show the credits


#Generic menu
function inkwell_core:text/menu_generic

#Chat spam
execute if score $Inkwell_Core_ChatSpam InkW_Temp matches 1 run function inkwell_core:text/chat_spam

#Header
scoreboard players set $InkW_HeaderText InkW_Temp 1
scoreboard players set $InkW_HeaderLine InkW_Temp 18
function inkwell_core:text/header

#Credit - Red
tellraw @s ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"RockNRed","color":"#F53232","hoverEvent":{"action":"show_text","contents":["",{"text":"Module Contributions:","color":"#CCCDFF"},{"text":"\n"},{"text":"> All officially released modules","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Designer and Creator","color":"#CCCDFF"}]

#Credit - Pear
tellraw @s ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"PearUhDox","color":"#A350F9","hoverEvent":{"action":"show_text","contents":["",{"text":"Module Contributions:","color":"#CCCDFF"},{"text":"\n"},{"text":"> Inkwell Core","color":"#CCCDFF"},{"text":"\n"},{"text":"> Riptide Attack","color":"#CCCDFF"},{"text":"\n"},{"text":"> Guns","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Inspiration, command assistance, tag files, and design ideas","color":"#CCCDFF"}]

#Credit - Beast
tellraw @s ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"BeastMasterFTW","color":"#800000","hoverEvent":{"action":"show_text","contents":["",{"text":"Module Contributions:","color":"#CCCDFF"},{"text":"\n"},{"text":"> Inkwell Core","color":"#CCCDFF"},{"text":"\n"},{"text":"> Guns","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Design ideas","color":"#CCCDFF"}]

#Credit - 14er
tellraw @s ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"14er","color":"#EEF2C0","hoverEvent":{"action":"show_text","contents":["",{"text":"Module Contributions:","color":"#CCCDFF"},{"text":"\n"},{"text":"> Inkwell Core","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"RNG function and the extremely useful Mapmaking Megaserver","color":"#CCCDFF"}]

#Credit - Galactic
tellraw @s ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"GalacticAC","color":"#9565DC","hoverEvent":{"action":"show_text","contents":["",{"text":"Module Contributions:","color":"#CCCDFF"},{"text":"\n"},{"text":"> Inkwell Core","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Custom player damage using thorns - concept and base tech","color":"#CCCDFF"}]

#Credit - Friends
tellraw @s ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Friends","color":"#E63D97","hoverEvent":{"action":"show_text","contents":["",{"text":"Module Contributions:","color":"#CCCDFF"},{"text":"\n"},{"text":"> N/A","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Morale support (Hover over me for full list)","color":"#CCCDFF","hoverEvent":{"action":"show_text","contents":["",{"text":"To all my friends new and old (and who aren't in the credits already) who've helped me through.","color":"#CCCDFF"},{"text":"\n"},{"text":"> SuzunaAoi","color":"#CCCDFF"},{"text":"\n"},{"text":"> Deneb_Stargazer","color":"#CCCDFF"},{"text":"\n"},{"text":"> WhyAmIPlayingMC","color":"#CCCDFF"},{"text":"\n"},{"text":"> Dayablep","color":"#CCCDFF"},{"text":"\n"},{"text":"> And more!","color":"#CCCDFF"}]}}]

#Credit - Misc
tellraw @s ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Miscellaneous","color":"#3CB80F","hoverEvent":{"action":"show_text","contents":["",{"text":"Module Contributions:","color":"#CCCDFF"},{"text":"\n"},{"text":"> N/A","color":"#CCCDFF"}]}},{"text":"⁆ ","bold":true,"color":"#FCB51D"},{"text":"Additional small thanks (Hover over me for full list)","color":"#CCCDFF","hoverEvent":{"action":"show_text","contents":["",{"text":"Rather they helped me answer a question, provided me with a resource, or were an audience to demonstrate too; they helped me out. Thanks!","color":"#CCCDFF"},{"text":"\n"},{"text":"> blade933","color":"#CCCDFF"},{"text":"\n"},{"text":"> Cool Cats Cuteyard","color":"#CCCDFF"},{"text":"\n"},{"text":"> The Complete The Monument Community","color":"#CCCDFF"},{"text":"\n"},{"text":"> And more!","color":"#CCCDFF"}]}}]

#Return button
execute if entity @s[gamemode=creative] run function inkwell_core:text/return

#Middle line
function inkwell_core:text/generic_line

#Text
tellraw @s {"text":"You can hover over a name to see what modules they contributed to, rather directly or indirectly","italic":true,"color":"#CCCDFF"}

#Bottom line
function inkwell_core:text/generic_line