execute if score #timer_type data matches 0 run scoreboard players enable @a TimerStart
execute if score #timer_type data matches 0 run scoreboard players enable @a TimerToggle
execute if score #timer_type data matches 0 run scoreboard players enable @a TimerReset

scoreboard players enable @a[tag=admin] TimerStart
scoreboard players enable @a[tag=admin] TimerToggle
scoreboard players enable @a[tag=admin] TimerReset

scoreboard players enable @a[tag=admin] TimerSettings
scoreboard players enable @a[tag=admin] TimerResetAll

execute as @a[tag=!timer_config_true] run function file:config_player

#start timer
execute as @a[scores={TimerStart=1..}] if score @s timer_sec matches -1 if score @s timer_min matches -1 if score @s timer_h matches -1 if score @s timer_d matches -1 if score @s timer_w matches -1 run function file:toggle/timer_start
execute as @a[scores={TimerStart=1..},tag=timer_running] run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"The timer is already running. Use /trigger TimerToggle to pause or /trigger TimerReset to reset the timer","color":"gray"}]
scoreboard players reset @a[scores={TimerStart=1..}] TimerStart

#pause timer
execute as @a[scores={TimerToggle=1..},tag=timer_running] run function file:toggle/timer_pause
execute as @a[scores={TimerToggle=1..},tag=timer_paused] run function file:toggle/timer_continue
execute as @a[scores={TimerToggle=1..},tag=timer_killed] run function file:toggle/timer_continue
execute as @a[scores={TimerToggle=1..},tag=timer_win] run function file:toggle/timer_continue
execute as @a[scores={TimerToggle=1..},tag=!timer_running,tag=!timer_paused,tag=!timer_killed,tag=!timer_win] run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"The timer hasn't started yet. Use /trigger TimerStart to start the timer","color":"gray"}]
scoreboard players reset @a[scores={TimerToggle=1..}] TimerToggle

#reset timer
execute as @a[scores={TimerReset=1..},tag=timer_running] run function file:toggle/timer_reset
execute as @a[scores={TimerReset=1..},tag=timer_paused] run function file:toggle/timer_reset
execute as @a[scores={TimerReset=1..},tag=timer_killed] run function file:toggle/timer_reset
execute as @a[scores={TimerReset=1..},tag=timer_win] run function file:toggle/timer_reset
execute as @a[scores={TimerReset=1..},tag=!timer_running,tag=!timer_paused,tag=!timer_killed,tag=!timer_win] run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"The timer hasn't started yet. Use /trigger TimerStart to start the timer","color":"gray"}]
scoreboard players reset @a[scores={TimerReset=1..}] TimerReset

#settings
execute as @a[scores={TimerSettings=1..}] unless entity @p[tag=timer_running] unless entity @p[tag=timer_paused] unless entity @p[tag=timer_killed] run function file:toggle/timer_settings
execute as @a[scores={TimerSettings=1..}] if entity @p[tag=timer_running] run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"There are still timers running. Use /trigger TimerResetAll to reset them.","color":"gray"}]
execute as @a[scores={TimerSettings=1..}] if entity @p[tag=timer_paused] run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"There are still timers running. Use /trigger TimerResetAll to reset them.","color":"gray"}]
execute as @a[scores={TimerSettings=1..}] if entity @p[tag=timer_killed] run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"There are still timers running. Use /trigger TimerResetAll to reset them.","color":"gray"}]
execute as @a[scores={TimerSettings=1..}] if entity @p[tag=timer_win] run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"There are still timers running. Use /trigger TimerResetAll to reset them.","color":"gray"}]
scoreboard players reset @a[scores={TimerSettings=1..}] TimerSettings


#resetall
execute as @a[scores={TimerResetAll=1..}] as @a run function file:toggle/timer_reset
execute as @a[scores={TimerResetAll=1..}] run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"All timers have been reset.","color":"gray"}]
scoreboard players reset @a[scores={TimerResetAll=1..}] TimerResetAll


#TimerReset on player death
execute as @a[scores={timer.death=1..},tag=timer_running] if score #timer_reset_on_death data matches 1 if score #timer_type data matches 0 run tag @s add timer_killed
execute as @a[scores={timer.death=1..},tag=timer_killed] if score #timer_reset_on_death data matches 1 if score #timer_type data matches 0 run tag @s remove timer_running
execute as @a[scores={timer.death=1..},tag=timer_killed] if score #timer_reset_on_death data matches 1 if score #timer_type data matches 0 run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"You died. Do you want to continue?","color":"gray"}]
execute as @a[scores={timer.death=1..},tag=timer_killed] if score #timer_reset_on_death data matches 1 if score #timer_type data matches 0 run tellraw @s [{"text":"[Yes]  ","color":"green","clickEvent":{"action":"run_command","value":"/trigger TimerToggle"}},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TimerReset"}}]

execute as @a[scores={timer.death=1..},tag=timer_running] if score #timer_reset_on_death data matches 1 if score #timer_type data matches 1 run tag @a add timer_killed
execute as @a[scores={timer.death=1..},tag=timer_killed] if score #timer_reset_on_death data matches 1 if score #timer_type data matches 1 run tag @a remove timer_killed
execute as @a[scores={timer.death=1..},tag=timer_killed] if score #timer_reset_on_death data matches 1 if score #timer_type data matches 1 run tellraw @a[tag=admin] [{"text":"[Timer]: ","color":"gold"},{"selector":"@s","color":"gray"},{"text":" died. Do you want to continue?","color":"gray"}]
execute as @a[scores={timer.death=1..},tag=timer_killed] if score #timer_reset_on_death data matches 1 if score #timer_type data matches 1 run tellraw @a[tag=admin] [{"text":"[Yes]  ","color":"green","clickEvent":{"action":"run_command","value":"/trigger TimerToggle"}},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TimerReset"}}]
execute as @a[scores={timer.death=1..}] run scoreboard players reset @s timer.death


#TimerReset on game win
execute as @a[scores={timer.win=1..},tag=timer_running] if score #timer_reset_on_win data matches 1 if score #timer_type data matches 0 run tag @s add timer_win
execute as @a[scores={timer.win=1..},tag=timer_win] if score #timer_reset_on_win data matches 1 if score #timer_type data matches 0 run tag @s remove timer_running
execute as @a[scores={timer.win=1..},tag=timer_win] if score #timer_reset_on_win data matches 1 if score #timer_type data matches 0 run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"The game was completed. Do you want to continue?","color":"gray"}]
execute as @a[scores={timer.win=1..},tag=timer_win] if score #timer_reset_on_win data matches 1 if score #timer_type data matches 0 run tellraw @s [{"text":"[Yes]  ","color":"green","clickEvent":{"action":"run_command","value":"/trigger TimerToggle"}},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TimerReset"}}]

execute as @a[scores={timer.win=1..},tag=timer_running] if score #timer_reset_on_win data matches 1 if score #timer_type data matches 1 run tag @a add timer_win
execute as @a[scores={timer.win=1..},tag=timer_win] if score #timer_reset_on_win data matches 1 if score #timer_type data matches 1 run tag @a remove timer_running
execute as @a[scores={timer.win=1..},tag=timer_win] if score #timer_reset_on_win data matches 1 if score #timer_type data matches 1 run tellraw @a[tag=admin] [{"text":"[Timer]: ","color":"gold"},{"text":"The game was completed. Do you want to continue?","color":"gray"}]
execute as @a[scores={timer.win=1..},tag=timer_win] if score #timer_reset_on_win data matches 1 if score #timer_type data matches 1 run tellraw @a[tag=admin] [{"text":"[Yes]  ","color":"green","clickEvent":{"action":"run_command","value":"/trigger TimerToggle"}},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TimerReset"}}]
execute as @a[scores={timer.win=1..}] run scoreboard players reset @s timer.win
