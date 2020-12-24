##Ran when clicking function buttons to disable command feedback temporarily if need be

#Check if command feedback is disabled
execute store result score $InkW_CommandFeedback InkW_Temp run gamerule sendCommandFeedback
#If not, temporarily disable it
execute if score $InkW_CommandFeedback InkW_Temp matches 1 run gamerule sendCommandFeedback false
#Given command feedback was enabled, clear prior schedules of the latter command (In the event of a player spamming it)
execute if score $InkW_CommandFeedback InkW_Temp matches 1 run schedule clear inkwell_core:text/command_feedback_fix/reenable_command_feedback
#Given command feedback was enabled, schedule the function to re-enable it
execute if score $InkW_CommandFeedback InkW_Temp matches 1 run schedule function inkwell_core:text/command_feedback_fix/reenable_command_feedback 2t