# Open the requested DiscSwapper menu
execute as @a if score @s discmenu matches 1 run function discswapper:menu
execute as @a if score @s discmenu matches 2 run function discswapper:menu_alt

# Apply selected music disc model to the held disc item
execute as @a if score @s discmodel matches 1 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_13"}}
execute as @a if score @s discmodel matches 2 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_cat"}}
execute as @a if score @s discmodel matches 3 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_blocks"}}
execute as @a if score @s discmodel matches 4 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_chirp"}}
execute as @a if score @s discmodel matches 5 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_far"}}
execute as @a if score @s discmodel matches 6 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_mall"}}
execute as @a if score @s discmodel matches 7 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_mellohi"}}
execute as @a if score @s discmodel matches 8 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_stal"}}
execute as @a if score @s discmodel matches 9 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_strad"}}
execute as @a if score @s discmodel matches 10 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_ward"}}
execute as @a if score @s discmodel matches 11 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_11"}}
execute as @a if score @s discmodel matches 12 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_wait"}}
execute as @a if score @s discmodel matches 13 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_pigstep"}}
execute as @a if score @s discmodel matches 14 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_otherside"}}
execute as @a if score @s discmodel matches 15 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_5"}}
execute as @a if score @s discmodel matches 16 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_relic"}}
execute as @a if score @s discmodel matches 17 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_creator"}}
execute as @a if score @s discmodel matches 18 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_creator_music_box"}}
execute as @a if score @s discmodel matches 19 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_precipice"}}
execute as @a if score @s discmodel matches 20 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_tears"}}
execute as @a if score @s discmodel matches 21 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_lava_chicken"}}
execute as @a if score @s discmodel matches 22 if items entity @s weapon.mainhand #discswapper:music_discs run item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"music_disc_bounce"}}

# Reset and re-enable triggers every tick
scoreboard players reset @a discmodel
scoreboard players reset @a discmenu
scoreboard players enable @a discmodel
scoreboard players enable @a discmenu
