// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_hurt(amt = 1){
	obj_player.HP -= amt;
	audio_play_sound(sfx_hurt,1,false);
	screen_shake(0.25,20*amt,20);
}