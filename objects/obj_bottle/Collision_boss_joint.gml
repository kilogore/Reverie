/// @description Insert description here
// You can write your code in this editor

	instance_destroy();
	instance_create_depth(x,y,-5,obj_boom);
	other.HP -= 1;
	audio_play_sound(sfx_hurtLow,0,false);
	fx_hitE(15);
