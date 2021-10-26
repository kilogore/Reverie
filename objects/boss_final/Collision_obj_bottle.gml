/// @description Insert description here
// You can write your code in this editor
if state = final.phase2 {
	HP -= 1;
	fx_hitE(5);
	audio_play_sound(sfx_hurtLow,0,false);
}

if state = final.phase3 {
	HP2 -= 1;
	fx_hitE(5);
	audio_play_sound(sfx_hurtLow,0,false);
}