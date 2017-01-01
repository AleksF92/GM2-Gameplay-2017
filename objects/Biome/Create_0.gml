//Init
CHUNK = 4;
TILE_W = sprite_get_width(spr_Grass);
TILE_H = sprite_get_height(spr_Grass);

world = ds_grid_create(0, 0);
tiles = ds_list_create();
sizes = ds_list_create(); 

playerX = 0;
playerY = 0;