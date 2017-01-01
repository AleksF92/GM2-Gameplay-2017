//Movement
var dirX = input("Move Right") - input("Move Left");
x += dirX * moveSpeed;

var dirY = input("Move Down") - input("Move Up");
y += dirY * (moveSpeed / 2);
depth = -y;

image_speed = (dirX != 0 || dirY != 0);
if (!image_speed) { image_index = 0; }



//Something
