	obj_player.x = targetX;
	obj_player.y = targetY;
	
	obj_camera.follow = noone;
	
	obj_player.hspd = 0;
	obj_player.vspd = 0;
	
	if !instance_exists(fx_transition) {
		var aa = instance_create_depth(0,0,-999,fx_transition);
		aa.targetRoom = targetRoom;
	}