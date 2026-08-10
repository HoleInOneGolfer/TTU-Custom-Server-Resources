# Rmove old objectives
scoreboard objectives remove disc_menu
scoreboard objectives remove disc_model

# Load Starts here
scoreboard objectives add discmodel trigger
scoreboard objectives add discmenu trigger
scoreboard players enable @a discmodel
scoreboard players enable @a discmenu

tellraw @a {"text":"DiscSwapper Loaded!","color":"red","bold":true}
