# ![Icon](./icons/new_ttu_server_logo.gif) TTU Custom Server Resources

> Current Mineraft Version: 26.2

These are the custom resources for the TTU server. It includes various features and enhancements to improve gameplay and provide a unique experience for players as well as the textures to help support it.

## Features

### Datapack

The pack is made up of several modules, each providing different functionalities. Below is a list of the available modules and the information about them.

#### DiscSwapper

This module is specifically designed to pair with the audioplayer mod by letting the player use any disc model the want for their custom music discs.

| Command                                                       | Description                                                    |
| ------------------------------------------------------------- | -------------------------------------------------------------- |
| `/function discswapper:menu` or `/trigger discmenu`           | Shows a custom dialog menu for swapping music discs.           |
| `/function discswapper:menu_alt` or `/trigger discmenu set 2` | Shows an alternative text-based menu for swapping music discs. |
| `/trigger discmodel set <number>`                             | Changes the model of the music disc to the specified number.   |

#### Mannequin

The players are not generated automatically. They are manually added to the datapack. For new players you have to change a bunch of stuff. These are also not real players, they are just mannequins that look like players. The mannequins are spawned on bats that are named after the players. When they first spawn in, they look at the nearest player and the bat is killed.

| Command                                      | Description                                              |
| -------------------------------------------- | -------------------------------------------------------- |
| `/function mannequin:give_eggs`              | Gives the player all the spawn eggs for the players.     |
| `/function mannequin:give_heads`             | Gives the player all the heads for the players.          |
| `/function mannequin:spawn_players_arranged` | Spawns all the players arranged like they are on stairs. |
| `/function mannequin:spawn_players`          | Spawns all players and spreads them out randomly.        |

#### WorldUtils

This doesn't add spawn protection, but it notifies players when they leave the spawn area in case your server has rules about griefing or PvP in the spawn area. It also allows you to have a tp to spawn and a suicide command for players to use.

| Command                                                                    | Description                                                           |
| -------------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `/function worldutils:config`                                              | Shows a custom dialog menu for configuring the spawn radius settings. |
| `/function worldutils:set_spawn`                                           | Sets the spawn to the current location of the player.                 |
| `/function worldutils:set_radius {radius:<number>}`                        | Sets the spawn radius to the specified number.                        |
| `/function worldutils:set_shape {shape:<sphere,square>}`                   | Sets the shape of the spawn radius to either circle or square.        |
| `/function worldutils:set_config {shape:<sphere,square>, radius:<number>}` | Sets both the shape and radius of the spawn radius at once.           |
| `/function worldutils:info`                                                | Shows info about the current spawn radius and shape in chat.          |
| `/trigger spawn_tp`                                                        | Teleports the player to the spawn point.                              |
| `/trigger suicide`                                                         | Kills the player.                                                     |

#### Hopper

Changes the hopper recipe to not include a chest. This is to make it easier to craft hoppers without having to use a chest.

#### Dye

Adds a brown dye recipe that uses blue, yellow, and red dyes. Also adds a green dye recipe from blue and yellow dyes. This is to make it easier to craft dyes without having to use a cocoa bean or cactus.

### Resource Pack

Nothing has been added to the resource pack yet, so it is not required yet.

## Developing

If you want to help improve these custom resources, make your changes locally and send them as a pull request.

To set up the project for development:

1. Copy this repository to your computer.
2. Create two symlinks so Minecraft can use the files directly:
   1. Link the `datapack` folder to your world's `saves/<world_name>/datapacks` folder.
   2. Link the `resourcepack` folder to your Minecraft `resourcepacks` folder.
3. Allow symlinks in Minecraft:
   1. In your `.minecraft` folder, create a file named `allowed_symlinks.txt`.
   2. Add the paths to the source `datapack` and `resourcepack` folders in this repository on two separate lines.

To publish a new release:

1. Run `git tag v<version_number>` to create a release tag.
2. Run `git push origin v<version_number>` to upload the tag.

## Help

- [Datapack Wiki Page](https://minecraft.wiki/w/Data_pack)
- [Resource Pack Wiki Page](https://minecraft.wiki/w/Resource_pack)
- If you need help, you can also try searching the issue or topic on Google.

## Credits

- [BenGamer427](https://github.com/HoleInOneGolfer)
- [TyBoMC]()
