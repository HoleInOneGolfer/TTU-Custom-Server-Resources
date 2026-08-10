# ![Icon](./datapack/pack.png) TTU Custom Server Resources

> Created by BenGamer427

This is a custom datapack for the TTU server. It includes various features and enhancements to improve gameplay and provide a unique experience for players.

## Datapack

The pack is made up of several modules, each providing different functionalities. Below is a list of the available modules and the information about them.

### DiscSwapper

This module is specifically designed to pair with the audioplayer mod by letting the player use any disc model the want for their custom music discs.

`/function discswapper:menu` or `/trigger discmenu`: Shows a custom dialog menu for swapping music discs.

`/function discswapper:menu_alt` or `/trigger discmenu set 2`: Shows an alternative text-based menu for swapping music discs.

`/trigger discmodel set <number>`: Changes the model of the music disc to the specified number.

### Mannequin

The players are not generated automatically. They are manually added to the datapack. For new players you have to change a bunch of stuff. These are also not real players, they are just mannequins that look like players. The mannequins are spawned on bats that are named after the players. When they first spawn in, they look at the nearest player and the bat is killed.

`/function mannequin:give_eggs`: Gives the player all the spawn eggs for the players.

`/function mannequin:give_heads`: Gives the player all the heads for the players.

`/function mannequin:spawn_players_arranged`: Spawns all the players arranged like they are on stairs.

`/function mannequin:spawn_players`: Spawns all players and spreads them out randomly

### SpawnRadius

This doesn't add spawn protection, but it notifies players when they leave the spawn area in case your server has rules about griefing or PvP in the spawn area.

`/function spawnradius:config`: Shows a custom dialog menu for configuring the spawn radius settings.

`/function spawnradius:set_spawn`: Sets the spawn to the current location of the player.

`/function spawnradius:set_radius {radius:<number>}`: Sets the spawn radius to the specified number.

`/function spawnradius:set_shape {shape:<sphere|square>}`: Sets the shape of the spawn radius to either circle or square.

`/function spawnradius:set_config {shape:<sphere|square>, radius:<number>}`: Sets both the shape and radius of the spawn radius at once.

`/function spawnradius:info`: Shows info about the current spawn radius and shape in chat.

## Resource Pack

Nothing has been added to the resource pack yet, so it is not required yet.
