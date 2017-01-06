//Init
event_inherited();

if (chance(4)) { sprite_index = spr_Tile_Pond; }
else {
	image_speed = 0;
	if (chance(10)) { image_index = irandom_range(0, 2); }
	else { image_index = irandom_range(3, 6); }
}