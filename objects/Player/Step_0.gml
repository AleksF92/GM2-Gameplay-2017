//Movement
var dirX = input("Move Right") - input("Move Left");
x += dirX * moveSpeed;

var dirY = input("Move Down") - input("Move Up");
y += dirY * (moveSpeed / 2);

image_speed = (dirX != 0 || dirY != 0);
if (!image_speed) { image_index = 0; }
camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));