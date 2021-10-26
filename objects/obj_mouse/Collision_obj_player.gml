/// @description Insert description here
// You can write your code in this editor
if global.pause = false {
if state != mouseState.dead {

if obj_player.y<y and obj_player.vspd > 0{
	with (obj_player) {
		vspd = S_JUMP_SPEED;
		audio_play_sound(sfx_mouse,1,false);
		fx_hitE(8);
		// mouse hurt
	}
	state = mouseState.dead;
	
} else {
	
	obj_player.vspd = obj_player.S_JUMP_SPEED;

	if obj_player.canHurt = true {
		obj_player.canHurt = false;
		player_hurt(1);
		obj_player.alarm[1] = obj_player.hurtSpd*30;
	}
}

}

}