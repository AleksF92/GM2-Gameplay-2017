///@description biome_tile_ghostpath
///@param chunkX
///@param chunkY
///@param startX
///@param startY
var minX = argument[0];
var minY = argument[1];
var maxX = minX + CHUNK - 1;
var maxY = minY + CHUNK - 1;
var startX = argument[2];
var startY = argument[3];

//Spawn tiles
var tCount = 0;
var tx = startX;
var ty = startY;
while (tCount < 2 /*CHUNK * CHUNK*/) {
	//Check if you can spawn
	if (tiles[# tx, ty] == noone) {
		tiles[# tx, ty] = biome_tile_create(tx, ty);
		tCount++;
	}
	
	//Move random direction
	var moveX = 0;
	var moveY = 0;
	if (choose(true, false)) { moveX = choose(1, -1); }
	else { moveY = choose(1, -1); }

	//Move if not inside chunk
	var nx = tx + moveX;
	var ny = ty + moveY;
	if (ny >= minY && ny <= maxY) {
		if (nx >= minX && nx <= maxX) {
			tx = nx;
			ty = ny;
		}
	}
}