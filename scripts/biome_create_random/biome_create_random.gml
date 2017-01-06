///@description biome_create_random
var type = Tile_Grass;
if (chance(25)) { type = Tile_Sand; }
else if (chance(25)) { type = Tile_Water; }

//Create biome
var biome = biome_create_type(type);
return biome;