# --- SQUARE MODE (shape = "square") ---
# Entering
$execute if data storage worldutils:config {shape:"square"} positioned ~$(neg_range) $(min_y) ~$(neg_range) if score @s spawn_state matches 2 if entity @s[dx=$(range_double),dy=$(total_height),dz=$(range_double)] run title @s title {"text":"Entering Spawn","bold":true,"color":"green"}
$execute if data storage worldutils:config {shape:"square"} positioned ~$(neg_range) $(min_y) ~$(neg_range) if entity @s[dx=$(range_double),dy=$(total_height),dz=$(range_double)] run scoreboard players set @s spawn_state 1

# Leaving
$execute if data storage worldutils:config {shape:"square"} positioned ~$(neg_range) $(min_y) ~$(neg_range) if score @s spawn_state matches 1 unless entity @s[dx=$(range_double),dy=$(total_height),dz=$(range_double)] run title @s title {"text":"Leaving Spawn","bold":true,"color":"red"}
$execute if data storage worldutils:config {shape:"square"} positioned ~$(neg_range) $(min_y) ~$(neg_range) unless entity @s[dx=$(range_double),dy=$(total_height),dz=$(range_double)] run scoreboard players set @s spawn_state 2


# --- SPHERE MODE (shape = "sphere") ---
# Entering
$execute if data storage worldutils:config {shape:"sphere"} if score @s spawn_state matches 2 if entity @s[distance=..$(radius)] run title @s title {"text":"Entering Spawn","bold":true,"color":"green"}
$execute if data storage worldutils:config {shape:"sphere"} if entity @s[distance=..$(radius)] run scoreboard players set @s spawn_state 1

# Leaving
$execute if data storage worldutils:config {shape:"sphere"} if score @s spawn_state matches 1 unless entity @s[distance=..$(radius)] run title @s title {"text":"Leaving Spawn","bold":true,"color":"red"}
$execute if data storage worldutils:config {shape:"sphere"} unless entity @s[distance=..$(radius)] run scoreboard players set @s spawn_state 2
