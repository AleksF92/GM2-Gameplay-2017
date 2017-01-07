//Kill
var isInsane = (Player.sanity < Player.sanityMax * 0.2);
var inDimension = (Player.body != noone);
var inRange = distance_to_point(Player.x, Player.y) <= 16;
if (isInsane && !inDimension && inRange) {
	game_restart();
}