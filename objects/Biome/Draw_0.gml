//Draw
var halfX = ds_grid_width(world) div 2;
var halfY = ds_grid_height(world) div 2;
for (var yy = 0; yy < ds_grid_height(world); yy++) {
	for (var xx = 0; xx < ds_grid_width(world); xx++) {
		//Get biome data
		var biomeId = world[# xx, yy];
		var tile = tiles[| biomeId];
	
		var worldX = TILE_W * xx;
		var worldY = TILE_H * (halfY - 0.5);
		var tileCol = (playerX == worldX && playerY == worldY) ? c_lime : c_white;
		draw_sprite_ext(tile, 0, worldX, worldY, 1, 1, 0, tileCol, 1);
	}
}