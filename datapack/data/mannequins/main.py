import re
import datetime

PLAYER_TXT = "./users.txt"

REGES = r"(.+?)(?:\s*\((.+?) \))?\s*->\s*(.+)"

EGG_LINE = 'function mannequins:egg {name: "{minecraft_username}"}'
HEAD_LINE = 'function mannequins:head {name: "{minecraft_username}"}'
TICK_LINE = 'function mannequins:summon {name: "{minecraft_username}"}'

EGGS_PATH = "./function/eggs.mcfunction"
HEADS_PATH = "./function/heads.mcfunction"

PLAYERS = []
EGGS = []
HEADS = []
TICKS = []

def main():
    # Get Players
    with open(PLAYER_TXT, "r") as f:
        players = f.readlines()
        for p in players:
            match = re.match(REGES, p)
            if match:
                minecraft_username, new_minecraft_username, discord_username = match.groups()
                discord_username = discord_username.strip("@")
                if new_minecraft_username:
                    minecraft_username = new_minecraft_username
                # drop unlinked
                if discord_username.lower() == "unlinked":
                    continue
                PLAYERS.append((minecraft_username, discord_username))
            else:
                print(f"Invalid player format: {p.strip()}")
    PLAYERS.sort(key=lambda x: x[1].lower())

    # Get Eggs, Heads, and Ticks
    for p in PLAYERS:
        EGG_LINE_FORMATTED = EGG_LINE.replace("{minecraft_username}", p[0])
        EGGS.append(EGG_LINE_FORMATTED)

        HEAD_LINE_FORMATTED = HEAD_LINE.replace("{minecraft_username}", p[0])
        HEADS.append(HEAD_LINE_FORMATTED)


if __name__ == "__main__":
    # change the working directory to the script's directory
    import os
    os.chdir(os.path.dirname(os.path.abspath(__file__)))

    main()

    with open(PLAYER_TXT, "w") as f:
        f.write(f"Updated {datetime.datetime.now().strftime('%m/%d/%Y @ %H:%M:%S')}\n")
        f.write("\n")

        # print the players in a lined up format
        f.write("\n".join([f"{p[0]:<20} -> {p[1]}" for p in PLAYERS]))

        f.write("\n\n")
        f.write(f"Total players: {len(PLAYERS)}\n")
        f.write(f"Total Linked Players: {len([p for p in PLAYERS if not p[1].startswith('Unlinked')])}\n")

    with open(EGGS_PATH, "w") as f:
        f.write("\n".join(EGGS))

    with open(HEADS_PATH, "w") as f:
        f.write("\n".join(HEADS))
