# Setup Scoreboards
scoreboard objectives remove spawn_state
scoreboard objectives add spawn_state dummy
scoreboard players set @a spawn_state 2

# Initialize data storage defaults only if they don't exist
execute unless data storage spawnradius:config radius run data modify storage spawnradius:config radius set value 10
execute unless data storage spawnradius:config shape run data modify storage spawnradius:config shape set value "square"

# Initialize world height constants only if they don't exist
execute unless data storage spawnradius:config min_y run data modify storage spawnradius:config min_y set value -64
execute unless data storage spawnradius:config max_y run data modify storage spawnradius:config max_y set value 320
execute unless data storage spawnradius:config total_height run data modify storage spawnradius:config total_height set value 384

# Marker Management
function spawnradius:set_spawn

tellraw @a {"text":"SpawnRadius Loaded!","color":"red","bold":true}
