# 1. Calculate derived macro variables directly inside the single storage
execute store result storage worldutils:config neg_range int -1 run data get storage worldutils:config radius
execute store result storage worldutils:config range_double int 2 run data get storage worldutils:config radius

# 2. Run the logic at the marker for every player using the single storage
execute at @e[type=marker,tag=spawn,limit=1] as @a run function worldutils:spawn_range with storage worldutils:config

# --- /trigger suicide ---
execute as @a[scores={suicide=1..}] run kill @s
scoreboard players reset @a[scores={suicide=1..}]
scoreboard players enable @a suicide

# --- /trigger spawn ---
# Teleport the player to the spawn marker
execute as @a[scores={spawn_tp=1..}] at @e[type=marker,tag=spawn,limit=1] run tp @s ~0.5 ~ ~0.5
# Reset the score and re-enable the trigger for future use
scoreboard players reset @a[scores={spawn_tp=1..}]
scoreboard players enable @a spawn_tp
