//Init
gamepad = noone;

//Start
window_set_fullscreen(true);
randomize();

//Start game
var player = instance_create_layer(0, 0, "Instances", Player);
var biome = instance_create_layer(0, 0, "BiomeLayer", Biome);