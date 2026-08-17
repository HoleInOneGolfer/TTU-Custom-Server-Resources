import re
import datetime

PLAYER_TXT = "./users.txt"

REGES = r"(.+?)(?:\s*\((.+?) \))?\s*->\s*(.+)"

PLAYERS = []

def main():
    with open(PLAYER_TXT, "r") as f:
        players = f.readlines()
        for p in players:
            match = re.match(REGES, p)
            if match:
                minecraft_username, new_minecraft_username, discord_username = match.groups()
                discord_username = discord_username.strip("@")
                if new_minecraft_username:
                    minecraft_username = new_minecraft_username
                PLAYERS.append((minecraft_username, discord_username))
            else:
                print(f"Invalid player format: {p.strip()}")
    PLAYERS.sort(key=lambda x: x[1].lower())


if __name__ == "__main__":
    # change the working directory to the script's directory
    import os
    os.chdir(os.path.dirname(os.path.abspath(__file__)))

    main()

    with open(PLAYER_TXT, "w") as f:
        f.write(f"Updated {datetime.datetime.now().strftime('%m/%d/%Y @ %H:%M:%S')}\n")
        f.write("\n")

        # print the players in a lined up format
        for _ in PLAYERS:
            f.write(f"{_[0]:<20} -> {_[1]}\n")

        f.write("\n")
        f.write(f"Total players: {len(PLAYERS)}\n")
        f.write(f"Total Linked Players: {len([p for p in PLAYERS if not p[1].startswith('Unlinked')])}\n")
