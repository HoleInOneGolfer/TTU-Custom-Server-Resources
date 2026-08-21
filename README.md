# TTU Custom Server Resources

> Current Minecraft Version: 26.2

These are the custom resources for the TTU server. It includes various features and enhancements to improve gameplay and provide a unique experience for players as well as the textures to help support it.

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
