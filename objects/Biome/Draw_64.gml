//Draw debug
draw_set_color(c_white);
draw_text(5, 5,
	"World Size: " + string(ds_grid_width(tiles)) + ", " + string(ds_grid_height(tiles))
	+ "\nBiomes: " + string(ds_list_size(biomes))
	+ "\nPlayer Pos: " + string(playerX) + ", " + string(playerY)
);