///@description Idle timer
image_speed = 1;
if (camp) {
	moveX = camp.x + irandom_range(-MOVE_RANGE, MOVE_RANGE);
	moveY = camp.y + (irandom_range(-MOVE_RANGE, MOVE_RANGE) div 2);
}
else {
	moveX = x + irandom_range(-MOVE_RANGE, MOVE_RANGE);
	moveY = y + (irandom_range(-MOVE_RANGE, MOVE_RANGE) div 2);
}
moveSpeed = irandom_range(1, 4);