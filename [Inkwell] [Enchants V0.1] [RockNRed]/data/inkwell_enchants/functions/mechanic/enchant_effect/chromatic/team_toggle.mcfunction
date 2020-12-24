tag @a[scores={InkW_Ench_Chroma=1..}] add chroma_gay

tag RockNRed add chroma_bi
tag RockNRed remove chroma_gay
tag PearUhDox add chroma_bi
tag PearUhDox remove chroma_gay
tag SuzunaAoi add chroma_bi
tag SuzunaAoi remove chroma_gay
tag Suzuyama_Yukiho add chroma_bi
tag Suzuyama_Yukiho remove chroma_gay

tag Deneb_Stargazer add chroma_les
tag Deneb_Stargazer remove chroma_gay

execute as @a[tag=chroma_gay,scores={InkW_Ench_Chroma=1..},team=!Inkwell_Chroma] at @s run team join Inkwell_Chroma
execute as @a[tag=chroma_gay,scores={InkW_Ench_Chroma=0},team=Inkwell_Chroma] at @s run team leave @s
execute as @a[tag=chroma_bi,scores={InkW_Ench_Chroma=1..},team=!Inkwell_ChromaB] at @s run team join Inkwell_ChromaB
execute as @a[tag=chroma_bi,scores={InkW_Ench_Chroma=0},team=Inkwell_ChromaB] at @s run team leave @s
execute as @a[tag=chroma_les,scores={InkW_Ench_Chroma=1..},team=!Inkwell_ChromaC] at @s run team join Inkwell_ChromaC
execute as @a[tag=chroma_les,scores={InkW_Ench_Chroma=0},team=Inkwell_ChromaC] at @s run team leave @s

effect give @a[scores={InkW_Ench_Chroma=1..}] minecraft:glowing 1 0 true

tag @a remove chroma_gay
tag @a remove chroma_bi
tag @a remove chroma_les