# TTU Custom Server Resources

Custom datapack and resourcepack content for the TTU Minecraft server.

> Target version: Minecraft Java Edition `1.21.6`

## Project Overview

This repository ships two synchronized packs:

- `datapack/` — gameplay logic, triggers, custom recipes, and dialog flows.
- `resourcepack/` — textures, language overrides, item models, and custom audio mappings.

### Feature Breakdown

#### Music Disc Swapper (`discswapper`)
- Lets players remap held music disc models with a dialog menu or trigger command.
- Supports both a GUI dialog (`discswapper:menu`) and text fallback (`discswapper:menu_alt`).

#### Mannequin NPCs (`mannequins`)
- Provides helper functions to generate mannequin spawn eggs, heads, and mannequin entities.
- Includes a dialog menu for quick username input and spawn actions.
- Includes Python tooling to regenerate batch `eggs.mcfunction` and `heads.mcfunction` from `users.txt`.

#### World Utilities (`worldutils`)
- Tracks spawn-region entry/exit and notifies players.
- Provides `/trigger spawn` teleport and `/trigger suicide` commands.
- Supports configurable spawn radius and shape (square/sphere) via storage + dialog config.

#### Custom Recipe Adjustments (`data/minecraft/recipe`)
- Hopper recipe variant (no chest requirement).
- Additional dye conversion recipes.
- Invisible item frame recipes.

## Repository Structure

```text
.
├── .github/workflows/release.yml     # Release packaging workflow
├── datapack/                         # Datapack root
│   ├── data/
│   │   ├── discswapper/
│   │   ├── mannequins/
│   │   ├── worldutils/
│   │   ├── ttuserver/
│   │   └── minecraft/                # function tags + recipes
│   ├── pack.mcmeta
│   └── pack.png
├── resourcepack/                     # Resourcepack root
│   ├── assets/minecraft/
│   ├── assets/mannequins/
│   ├── assets/true_ending/
│   ├── pack.mcmeta
│   └── pack.png
└── scripts/
    ├── dev.sh                        # Cross-platform dev helper (bash)
    ├── help.bat                      # Windows helper wrapper
    └── package.sh                    # Shared packaging script (local + CI)
```

## Local Development Setup

1. Clone the repository.
2. Create symlinks:
   - Link `datapack/` into your world `.../saves/<world>/datapacks/` directory.
   - Link `resourcepack/` into your `.minecraft/resourcepacks/` directory.
3. In `.minecraft/allowed_symlinks.txt`, add the absolute paths to both linked source folders.
4. Enable the datapack and resourcepack in your local test world.

## Development Commands

### Bash / Linux / macOS / Git Bash

```bash
scripts/dev.sh help
scripts/dev.sh validate-json
scripts/dev.sh validate-python
scripts/dev.sh package
```

### Windows Command Prompt

```bat
help.bat help
help.bat validate-json
help.bat validate-python
help.bat package
```

Packaging outputs are written to `dist/`.

## CI/CD Release Flow

`/.github/workflows/release.yml` runs on tags matching `v*.*.*` and:

1. Builds zipped artifacts with `scripts/package.sh`.
2. Uploads artifacts to the workflow run.
3. Publishes a GitHub release with the generated zip files.

Produced artifacts:
- `dist/TTU-Datapack.zip`
- `dist/TTU-Resourcepack.zip`
- `dist/TTU-Server-Packs.zip`

## Credits

- **Datapack and repository owner:** [BenGamer427 / HoleInOneGolfer](https://github.com/HoleInOneGolfer)
- **Custom pottery assets:** [TyBoMC](https://namemc.com/profile/TyBoMC.1)
- **True Ending resourcepack audio:** [True Ending: Ender Dragon Music (Modrinth)](https://modrinth.com/resourcepack/true-ending-ender-dragon-music)

## Reference Links

- [Minecraft Data Pack Wiki](https://minecraft.wiki/w/Data_pack)
- [Minecraft Resource Pack Wiki](https://minecraft.wiki/w/Resource_pack)
