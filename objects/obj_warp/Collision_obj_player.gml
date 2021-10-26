if audio_is_playing(sfx_bee) {audio_stop_sound(sfx_bee);}

	
	obj_camera.follow = noone;
	
	
	if !instance_exists(fx_transition) {
		var aa = instance_create_depth(0,0,-999,fx_transition);
		aa.targetRoom = targetRoom;
		aa.targetX = targetX;
		aa.targetY = targetY;
	}