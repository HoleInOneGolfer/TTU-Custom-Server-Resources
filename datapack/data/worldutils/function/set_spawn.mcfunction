execute at @e[type=marker,tag=spawn_marker] run forceload remove ~-1 ~-1 ~1 ~1
kill @e[type=marker,tag=spawn_marker]

execute align xyz run summon marker ~ ~ ~ {Tags:["spawn_marker"],CustomName:'{"text":"Spawn Marker"}'}
execute at @e[type=marker,tag=spawn_marker] run setworldspawn ~0.5 ~ ~0.5
execute at @e[type=marker,tag=spawn_marker] run forceload add ~-1 ~-1 ~1 ~1

execute as @a[distance=..5] run tellraw @s {"text":"Spawn marker set!","color":"green","bold":true}
