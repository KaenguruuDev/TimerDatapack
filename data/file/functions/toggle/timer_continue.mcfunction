execute if score #timer_type data matches 0 run tag @s add timer_running
execute if score #timer_type data matches 0 run tag @s remove timer_killed
execute if score #timer_type data matches 0 run tag @s remove timer_paused
execute if score #timer_type data matches 0 run tag @s remove timer_win
execute if score #timer_type data matches 0 run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"Timer continued","color":"gray"}]
execute if score #timer_type data matches 0 run scoreboard players reset @s TimerToggle

execute if score #timer_type data matches 1 run tag @a add timer_running
execute if score #timer_type data matches 1 run tag @a remove timer_killed
execute if score #timer_type data matches 1 run tag @a remove timer_paused
execute if score #timer_type data matches 1 run tag @a remove timer_win
execute if score #timer_type data matches 1 run tellraw @a [{"text":"[Timer]: ","color":"gold"},{"text":"Timer continued","color":"gray"}]
execute if score #timer_type data matches 1 run scoreboard players reset @a TimerToggle
