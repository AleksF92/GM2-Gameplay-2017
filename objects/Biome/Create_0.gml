//Init
#macro CHUNK 5
#macro MAX_SIZE 10

TILE_W = sprite_get_width(spr_Tile_Empty) / 2;
TILE_H = sprite_get_height(spr_Tile_Empty) / 2;

//Create biome data
biomes = ds_list_create();
biome_create_type(Tile_Grass);

//Create tile grid
var chunkCenter = CHUNK div 2;
tiles = ds_grid_create(CHUNK, CHUNK);
x = TILE_W * -chunkCenter;
y = TILE_H * -chunkCenter;
ds_grid_clear(tiles, noone);

//Spawn chunk with ghost

biome_tile_ghostpath(0, 0, chunkCenter, chunkCenter);

//Track player
playerX = chunkCenter;
playerY = chunkCenter;