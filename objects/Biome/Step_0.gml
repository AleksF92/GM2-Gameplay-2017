// Find player grid position
if (instance_exists(Player)) {
	//Calculate player tile
	
	playerX = (Player.x - x) div TILE_W;
	playerY = (Player.y - y) div TILE_H;
	
	//Check if outside border
	var w = ds_grid_width(world);
	var h = ds_grid_height(world);
	var offTiles = 2;
	var dirX = (playerX >= w - (offTiles + 1)) - (playerX < offTiles);
	var dirY = (playerY >= h - (offTiles + 2)) - (playerY < offTiles);
	if (dirX != 0 || dirY != 0) {
		//Prepare new grid
		var worldW = w + (CHUNK * max(dirX, -dirX));
		var worldH = h + (CHUNK * max(dirY, -dirY));
		var tempWorld = ds_grid_create(worldW, worldH);
		ds_grid_clear(tempWorld, noone);
		
		//Move physical grid
		if (dirX < 0 || dirY < 0) {
			//x += TILE_W * CHUNK * dirX;
			//y += TILE_H * CHUNK * dirY;
		}
		
		//Copy old grid with offset
		var offX = (dirX < 0) * CHUNK;
		var offY = (dirY < 0) * CHUNK;
		ds_grid_set_grid_region(tempWorld, world, 0, 0, w - 1, h - 1, offX, offY);
	
		//Generate new tiles
		var nearBiome = noone;
		for (var yy = 0; yy < worldH; yy++) {
			for (var xx = 0; xx < worldW; xx++) {
				if (tempWorld[# xx, yy] == noone) {
					if (nearBiome == noone) {
						//Locate nearest biome
						var dist = noone;
						for (var yy2 = 0; yy2 < worldH; yy2++) {
							for (var xx2 = 0; xx2 < worldW; xx2++) {
								if (nearBiome == noone) {
									if (tempWorld[# xx2, yy2] != nearBiome) {
										var dx = xx - xx2;
										var dy = yy - yy2;
										var dTot = max(dx, -dx) + max(dy, -dy);
										if (dTot < dist || dist == noone) {
											nearBiome = tempWorld[# xx2, yy2];
											dist = dTot;
										}
									}
								}
							}
						}
					}
					if (nearBiome[? "Size"] >= MAX_SIZE) {
						//Create new biome
						nearBiome = ds_map_create();
						nearBiome[? "Type"] = choose(Tile_Grass, Tile_Sand, Tile_Water);
						nearBiome[? "Size"] = 0;
					}
				
					//Create biome piece
					var worldX = x + ((TILE_W / 2) * xx);
					var worldY = y + ((TILE_H / 2) * (yy - 0.5));
					instance_create_layer(worldX, worldY, "BiomeLayer", nearBiome[? "Type"]);
					tempWorld[# xx, yy] = nearBiome;
					nearBiome[? "Size"]++;
				}
			}
		}
	
		//Swap to new grid
		ds_grid_destroy(world);
		world = tempWorld;
	}
}