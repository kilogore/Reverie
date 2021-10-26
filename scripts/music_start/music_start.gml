// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function music_start(){

	//sg = audio_create_sync_group(true);
	//audio_play_in_sync_group(sg, mus_baby);
	//	audio_sound_gain(mus_baby, 1, 0);
	//audio_play_in_sync_group(sg, mus_toddler);
	//	audio_sound_gain(mus_toddler, 0.2, 0);
	//audio_start_sync_group(sg);
	
	audio_play_sound(mus_baby,1,true);
	audio_sound_gain(mus_baby, 0.1, 0);
	
	audio_play_sound(mus_toddler,1,true);
	audio_sound_gain(mus_toddler, 0, 0);
	
	audio_play_sound(mus_kid,1,true);
	audio_sound_gain(mus_kid, 0, 0);
	
	audio_play_sound(mus_adult,1,true);
	audio_sound_gain(mus_adult, 0, 0);
	
	audio_play_sound(mus_crisis,1,true);
	audio_sound_gain(mus_crisis, 0, 0);
	
	audio_play_sound(mus_old,1,true);
	audio_sound_gain(mus_old, 0, 0);
	
	audio_play_sound(mus_elder,1,true);
	audio_sound_gain(mus_elder, 0, 0);
	
	audio_play_sound(mus_bazunga,1,true);
	audio_sound_gain(mus_bazunga, 0, 0);
	
	audio_play_sound(mus_corpboss,1,true);
	audio_sound_gain(mus_corpboss, 0, 0);
}