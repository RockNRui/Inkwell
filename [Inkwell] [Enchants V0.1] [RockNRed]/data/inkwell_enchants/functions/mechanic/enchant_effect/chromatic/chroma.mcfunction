scoreboard players add $Chromatic InkW_Temp 1
execute if score $Chromatic InkW_Temp matches 1 run team modify Inkwell_Chroma color red
execute if score $Chromatic InkW_Temp matches 2 run team modify Inkwell_Chroma color gold
execute if score $Chromatic InkW_Temp matches 3 run team modify Inkwell_Chroma color yellow
execute if score $Chromatic InkW_Temp matches 4 run team modify Inkwell_Chroma color green
execute if score $Chromatic InkW_Temp matches 5 run team modify Inkwell_Chroma color aqua
execute if score $Chromatic InkW_Temp matches 6 run team modify Inkwell_Chroma color blue
execute if score $Chromatic InkW_Temp matches 7 run team modify Inkwell_Chroma color dark_purple
execute if score $Chromatic InkW_Temp matches 7.. run scoreboard players set $Chromatic InkW_Temp 0

scoreboard players add $ChromaticB InkW_Temp 1
execute if score $ChromaticB InkW_Temp matches 1 run team modify Inkwell_ChromaB color light_purple
execute if score $ChromaticB InkW_Temp matches 2 run team modify Inkwell_ChromaB color dark_purple
execute if score $ChromaticB InkW_Temp matches 3 run team modify Inkwell_ChromaB color blue
execute if score $ChromaticB InkW_Temp matches 3.. run scoreboard players set $ChromaticB InkW_Temp 0

scoreboard players add $ChromaticC InkW_Temp 1
execute if score $ChromaticC InkW_Temp matches 1 run team modify Inkwell_ChromaC color red
execute if score $ChromaticC InkW_Temp matches 2 run team modify Inkwell_ChromaC color gold
execute if score $ChromaticC InkW_Temp matches 3 run team modify Inkwell_ChromaC color white
execute if score $ChromaticC InkW_Temp matches 4 run team modify Inkwell_ChromaC color light_purple
execute if score $ChromaticC InkW_Temp matches 5 run team modify Inkwell_ChromaC color dark_purple
execute if score $ChromaticC InkW_Temp matches 5.. run scoreboard players set $ChromaticC InkW_Temp 0