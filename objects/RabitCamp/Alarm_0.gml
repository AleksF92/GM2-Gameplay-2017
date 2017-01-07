/// @description Spawn rabbit
if (rabbitCount < rabbitMax) {
	var bunny = instance_create_layer(x, y, "Instances", Enemy_Bunny);
	bunny.camp = id;
	rabbitCount++;
}
alarm[0] = room_speed * random_range(1, 3);