//Handle insanity actions
var isInsane = (Player.sanity < Player.sanityMax * 0.2);
var inDimension = (Player.body != noone);
var imgStart = insaneIndex * (isInsane || inDimension);
depth = get_depth() - 1;

if (inDimension || isInsane) {
	var distX = Player.x - x;
	var distY = (Player.y - 90) - y;
	distX = max(distX, -distX);
	distY = max(distY, -distY);
	if (distX < 400 && distY < 200) {
		var distX = Player.x - x;
		if (Player.dir != sign(distX)) {
			Player.sanity -= 0.5;
		}
	}
	
	//Chase player
	if (isInsane) {
		chasing = true;
		var body = (Player.body) ? Player.body : Player;
		moveX = body.x;
		moveY = body.y;
		moveSpeed = 4;
	}
}
if (!isInsane && chasing) {
	chasing = false;
	moveSpeed = 0;
	moveX = x;
	moveY = y;
}

//Actions
if (image_speed == 0) {
	//Not moving
	if (!alarm[0]) { alarm[0] = room_speed * random_range(1, 5); }
}
else {
	//Moving
	if (distance_to_point(moveX, moveY) < 1) {
		image_speed = 0;
		image_index = imgStart;
	}
	else {
		//Get normalized direction
		var dirX = moveX - x;
		var dirY = moveY - y;
		var maxDir = max(max(dirX, -dirX), max(dirY, -dirY));
		dirX /= maxDir;
		dirY /= maxDir;
		
		//Get next tile
		var nextX = x + (dirX * moveSpeed);
		var nextY = y + (dirY * moveSpeed * 0.5);
		var curTile = collision_point(nextX, nextY, Tile, true, true);
		var isWalkable = ((curTile == noone || curTile.solid) ? false : true);
		if (isWalkable) {
			//Apply movement
			x = nextX;
			y = nextY;
			image_xscale = sign(dirX);
			//if (inDimension) { image_xscale *= -1; }
		}
		else {
			moveX = x;
			moveY = y;
		}
	}
}

//Keep animation cycle within state
if (floor(image_index) > imgStart + 1 || floor(image_index) < imgStart) {
	image_index = imgStart;
}