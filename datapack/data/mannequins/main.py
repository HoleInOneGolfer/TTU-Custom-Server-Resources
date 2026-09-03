from __future__ import annotations

import datetime as dt
import re
from pathlib import Path
from typing import Iterable

PLAYER_FILE = Path("users.txt")
EGGS_FILE = Path("function/eggs.mcfunction")
HEADS_FILE = Path("function/heads.mcfunction")

PLAYER_PATTERN = re.compile(r"(.+?)(?:\s*\((.+?)\))?\s*->\s*(.+)")

EGG_TEMPLATE = 'function mannequins:egg {name: "{minecraft_username}"}'
HEAD_TEMPLATE = 'function mannequins:head {name: "{minecraft_username}"}'


def parse_players(lines: Iterable[str]) -> list[tuple[str, str]]:
    players: list[tuple[str, str]] = []

    for line in lines:
        stripped = line.strip()
        if not stripped or stripped.startswith("Updated") or stripped.startswith("Total "):
            continue

        match = PLAYER_PATTERN.fullmatch(stripped)
        if not match:
            continue

        minecraft_username, new_minecraft_username, discord_username = match.groups()
        discord_username = discord_username.lstrip("@").strip()

        if discord_username.lower() == "unlinked":
            continue

        if new_minecraft_username:
            minecraft_username = new_minecraft_username.strip()

        players.append((minecraft_username.strip(), discord_username))

    players.sort(key=lambda entry: entry[1].lower())
    return players


def build_commands(players: list[tuple[str, str]]) -> tuple[list[str], list[str]]:
    eggs = [EGG_TEMPLATE.format(minecraft_username=name) for name, _ in players]
    heads = [HEAD_TEMPLATE.format(minecraft_username=name) for name, _ in players]
    return eggs, heads


def write_players_file(players: list[tuple[str, str]]) -> None:
    timestamp = dt.datetime.now().strftime("%m/%d/%Y @ %H:%M:%S")
    lines = [
        f"Updated {timestamp}",
        "",
        *[f"{minecraft_username:<20} -> {discord_username}" for minecraft_username, discord_username in players],
        "",
        f"Total players: {len(players)}",
        f"Total Linked Players: {len(players)}",
    ]
    PLAYER_FILE.write_text("\n".join(lines) + "\n", encoding="utf-8")


def write_output(commands: list[str], output_file: Path) -> None:
    output_file.write_text("\n".join(commands) + "\n", encoding="utf-8")


def main() -> int:
    try:
        raw_lines = PLAYER_FILE.read_text(encoding="utf-8").splitlines()
    except FileNotFoundError:
        print(f"Player source file not found: {PLAYER_FILE}")
        return 1
    except OSError as exc:
        print(f"Failed to read {PLAYER_FILE}: {exc}")
        return 1

    players = parse_players(raw_lines)
    eggs, heads = build_commands(players)

    try:
        write_players_file(players)
        write_output(eggs, EGGS_FILE)
        write_output(heads, HEADS_FILE)
    except OSError as exc:
        print(f"Failed to write mannequin output files: {exc}")
        return 1

    print(f"Updated mannequin data for {len(players)} linked players.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
