//Find input
var dirX = input("Move Right") - input("Move Left");
var dirY = input("Move Down") - input("Move Up");

if (dirX != 0 || dirY != 0) {
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
		
		//Follow with camera
		camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));
	}
}

//Animate movement
image_speed = (dirX != 0 || dirY != 0);
if (!image_speed) { image_index = 0; }
depth = (-y / 128) - 1;