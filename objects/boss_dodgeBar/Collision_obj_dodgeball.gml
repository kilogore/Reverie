/// @description Insert description here
// You can write your code in this editor
if other.canHurtBoss = true {
	HP -= 1;
	instance_destroy(other);
	audio_play_sound(sfx_hurtLow,0,false);
	fx_hitE(15);
}

if state = dodgeState.paceL or state = dodgeState.paceR and (other.vspd = 0 and other.hspd = 0) {
	instance_destroy(other);
	state = dodgeState.aggro;
}