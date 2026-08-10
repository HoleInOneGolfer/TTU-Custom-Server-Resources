# 1. Calculate derived macro variables directly inside the single storage
execute store result storage spawnradius:config neg_range int -1 run data get storage spawnradius:config radius
execute store result storage spawnradius:config range_double int 2 run data get storage spawnradius:config radius

# 2. Run the logic at the marker for every player using the single storage
execute at @e[type=marker,tag=spawn,limit=1] as @a run function spawnradius:spawn_range with storage spawnradius:config
