var inRange = distance_to_point(Player.x, Player.y) <= 150;
var inDimension = Player.body;
if (inRange && inDimension) {
	hp = clamp(hp - damage, 0, hp);
	
	//Check health
	if (hp <= 0) {
		//Dead
		hp = 0;
		if (chance(dnaChance)) {
			var dnaObj = instance_create_layer(x, y - sprite_height, "Instances", DNA);
			dnaObj.dna = dna;
		}
	}
}