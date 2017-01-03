//Find player grid position
if (instance_exists(Player)) {
	playerX = (Player.x - x) div TILE_W;
	playerY = (Player.y - y) div TILE_H;
	if (!world[# playerX, playerY] >= 0) {
		var worldW = ds_grid_width(world) + CHUNK;
		var worldH = ds_grid_height(world) + CHUNK;
		ds_grid_resize(world, worldW, worldH);
		
	}
}