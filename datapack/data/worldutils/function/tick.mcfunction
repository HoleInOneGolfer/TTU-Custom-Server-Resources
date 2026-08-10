# 1. Calculate derived macro variables directly inside the single storage
execute store result storage worldutils:config neg_range int -1 run data get storage worldutils:config radius
execute store result storage worldutils:config range_double int 2 run data get storage worldutils:config radius

# 2. Run the logic at the marker for every player using the single storage
execute at @e[type=marker,tag=spawn,limit=1] as @a run function worldutils:spawn_range with storage worldutils:config
