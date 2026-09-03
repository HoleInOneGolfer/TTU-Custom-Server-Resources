# Reset old objectives so reload keeps state clean
scoreboard objectives remove disc_menu
scoreboard objectives remove disc_model

# Register trigger objectives
scoreboard objectives add discmodel trigger
scoreboard objectives add discmenu trigger

# Enable triggers for all online players
scoreboard players enable @a discmodel
scoreboard players enable @a discmenu

tellraw @a {"text":"DiscSwapper Loaded!","color":"red","bold":true}
