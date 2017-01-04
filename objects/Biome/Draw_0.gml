//Draw
var halfX = ds_grid_width(world) div 2;
var halfY = ds_grid_height(world) div 2;
for (var yy = 0; yy < ds_grid_height(world); yy++) {
	for (var xx = 0; xx < ds_grid_width(world); xx++) {
		//Get biome data
		var biome = world[# xx, yy];

		var worldX = x + (TILE_W * xx);
		var worldY = y + (TILE_H * (yy - 0.5));
		draw_sprite(biome[? "Type"], 0, worldX, worldY);
		
		var worldX2 = worldX + (TILE_W * 0.5);
		var worldY2 = worldY + (TILE_H * 0.5);
		draw_sprite(biome[? "Type"], 0, worldX2, worldY2);
	}
}