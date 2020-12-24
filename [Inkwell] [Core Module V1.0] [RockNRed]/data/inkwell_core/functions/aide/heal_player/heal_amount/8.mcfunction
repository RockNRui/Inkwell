##Function is called to heal a specified amount of health to the player

#Remove tracking score
scoreboard players remove @s InkW_PlayerHeal 8

#Summon area of effect cloud
summon area_effect_cloud ~ ~1 ~ {Tags:["InkW_Core_HealCloud"],Particle:"block air",ReapplicationDelay:1,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:0,WaitTime:0,Potion:"minecraft:water",Effects:[{Id:6b,Amplifier:2b,Duration:1}]}
