function screen_shake(seconds = 0.5,amount = 20 ,control = 10, blend = c_black){
	obj_camera.shake = true;
	global.shakeAmt = amount;
	global.shakeControl = control;
	obj_camera.alarm[0] = room_speed*seconds;
		horrifi_chromaticab_set(true,0.3);
}