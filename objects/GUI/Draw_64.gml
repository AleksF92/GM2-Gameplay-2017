//Draw darkness
if (Player.body) {
	draw_sprite(spr_UI_Darkness, image_index, 0, 0);
}

//Draw frame
var windowCenter = room_width / 2;
draw_sprite(spr_UI_Frame, 0, windowCenter, room_height);



//Draw sanity brain
draw_sprite(spr_UI_Sanity_BrainDead, 0, windowCenter, room_height);

//Draw sanity liquid
var prog = Player.sanity / Player.sanityMax;
var top = 11;
var bot = 232;
var len = bot - top;
var lenRemain = len * prog;
var lenOff = (len * (1 - prog));
var spr = spr_UI_Sanity_Fluid;

var partW = sprite_get_width(spr);
var partH = lenRemain;
var partX = 0;
var partY = top + lenOff;
var x1 = windowCenter - sprite_get_xoffset(spr);
var y1 = (room_height - sprite_get_yoffset(spr)) + partY;

draw_sprite_part(spr, image_index, partX, partY, partW, partH, x1, y1)

//Draw sanity frame
draw_sprite(spr_UI_Sanity_Frame, 0, windowCenter, room_height);