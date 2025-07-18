#public timer
execute if score #timer_type data matches 1 unless entity @p[tag=timer_win] unless entity @p[tag=timer_paused] unless entity @p[tag=timer_killed] run scoreboard players add #timer.msec data 1
execute if score #timer.msec data matches 20.. run scoreboard players add #timer.sec data 1
execute if score #timer.msec data matches 20.. run scoreboard players set #timer.msec data 0
execute if score #timer.sec data matches 60.. run scoreboard players add #timer.min data 1
execute if score #timer.sec data matches 60.. run scoreboard players set #timer.sec data 0
execute if score #timer.min data matches 60.. run scoreboard players add #timer.h data 1
execute if score #timer.min data matches 60.. run scoreboard players set #timer.min data 0
execute if score #timer.h data matches 24.. run scoreboard players add #timer.d data 1
execute if score #timer.h data matches 24.. run scoreboard players set #timer.h data 0
execute if score #timer.d data matches 7.. run scoreboard players add #timer.w data 1
execute if score #timer.d data matches 7.. run scoreboard players set #timer.d data 0

#private timer
execute if score #timer_type data matches 0 run scoreboard players add #timer.private.msec data 1
execute if score #timer.private.msec data matches 20.. run scoreboard players add @a[tag=timer_running] timer_sec 1
execute if score #timer.private.msec data matches 20.. run scoreboard players set #timer.private.msec data 0
execute as @a if score @s timer_sec matches 60.. run scoreboard players add @s timer_min 1
execute as @a if score @s timer_sec matches 60.. run scoreboard players set @s timer_sec 0
execute as @a if score @s timer_min matches 60.. run scoreboard players add @s timer_h 1
execute as @a if score @s timer_min matches 60.. run scoreboard players set @s timer_min 0
execute as @a if score @s timer_h matches 24.. run scoreboard players add @s timer_d 1
execute as @a if score @s timer_h matches 24.. run scoreboard players set @s timer_h 0
execute as @a if score @s timer_d matches 7.. run scoreboard players add @s timer_w 1
execute as @a if score @s timer_d matches 7.. run scoreboard players set @s timer_d 0
