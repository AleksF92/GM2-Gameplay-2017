//Init
gamepad = noone;

//Start
randomize();

//Start game
var playerX = 0; //room_width div 2;
var playerY = 0; //room_height div 2;
var player = instance_create_layer(playerX, playerY, "Instances", Player);
//var biome = instance_create_layer(playerX, playerY, "BiomeLayer", Biome);
var gui = instance_create_layer(0, 0, "Instances", GUI);