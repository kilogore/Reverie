/// @description Insert description here
// You can write your code in this editor
if state = bullyState.dash {
	if obj_player.canHurt = true {
		obj_player.canHurt = false;
		player_hurt(1);
		obj_player.alarm[1] = obj_player.hurtSpd*30;
	}
	obj_player.hspd = dir*knockbackSpd;	
	obj_player.vspd = -knockupSpd;	
}

if state = bullyState.cooldown {

if obj_player.y<y and obj_player.vspd > 0{
	with (obj_player) {
		vspd = S_JUMP_SPEED;
		audio_play_sound(sfx_hurtLow,1,false);
		
	}
	state = bullyState.hurt;
	alarm[3] = 15;
	
	fx_hitE(15);
	HP -= 1;
	
	
}
	
	
}