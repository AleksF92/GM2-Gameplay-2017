//Init
#macro CHUNK 3
#macro MAX_SIZE 10

TILE_W = sprite_get_width(spr_Grass);
TILE_H = sprite_get_height(spr_Grass);

world = ds_grid_create(1, 1);

playerX = 0;
playerY = 0;

//Setup start biome
var biome = ds_map_create();
biome[? "Type"] = spr_Grass;
biome[? "Size"] = 1;
world[# 0, 0] = biome;