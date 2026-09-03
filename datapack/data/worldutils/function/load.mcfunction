# Setup scoreboards
scoreboard objectives remove spawn_state
scoreboard objectives add spawn_state dummy
scoreboard players set @a spawn_state 2

# Setup trigger scoreboards
scoreboard objectives add suicide trigger
scoreboard objectives add spawn trigger

# Enable triggers for all players
scoreboard players enable @a suicide
scoreboard players enable @a spawn

# Initialize config defaults only if they are missing
execute unless data storage worldutils:config radius run data modify storage worldutils:config radius set value 10
execute unless data storage worldutils:config shape run data modify storage worldutils:config shape set value "square"

# Initialize world height constants only if they are missing
execute unless data storage worldutils:config min_y run data modify storage worldutils:config min_y set value -64
execute unless data storage worldutils:config max_y run data modify storage worldutils:config max_y set value 320
execute unless data storage worldutils:config total_height run data modify storage worldutils:config total_height set value 384

# Ensure exactly one spawn marker exists
execute unless entity @e[type=marker,tag=spawn_marker] run function worldutils:set_spawn

tellraw @a {"text":"WorldUtils Loaded!","color":"red","bold":true}
