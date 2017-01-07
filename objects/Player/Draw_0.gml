//Draw tinted
var tint = ((!dnaLast) ? c_white : dnaLast.tint);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, tint, 1)