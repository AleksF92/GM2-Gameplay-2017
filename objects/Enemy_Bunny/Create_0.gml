//Init
event_inherited();

image_speed = 0;
insaneIndex = sprite_get_number(sprite_index) div 2;

MOVE_RANGE = 256 * 3;
moveX = x;
moveY = y;
moveSpeed = 0;
chasing = false;

dna = Tile_Sand;
dnaChance = 50;
camp = noone;