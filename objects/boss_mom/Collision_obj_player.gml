/// @description Insert description here
// You can write your code in this editor
if state = momState.detect {

	drawbb = true;
	
	obj_player.drawme = false;
	
	if !instance_exists(fx_deathtransition) {
		instance_create_depth(0,0,-999,fx_deathtransition);
	}
}