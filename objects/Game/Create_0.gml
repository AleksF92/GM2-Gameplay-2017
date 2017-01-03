//Init
gamepad = noone;

//Start
window_set_fullscreen(true);
randomize();

//Start game
var playerX = room_width div 2;
var playerY = room_height div 2;
var player = instance_create_layer(playerX, playerY, "Instances", Player);
var biome = instance_create_layer(playerX, playerY, "BiomeLayer", Biome);