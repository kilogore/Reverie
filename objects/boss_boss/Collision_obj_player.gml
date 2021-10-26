/// @description Insert description here
// You can write your code in this editor

if state = bossState.CD {

if obj_player.y<y and obj_player.vspd > 0{
	with (obj_player) {
		vspd = S_JUMP_SPEED;
		audio_play_sound(sfx_hurtMid,1,false);
	}
	HP -= 1;
	state = bossState.tpchoose2;
	fx_hitE(15);
	
} else {
	// nothing
}

}

if state = bossState.tp {
	if obj_player.canHurt = true {
	obj_player.canHurt = false;
	player_hurt(1);
	obj_player.alarm[1] = obj_player.hurtSpd*30;
}
}