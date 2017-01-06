//Init
moveSpeed = 6;
tile = noone;
curTile = noone;
canWalk = true;
moveX = x;
moveY = y + moveSpeed;
dir = 1;
swapOffset = 124;

//Set up camera
view_enabled = true;
view_camera[0] = camera_create_view(
	x - (view_wport[0] / 2),
	y - (view_hport[0] / 2),
	room_width,
	room_height,
	0,
	noone,
	-1,
	-1,
	room_width / 2,
	room_height / 2
);
view_visible[0] = true;

sanityMax = 100;
sanity = sanityMax;
sanityRegen = 0.05;
body = noone;