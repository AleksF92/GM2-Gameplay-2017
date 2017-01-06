//Check if outside border
var w = ds_grid_width(tiles);
var h = ds_grid_height(tiles);
var offTiles = 2;
var dirX = (playerX >= w - (offTiles + 1)) - (playerX < offTiles);
var dirY = (playerY >= h - (offTiles + 2)) - (playerY < offTiles);

/*
if (dirX != 0 || dirY != 0) {
	//Prepare new grid
	var worldW = w + (CHUNK * max(dirX, -dirX));
	var worldH = h + (CHUNK * max(dirY, -dirY));
	var tempWorld = ds_grid_create(worldW, worldH);
	ds_grid_clear(tempWorld, noone);
		
	//Copy old grid with offset
	var offX = (dirX < 0) * CHUNK;
	var offY = (dirY < 0) * CHUNK;
	ds_grid_clear(tiles, noone); 
	ds_grid_set_grid_region(tempWorld, world, 0, 0, w - 1, h - 1, offX, offY);

	//Swap to new grid
	ds_grid_destroy(world);
	world = tempWorld;

	//Generate new tiles
	var chunkX = (offX == 0) * CHUNK;
	var chunkY = (offY == 0) * CHUNK;
	var startX = chunkX + (CHUNK div 2);
	var startY = chunkY + (CHUNK div 2);
	biome_tile_ghostpath(chunkX, chunkY, startX, startY);
}*/