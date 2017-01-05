//Init
#macro CHUNK 5
#macro MAX_SIZE 10

TILE_W = sprite_get_width(spr_Tile_Empty) / 2;
TILE_H = sprite_get_height(spr_Tile_Empty) / 2;

playerX = 0;
playerY = 0;



//Create biome data
biomes = ds_list_create();
tiles = ds_grid_create(CHUNK, CHUNK);

//Create starting biome (Grass)
var biome = biome_create(Tile_Grass);
ds_list_add(biomes, biome);

//Create spawn tile
var tile = ds_map_create();
tile[? "Instance"] = instance_create_layer(0, 0, "BiomeLayer", biome[? "Type"]);
tile[? "Biome"] = biome;

//Place spawn tile in the center of the grid
var chunkCenter = CHUNK div 2;
tiles[# chunkCenter, chunkCenter] = tile;

//Get edge tile
//Get spawn dir
//Select random next lane
//For chunk, ghost spawn
for (var i = 0; i < CHUNK * 2; i++) {
	//Create tile
	//Move random (within new chunk)
}