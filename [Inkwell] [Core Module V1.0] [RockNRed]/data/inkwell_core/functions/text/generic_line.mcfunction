##Generic line. What do you want some brilliant insight? It's a line, dude


#Easter egg counterbreak :)
function inkwell_core:text/easter_egg_counterbreak

#Default (36 dashes)
execute unless entity @a[name=RockNRed] run tellraw @s {"text":"------------------------------------","bold":true,"italic":true,"color":"#CCCDFF"}
execute if entity @a[tag=EasterEggDisable] run tellraw @s {"text":"------------------------------------","bold":true,"italic":true,"color":"#CCCDFF"}
#Easter egg when I'm online
execute if entity @a[name=RockNRed,tag=!EasterEggDisable] run tellraw @s ["",{"text":"-","bold":true,"color":"#CCCDFF"},{"text":"-","bold":true,"color":"#CAC7F8"},{"text":"-","bold":true,"color":"#C9C1F1"},{"text":"-","bold":true,"color":"#C8BBEA"},{"text":"-","bold":true,"color":"#C7B5E3"},{"text":"-","bold":true,"color":"#C6B0DC"},{"text":"-","bold":true,"color":"#C5ABD5"},{"text":"-","bold":true,"color":"#C4A6CF"},{"text":"-","bold":true,"color":"#C3A1C9"},{"text":"-","bold":true,"color":"#C29CC3"},{"text":"-","bold":true,"color":"#C197BD"},{"text":"-","bold":true,"color":"#C092B7"},{"text":"-","bold":true,"color":"#BF8DB1"},{"text":"-","bold":true,"color":"#BE89AC"},{"text":"-","bold":true,"color":"#BD85A7"},{"text":"-","bold":true,"color":"#BC81A2"},{"text":"-","bold":true,"color":"#BB7D9D"},{"text":"-","bold":true,"color":"#BA7998"},{"text":"-","bold":true,"color":"#B97593"},{"text":"-","bold":true,"color":"#B8718E"},{"text":"-","bold":true,"color":"#B76D8A"},{"text":"-","bold":true,"color":"#B66A86"},{"text":"-","bold":true,"color":"#B56782"},{"text":"-","bold":true,"color":"#B4647E"},{"text":"-","bold":true,"color":"#B3617A"},{"text":"-","bold":true,"color":"#B25E76"},{"text":"-","bold":true,"color":"#B15B72"},{"text":"-","bold":true,"color":"#B0586E"},{"text":"-","bold":true,"color":"#AF556A"},{"text":"-","bold":true,"color":"#AE5267"},{"text":"-","bold":true,"color":"#AD4F64"},{"text":"-","bold":true,"color":"#AC4C61"},{"text":"-","bold":true,"color":"#AB495E"},{"text":"-","bold":true,"color":"#AA465B"},{"text":"-","bold":true,"color":"#A94458"},{"text":"-","bold":true,"color":"#A84255"}]
