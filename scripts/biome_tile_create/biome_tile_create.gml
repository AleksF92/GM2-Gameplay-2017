/// @description biome_tile_create
/// @help test
/// @param tileX
/// @param tileY
var tx = argument[0];
var ty = argument[1];

//Find nearby biome
var biome = noone;
var ox = 0;
var oy = -1;
show_debug_message("Look for biome: " + string(tx) + ", " + string(ty));
for (var s = 0; s < 4; s++) {
	//Check if has tile
	var sx = tx + ox;
	var sy = ty + oy;
	if ((sx >= 0 && sx < ds_grid_width(tiles))
	&& (sy >= 0 && sy < ds_grid_height(tiles))) {
		//found biome
		var tile = tiles[# sx, sy];
		if (tile != noone) {
			show_debug_message("Found: "+ string(tile));
			biome = tile[? "Biome"];

			//Check if biome is not full
			if (biome[? "Size"] < biome[? "Limit"]) {
				show_debug_message("Biome OK");
				break;
			}
			else {
				show_debug_message("Biome FULL");
			}
		}
		else {
			show_debug_message("No tile: " + string(sx) + ", " + string(sy));
		}
	}
	else {
		show_debug_message("Tile outside grid: " + string(sx) + ", " + string(sy));
	}
	
	//Try next side
	if (s == 0) { ox = 1; oy = 0; }
	else if (s == 1) { ox = 0; oy = 1; }
	else if (s == 2) { ox = -1; oy = 0; }
}

//Check if no biome was found
if (!biome) {
	//Choose newest biome
	biome = biomes[| ds_list_size(biomes) - 1];
}

//Check if biome is full
if (biome[? "Size"] >= biome[? "Limit"]) {
	biome = biome_create_random();
}

//Create tile
var worldX = (TILE_W * tx);
var worldY = (TILE_H * ty) - (TILE_H * tx);
var instance = instance_create_layer(worldX, worldY, "BiomeLayer", biome[? "Type"]);
biome[? "Size"]++;
show_debug_message("Created new tile at: " + string(worldX) + ", " + string(worldY));

var tile = ds_map_create();
tile[? "Instance"] = instance;
tile[? "Biome"] = biome;

return tile;