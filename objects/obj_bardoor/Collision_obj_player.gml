/// @description Insert description here
// You can write your code in this editor
	//obj_player.x = 4167;
	//obj_player.y = 530;
	targetRoom = rm_playground;
	
	//obj_camera.follow = noone;
	//
	//obj_player.hspd = 0;
	//obj_player.vspd = 0;
	
	if !instance_exists(fx_transition) {
		var aa = instance_create_depth(0,0,-999,fx_transition);
		aa.targetRoom = rm_playground;
		aa.targetX = targetX;
		aa.targetY = targetY;
	}                    