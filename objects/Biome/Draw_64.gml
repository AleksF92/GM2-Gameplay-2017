//Draw debug
draw_set_color(c_white);
draw_text(5, 5,
	"World Size: " + string(ds_grid_width(world)) + ", " + string(ds_grid_height(world))
	+ "\nPlayer Pos: " + string(playerX) + ", " + string(playerY)
);