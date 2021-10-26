/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_player) {
	draw = true;
	
	if keyboard_check_pressed(ord("E")) and obj_player.HP != obj_player.maxHP {
		obj_player.HP = obj_player.maxHP;
		audio = choose(sfx_drink1,sfx_drink2,sfx_drink3);
		audio_play_sound(audio,0,false);
	}
	
	} else {draw = false;}

if global.age > 2 {
	image_index = global.age-2;
} else {
	image_index = 0;
}