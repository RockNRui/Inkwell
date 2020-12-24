
function inkwell_core:aide/rng

##Vertical
#Down
execute if score $prngSample InkW_RNG matches 1..5 run tp @s ~ ~ ~ ~ ~1
execute if score $prngSample InkW_RNG matches 6..10 run tp @s ~ ~ ~ ~ ~3
execute if score $prngSample InkW_RNG matches 11..15 run tp @s ~ ~ ~ ~ ~5
execute if score $prngSample InkW_RNG matches 16..20 run tp @s ~ ~ ~ ~ ~7
execute if score $prngSample InkW_RNG matches 21..25 run tp @s ~ ~ ~ ~ ~9
execute if score $prngSample InkW_RNG matches 26..30 run tp @s ~ ~ ~ ~ ~11
execute if score $prngSample InkW_RNG matches 31..35 run tp @s ~ ~ ~ ~ ~13
execute if score $prngSample InkW_RNG matches 36..40 run tp @s ~ ~ ~ ~ ~15
execute if score $prngSample InkW_RNG matches 41..45 run tp @s ~ ~ ~ ~ ~17
execute if score $prngSample InkW_RNG matches 46..50 run tp @s ~ ~ ~ ~ ~19

#Up
execute if score $prngSample InkW_RNG matches 51..55 run tp @s ~ ~ ~ ~ ~-1
execute if score $prngSample InkW_RNG matches 56..60 run tp @s ~ ~ ~ ~ ~-3
execute if score $prngSample InkW_RNG matches 61..65 run tp @s ~ ~ ~ ~ ~-5
execute if score $prngSample InkW_RNG matches 66..70 run tp @s ~ ~ ~ ~ ~-7
execute if score $prngSample InkW_RNG matches 71..75 run tp @s ~ ~ ~ ~ ~-9
execute if score $prngSample InkW_RNG matches 76..80 run tp @s ~ ~ ~ ~ ~-11
execute if score $prngSample InkW_RNG matches 81..85 run tp @s ~ ~ ~ ~ ~-13
execute if score $prngSample InkW_RNG matches 86..90 run tp @s ~ ~ ~ ~ ~-15
execute if score $prngSample InkW_RNG matches 91..95 run tp @s ~ ~ ~ ~ ~-17
execute if score $prngSample InkW_RNG matches 96..100 run tp @s ~ ~ ~ ~ ~-19


function inkwell_core:aide/rng

##Horizontal
#Right
execute if score $prngSample InkW_RNG matches 1..5 run tp @s ~ ~ ~ ~1 ~
execute if score $prngSample InkW_RNG matches 6..10 run tp @s ~ ~ ~ ~2 ~
execute if score $prngSample InkW_RNG matches 11..15 run tp @s ~ ~ ~ ~3 ~
execute if score $prngSample InkW_RNG matches 16..20 run tp @s ~ ~ ~ ~4 ~
execute if score $prngSample InkW_RNG matches 21..25 run tp @s ~ ~ ~ ~5 ~
execute if score $prngSample InkW_RNG matches 26..30 run tp @s ~ ~ ~ ~6 ~
execute if score $prngSample InkW_RNG matches 31..35 run tp @s ~ ~ ~ ~7 ~
execute if score $prngSample InkW_RNG matches 36..40 run tp @s ~ ~ ~ ~8 ~
execute if score $prngSample InkW_RNG matches 41..45 run tp @s ~ ~ ~ ~9 ~
execute if score $prngSample InkW_RNG matches 46..50 run tp @s ~ ~ ~ ~10 ~

#Left
execute if score $prngSample InkW_RNG matches 51..55 run tp @s ~ ~ ~ ~-1 ~
execute if score $prngSample InkW_RNG matches 56..60 run tp @s ~ ~ ~ ~-2 ~
execute if score $prngSample InkW_RNG matches 61..65 run tp @s ~ ~ ~ ~-3 ~
execute if score $prngSample InkW_RNG matches 66..70 run tp @s ~ ~ ~ ~-4 ~
execute if score $prngSample InkW_RNG matches 71..75 run tp @s ~ ~ ~ ~-5 ~
execute if score $prngSample InkW_RNG matches 76..80 run tp @s ~ ~ ~ ~-6 ~
execute if score $prngSample InkW_RNG matches 81..85 run tp @s ~ ~ ~ ~-7 ~
execute if score $prngSample InkW_RNG matches 86..90 run tp @s ~ ~ ~ ~-8 ~
execute if score $prngSample InkW_RNG matches 91..95 run tp @s ~ ~ ~ ~-9 ~
execute if score $prngSample InkW_RNG matches 96..100 run tp @s ~ ~ ~ ~-10 ~



tag @s remove InkW_Gun_Add_Spread

