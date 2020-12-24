##Function is called to heal a specified amount of health to the player

#Remove tracking score
scoreboard players remove @s InkW_PlayerHeal 1

#Summon area of effect cloud
summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["InkW_Core_HealCloud"],Effects:[{Id:10b,Amplifier:7b,Duration:1,ShowParticles:0b}]}


