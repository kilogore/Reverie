/// @description Insert description here
// You can write your code in this editor
if state = coolState.detect {
	obj_player.x = 1200;
	obj_player.y = 7556;
	player_hurt(1);
	
	if !instance_exists(fx_transition) {
		var aa = instance_create_depth(0,0,-999,fx_transition);
		aa.targetRoom = rm_corp;
	}
}