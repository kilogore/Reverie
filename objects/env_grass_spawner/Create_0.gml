/// @description Insert description here
// You can write your code in this editor
var i = 0;
repeat (4) {
	instance_create_layer(x+4*i,y,"FGInstance",env_grass);
	i += 1;
}

instance_destroy();