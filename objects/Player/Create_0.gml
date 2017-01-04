//Init
moveSpeed = 12;

//Set up camera
view_enabled = true;
view_camera[0] = camera_create_view(
	x,
	y,
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