execute if score #timer_type data matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Timer]: ","color":"gold"},{"text":"Timer was reset at: ","color":"gray"},{"score":{"name":"@s","objective":"timer_w"}},{"text":"w"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"timer_d"}},{"text":"d"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"timer_h"}},{"text":"h"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"timer_min"}},{"text":"m"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"timer_sec"}},{"text":"s"}]
execute if score #timer_type data matches 0 run scoreboard players set @s timer_sec -1
execute if score #timer_type data matches 0 run scoreboard players set @s timer_min -1
execute if score #timer_type data matches 0 run scoreboard players set @s timer_h -1
execute if score #timer_type data matches 0 run scoreboard players set @s timer_d -1
execute if score #timer_type data matches 0 run scoreboard players set @s timer_w -1
execute if score #timer_type data matches 0 run tag @s remove timer_running
execute if score #timer_type data matches 0 run tag @s remove timer_paused
execute if score #timer_type data matches 0 run tag @s remove timer_killed
execute if score #timer_type data matches 0 run tag @s remove timer_win
execute if score #timer_type data matches 0 run scoreboard players reset @s TimerReset
execute if score #timer_type data matches 0 run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"Timer has been reset.","color":"green"}]


execute if score #timer_type data matches 1 run tellraw @a [{"text":"","color":"yellow"},{"text":"[Timer]: ","color":"gold"},{"text":"Timer was reset at: ","color":"gray"},{"score":{"name":"#timer.w","objective":"data"}},{"text":"w"},{"text":":","color":"gray"},{"score":{"name":"#timer.d","objective":"data"}},{"text":"d"},{"text":":","color":"gray"},{"score":{"name":"#timer.h","objective":"data"}},{"text":"h"},{"text":":","color":"gray"},{"score":{"name":"#timer.min","objective":"data"}},{"text":"m"},{"text":":","color":"gray"},{"score":{"name":"#timer.sec","objective":"data"}},{"text":"s"}]
execute if score #timer_type data matches 1 run scoreboard players set #timer.sec data -1
execute if score #timer_type data matches 1 run scoreboard players set #timer.min data -1
execute if score #timer_type data matches 1 run scoreboard players set #timer.h data -1
execute if score #timer_type data matches 1 run scoreboard players set #timer.d data -1
execute if score #timer_type data matches 1 run scoreboard players set #timer.w data -1
execute if score #timer_type data matches 1 run scoreboard players set @a timer_sec -1
execute if score #timer_type data matches 1 run scoreboard players set @a timer_min -1
execute if score #timer_type data matches 1 run scoreboard players set @a timer_h -1
execute if score #timer_type data matches 1 run scoreboard players set @a timer_d -1
execute if score #timer_type data matches 1 run scoreboard players set @a timer_w -1
execute if score #timer_type data matches 1 run tag @a remove timer_running
execute if score #timer_type data matches 1 run tag @a remove timer_paused
execute if score #timer_type data matches 1 run tag @a remove timer_killed
execute if score #timer_type data matches 1 run tag @a remove timer_win
execute if score #timer_type data matches 1 run scoreboard players reset @a TimerReset
execute if score #timer_type data matches 1 run tellraw @a [{"text":"[Timer]: ","color":"gold"},{"text":"Timer has been reset.","color":"green"}]
