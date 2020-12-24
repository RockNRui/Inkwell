function inkwell_core:aide/get_player_status/get_health
kill @s
scoreboard players set @s InkW_Debug_HPTT 11
function d:hp_test_loop
schedule function d:hp_test_delayed 11t