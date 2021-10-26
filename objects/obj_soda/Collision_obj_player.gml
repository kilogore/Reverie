/// @description Insert description here
// You can write your code in this editor
instance_destroy();
global.age += 1;
obj_player.HP = 5;
obj_player.maxHP = 5;

audio_play_sound(sfx_adult2crisis,0,false);


audio_sound_gain(mus_adult, 0, 0);
audio_sound_gain(mus_crisis, 0.13, 0);