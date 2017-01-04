/// @description input
/// @param buttonStr
var buttonStr = argument[0];

var result = false;
if (Game.gamepad) {

}
else {
	switch (buttonStr) {
		case "Move Right": {
			result = keyboard_check(ord("D"));
			break;
		}
		case "Move Up": {
			result = keyboard_check(ord("W"));
			break;
		}
		case "Move Left": {
			result = keyboard_check(ord("A"));
			break;
		}
		case "Move Down": {
			result = keyboard_check(ord("S"));
			break;
		}
		case "Menu": {
			result = keyboard_check_pressed(vk_escape);
			break;
		}
		case "Restart": {
			result = keyboard_check_pressed(ord("R"));
			break;
		}
	}
}
return result;