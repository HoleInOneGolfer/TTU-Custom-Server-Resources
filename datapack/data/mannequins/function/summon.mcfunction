$execute at @e[type=bat,name="$(name)"] run function mannequins:mannequin {name: "$(name)"}
$execute at @e[type=bat,name="$(name)",tag=player] as @e[type=mannequin,tag=player,distance=0..1,limit=1] run rotate @s facing entity @p
$kill @e[type=bat,name="$(name)",tag=player]
