//Draw darkness
if (Player.body) {
	draw_sprite(spr_Darkness, image_index, 0, 0);
}

//Draw frame
var windowCenter = room_width / 2;
draw_sprite(spr_UI_Frame, 0, windowCenter, room_height);


//Draw sanity
var prog = Player.sanity / Player.sanityMax;
var lvlIndex = (sprite_get_number(spr_UI_Sanity) - 1) * (1 - prog);
draw_sprite(spr_UI_Sanity, lvlIndex, windowCenter, room_height);