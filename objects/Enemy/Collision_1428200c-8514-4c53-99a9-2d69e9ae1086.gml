//Kill
var isInsane = (Player.sanity < Player.sanityMax * 0.2);
var inRange = distance_to_point(Player.x, Player.y) <= 16;
if (isInsane && inRange) {
	game_restart();
}