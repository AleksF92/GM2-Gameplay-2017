///@description biome_create_type
///@param type
var type = argument[0];

var biome = ds_map_create();
biome[? "Size"] = 0;
biome[? "Type"] = type;
switch (type) {
	case Tile_Grass: { biome[? "Limit"] = choose(8, 16); break; }
	case Tile_Sand: { biome[? "Limit"] = choose(8, 16); break; }
	case Tile_Water: { biome[? "Limit"] = choose(8, 16); break; }
}

return biome;