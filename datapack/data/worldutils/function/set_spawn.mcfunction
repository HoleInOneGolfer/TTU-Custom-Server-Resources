# Remove old marker and unload its forced chunks
execute at @e[type=marker,tag=spawn_marker] run forceload remove ~-1 ~-1 ~1 ~1
kill @e[type=marker,tag=spawn_marker]

# Create a new marker at the aligned command source position
execute align xyz run summon marker ~ ~ ~ {Tags:["spawn_marker"],CustomName:'{"text":"Spawn Marker"}'}
execute at @e[type=marker,tag=spawn_marker] run setworldspawn ~0.5 ~ ~0.5
execute at @e[type=marker,tag=spawn_marker] run forceload add ~-1 ~-1 ~1 ~1

# Notify nearby players about the update
execute as @a[distance=..5] run tellraw @s {"text":"Spawn marker set!","color":"green","bold":true}
