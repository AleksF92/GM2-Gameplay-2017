//Draw
draw_self();

if (hp < hpMax) {
	//Draw Frame
	var hw = sprite_width / 2;
	var x1 = x - hw;
	var y1 = y - sprite_height - 12;
	draw_set_color(c_white);
	draw_rectangle(x1, y1, x1 + sprite_width, y1 + 8, false);

	//Draw Health
	var part = (hp * (hp >= 0)) / hpMax;
	draw_set_color(c_black);
	draw_rectangle(x1, y1, x1 + (sprite_width * part), y1 + 8, false);
}