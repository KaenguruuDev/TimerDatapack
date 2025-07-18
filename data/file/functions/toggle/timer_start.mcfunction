execute if score #timer_type data matches 0 run scoreboard players set @s timer_sec 0
execute if score #timer_type data matches 0 run scoreboard players set @s timer_min 0
execute if score #timer_type data matches 0 run scoreboard players set @s timer_h 0
execute if score #timer_type data matches 0 run scoreboard players set @s timer_d 0
execute if score #timer_type data matches 0 run scoreboard players set @s timer_w 0
execute if score #timer_type data matches 0 run tag @s add timer_running
execute if score #timer_type data matches 0 run scoreboard players reset @s TimerStart
execute if score #timer_type data matches 0 run tellraw @s [{"text":"[Timer]: ","color":"gold"},{"text":"Timer started","color":"green"}]

execute if score #timer_type data matches 1 run scoreboard players set #timer.sec data 0
execute if score #timer_type data matches 1 run scoreboard players set #timer.min data 0
execute if score #timer_type data matches 1 run scoreboard players set #timer.h data 0
execute if score #timer_type data matches 1 run scoreboard players set #timer.d data 0
execute if score #timer_type data matches 1 run scoreboard players set #timer.w data 0
execute if score #timer_type data matches 1 run scoreboard players set @a timer_sec 0
execute if score #timer_type data matches 1 run scoreboard players set @a timer_min 0
execute if score #timer_type data matches 1 run scoreboard players set @a timer_h 0
execute if score #timer_type data matches 1 run scoreboard players set @a timer_d 0
execute if score #timer_type data matches 1 run scoreboard players set @a timer_w 0
execute if score #timer_type data matches 1 run tag @a add timer_running
execute if score #timer_type data matches 1 run scoreboard players reset @a TimerStart
execute if score #timer_type data matches 1 run tellraw @a [{"text":"[Timer]: ","color":"gold"},{"text":"Timer started","color":"green"}]
