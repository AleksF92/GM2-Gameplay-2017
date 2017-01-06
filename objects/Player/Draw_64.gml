//Draw debug
/*
draw_set_color(c_yellow);
draw_text(5, 70,
	"Tile: " + string(tile)
	+ "\nCurrent Tile: " + string(curTile)
	+ "\nMove: " + string(moveX) + ", " + string(moveY)

*/

//Draw frame
var windowCenter = room_width / 2;
draw_sprite(spr_UI_Frame, 0, windowCenter, room_height);

var prog = sanity / sanityMax;
var lvlIndex = (sprite_get_number(spr_UI_Sanity) - 1) * (1 - prog);
draw_sprite(spr_UI_Sanity, lvlIndex, windowCenter, room_height);