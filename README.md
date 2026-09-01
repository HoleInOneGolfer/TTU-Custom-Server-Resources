# TTU Custom Server Resources

> Current Minecraft Version: 26.2

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

| Command                                       | Description                                                        | Example                                      |
| --------------------------------------------- | ------------------------------------------------------------------ | -------------------------------------------- |
| `/function mannequin:egg {name:<name>}`       | Gives the player the spawn egg for any player with specific name.  | `/function mannequins:egg {name:jeb_}`       |
| `/function mannequin:head {name:<name>}`      | Gives the player the heads for any player with specific name.      | `/function mannequins:head {name:jeb_}`      |
| `/function mannequin:mannequin {name:<name>}` | Spawns the mannequin for the player with specific name.            | `/function mannequins:mannequin {name:jeb_}` |
| `/function mannequin:eggs`                    | Gives the player all the spawn eggs for all the users implemented. |
| `/function mannequin:heads`                   | Gives the player all the heads for all the users implemented.      |

#### WorldUtils

This doesn't add spawn protection, but it notifies players when they leave the spawn area in case your server has rules about griefing or PvP in the spawn area. It also allows you to have a tp to spawn and a suicide command for players to use.

| Command                                                                    | Description                                                           | Example                                                     |
| -------------------------------------------------------------------------- | --------------------------------------------------------------------- | ----------------------------------------------------------- |
| `/function worldutils:config`                                              | Shows a custom dialog menu for configuring the spawn radius settings. |
| `/function worldutils:set_spawn`                                           | Sets the spawn to the current location of the player.                 |
| `/function worldutils:set_radius {radius:<number>}`                        | Sets the spawn radius to the specified number.                        | `/function worldutils:set_radius {radius:10}`               |
| `/function worldutils:set_shape {shape:<sphere,square>}`                   | Sets the shape of the spawn radius to either circle or square.        | `/function worldutils:set_shape {shape:square}`             |
| `/function worldutils:set_config {shape:<sphere,square>, radius:<number>}` | Sets both the shape and radius of the spawn radius at once.           | `/function worldutils:set_config {shape:square, radius:10}` |
| `/function worldutils:info`                                                | Shows info about the current spawn radius and shape in chat.          |
| `/trigger spawn_tp`                                                        | Teleports the player to the spawn point.                              |
| `/trigger suicide`                                                         | Kills the player.                                                     |

#### Recipe Changes

- The hopper now doesn't require a chest to craft. It just requires 5 iron ingots in the same pattern.
- Brown dye can be crafted using blue, yellow, and red dyes.
- Green dye can be crafted using blue and yellow dyes.
- Invsible glow and normal items frames when crafted with a glass pane.

### Resource Pack

#### Pots and Sherds

- Double T, replacing guster (credit: TyBoMC)
- Raider Red, replacing flow (credit: BenGamer427)

#### Spawn Eggs

- Add new spawn egg `mannequins:npc_spawn_egg` for spawning mannequins. Its texture is the NPC Spawn Egg texture from bedrock edition.

#### True Ending: Ender Dragon Music

- [Modrinth Link](https://modrinth.com/resourcepack/true-ending-ender-dragon-music)

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

To get minecraft assets to add to resource pack and datapack:

1. Copy your minecraft client jar file from your `.minecraft/versions/<version>/<version>.jar` folder to another folder.
2. Rename the jar file to a zip file and extract it.
3. The files for the resource pack are in the `assets` folder and the files for the datapack are in the `data` folder. (These are laid out exactly how they should be in your resource/data pack so in theory you can just copy them over to your resource/data pack folders if you want to use everything. This will make your pack take up a lot of space though, so it is recommended to only copy the files you need.)

## Help

- [Datapack Wiki Page](https://minecraft.wiki/w/Data_pack)
- [Resource Pack Wiki Page](https://minecraft.wiki/w/Resource_pack)
- If you need help, you can also try searching the issue or topic on Google.

## Credits

- [BenGamer427](https://github.com/HoleInOneGolfer)
- [TyBoMC](https://namemc.com/profile/TyBoMC.1)
