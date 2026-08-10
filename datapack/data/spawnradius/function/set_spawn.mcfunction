forceload remove ~-1 ~-1 ~1 ~1
kill @e[type=marker,tag=spawn]
summon marker ~0.5 ~0.5 ~0.5 {Tags:["spawn"],CustomName:"Spawn"}
execute at @e[type=marker,tag=spawn] run forceload add ~-1 ~-1 ~1 ~1

tellraw @s {"text":"Spawn marker set!","color":"green","bold":true}
