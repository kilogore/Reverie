/// @description Insert description here
// You can write your code in this editor
//vspd = S_JUMP_SPEED;

margin = 2;

if other.x < x-margin {hspd = bounceSpd;}
if other.x > x+margin {hspd = -bounceSpd;}
vspd = S_JUMP_SPEED;



sfx = choose(sfx_hic1,sfx_hic2,sfx_hic3,sfx_hic4);
if !audio_is_playing(sfx) {
	audio_play_sound(sfx,0,false);
}