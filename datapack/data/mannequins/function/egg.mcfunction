# /function mannequins:egg {name: <name>}
$give @s minecraft:bat_spawn_egg[minecraft:item_model="mannequins:npc_spawn_egg",custom_name=[{"text":"$(name)","italic":false}],entity_data={id:"minecraft:mannequin",profile:"$(name)",CustomName:"$(name)",CustomNameVisible:1b,hide_description:1,immovable:0,Tags:[player]}]
