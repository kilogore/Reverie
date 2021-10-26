/// @description Insert description here
// You can write your code in this editor
instance_destroy();
global.age += 1;
obj_player.HP = 4;
obj_player.maxHP = 4;

audio_play_sound(sfx_todd2kid,0,false);

audio_sound_gain(mus_toddler, 0, 0);
audio_sound_gain(mus_kid, 0.13, 0);