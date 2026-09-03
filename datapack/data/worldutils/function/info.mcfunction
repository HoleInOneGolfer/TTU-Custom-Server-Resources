# Show the current WorldUtils config values
tellraw @s [ \
    "", \
    {"text": "--- WorldUtils Info ---", "bold": true, "color": "gold"}, \
    {"text": "\n"}, \
    {"text": "Current Radius: ", "color": "yellow"}, \
    {"nbt": "radius", "storage": "worldutils:config", "color": "green"}, \
    {"text": " blocks.", "color": "yellow"}, \
    {"text": "\n"}, \
    {"text": "Current Shape: ", "color": "yellow"}, \
    {"nbt": "shape", "storage": "worldutils:config", "color": "green"}, \
]
