//Draw
if (tint) {
	if (Player.dna == id) {
		x = Player.x;
		y = Player.y - Player.sprite_height - 32;
	}
	depth = get_depth() - 2;
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, tint, 1);
}