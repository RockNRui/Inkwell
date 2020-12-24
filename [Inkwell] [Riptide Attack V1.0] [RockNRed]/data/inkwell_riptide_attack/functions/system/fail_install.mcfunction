###Ran on a failed install

##Tellraws
#Base message
tellraw @a ["",{"text":"⁅","bold":true,"color":"#FCB51D"},{"text":"Inkwell ","bold":true,"color":"#CCCDFF"},{"text":"✒","color":"#CCCDFF"},{"text":"⁆","bold":true,"color":"#FCB51D"},{"text":"---------------------------","bold":true,"italic":true,"color":"#CCCDFF"}]
#Error
tellraw @a ["",{"text":"> ","color":"#CCCDFF"},{"text":"ERROR: Unable to install \"","color":"#FF352E"},{"text":"Riptide Attack (V1.0)","color":"#69C4FC"},{"text":"\" please install dependency \"","color":"#FF352E"},{"text":"Inkwell Core","color":"#9C6D93"},{"text":"\" of at least version ","color":"#FF352E"},{"text":"1.0","color":"#9C6D93"},{"text":".","color":"#FF352E"}]
#Loop notice
tellraw @a ["",{"text":" > ","color":"#CCCDFF"},{"text":"NOTICE: ","color":"#FF352E"},{"text":"This message will repeat every 5 minutes.","color":"#FF352E"}]
#Base message
tellraw @a {"text":"-------------------------------------","bold":true,"italic":true,"color":"#CCCDFF"}

#Schedule function to loop
schedule function inkwell_riptide_attack:system/fail_install 300s