scoreboard objectives add data dummy


scoreboard objectives add TimerStart trigger
scoreboard objectives add TimerToggle trigger
scoreboard objectives add TimerReset trigger

scoreboard objectives add TimerSettings trigger
scoreboard objectives add TimerResetAll trigger


#data_timers
scoreboard objectives add timer_sec dummy
scoreboard objectives add timer_min dummy
scoreboard objectives add timer_h dummy
scoreboard objectives add timer_d dummy
scoreboard objectives add timer_w dummy

#death detection
scoreboard objectives add timer.death deathCount
scoreboard objectives add timer.win minecraft.killed:minecraft.ender_dragon

#Game Rules
gamerule sendCommandFeedback false



scoreboard players add #timer_reset_on_death data 0
scoreboard players add #timer_reset_on_win data 0
scoreboard players add #timer_type data 0
