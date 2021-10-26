/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
hspd = 0;
repeat(25) {
	xx = random_range(-32,32);
	yy = random_range(-32,32);
	instance_create_depth(x+xx,y+yy,9,obj_boomboss);	
}
alarm[6] = 30;