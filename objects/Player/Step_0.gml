//Handle input
var sanityDir = input("Sanity Up") - input("Sanity Down");
sanity = clamp(sanity + sanityDir, 0, sanityMax);

if (input("Swap Dimension")) {
	if (image_speed == 0) {
		if (body) {
			//Exit dimension
			x = body.x;
			y = body.y - swapOffset;
			image_speed = -1;
		}
		else {
			//Enter dimension
			body = instance_create_layer(x, y, "Instances", Player_Body);
			body.image_xscale = image_xscale;
			sprite_index = spr_Player_Shift;
			image_index = 0;
			image_speed = 1;
			y -= swapOffset;
		}
	}
}
var dirX = input("Move Right") - input("Move Left");
var dirY = input("Move Down") - input("Move Up");
dir = sign(window_mouse_get_x() - (room_width / 2));

if (((dirX != 0 || dirY != 0) && !body) || body && image_speed == 0) {
	//Update speed
	var speedX = moveSpeed;
	var speedY = moveSpeed / 2;

	//Get next tile
	moveX = x + (dirX * speedX);
	moveY = y + (dirY * speedY);
	curTile = collision_point(moveX, moveY, Tile, true, true);

	//Check if new tile
	canWalk = true;
	if (curTile != tile) {
		if (!curTile || curTile.solid) {
			//Not walkable tile
			canWalk = false;
		}
		else {
			//New walkable tile
			if (tile) { tile.inside = false; }
			if (curTile) { curTile.inside = true; }
			tile = curTile;
		}
	}
	if (canWalk) {
		//Apply Movement
		x += dirX * speedX;
		y += dirY * speedY;
	}
}

if (body) {
	//Check animation
	var lastFrame = sprite_get_number(sprite_index) - 1;
	if (image_speed == 1 && image_index == lastFrame) {
		image_speed = 0;
	}
	else if (image_speed == -1 && image_index == 0) {
		instance_destroy(body);
		body = noone;
		sprite_index = spr_Player;
		image_speed = 0;
		y += swapOffset;
	}
}
else {
	//Animate movement
	image_speed = (dirX != 0 || dirY != 0);
	if (!image_speed) { image_index = 0; }
}
image_xscale = sign(dir);
depth = get_depth() - 1;

//Follow with camera
camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));

//Regen sanity
if (!body) { sanity = clamp(sanity + sanityRegen, 0, sanityMax); }