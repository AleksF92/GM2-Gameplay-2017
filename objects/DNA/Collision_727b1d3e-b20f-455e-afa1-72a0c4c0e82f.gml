//Activate
if (Player.dna != id && !held && !Player.alarm[0]) {
	held = true;

	//Deactivate current dna
	if (Player.dna) {
		Player.dna.visible = false;
		Player.dnaLast = Player.dna;
		Player.alarm[0] = room_speed * 5;
	}
	
	Player.dna = id;
	path_end();
}