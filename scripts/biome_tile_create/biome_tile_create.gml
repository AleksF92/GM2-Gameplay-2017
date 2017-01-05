/// @description biome_tile_create
/// @help test
/// @param tileX
/// @param tileY
var tx = argument[0];
var ty = argument[1];

//Find nearby biome
var biome = noone;
var ox = -1;
var oy = -1;
for (var s = 0; s < 4; s++) {
	//Check if has tile
	var sx = tx + ox;
	var sy = ty + oy;
	if (ds_grid_get(world, sx, sy)) {
		//found biome
		var tile = world[# sx, sy];
		biome = tile[? "Biome"];

		//Check if biome is full
		if (biome[? "Size"] < biome[? "Limit"]) {
			break;
		}
	}
	
	//Try next side
	ox *= -1;
	if (i % 2) { oy *= -1; }
}

//Check if biome is full
if (biome[? "Size"] >= biome[? "Limit"]) {
	biome = biome_create_random(); 
}

//Create tile
var worldX = (TILE_W * tx) - (TILE_W * ty);
var worldY = (TILE_H * ty) - (TILE_H * tx);
var instance = instance_create_layer(worldX, worldY, "BiomeLayer", biome[? "Type"]);

var tile = ds_map_create();
tile[? "Instance"] = instance;
tile[? "Biome"] = biome;

return tile;