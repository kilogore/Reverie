/// @description Insert description here
// You can write your code in this editor
instance_destroy();
global.age += 1;
obj_player.HP = 7;
obj_player.maxHP = 7;

audio_play_sound(sfx_wheelchair2bazunga,0,false);

//audio_stop_all();
audio_sound_gain(mus_elder, 0, 0);
//audio_play_sound(mus_bazunga, 0.06, true);
audio_sound_gain(mus_bazunga, 0.06, 0);