/// @description Insert description here
// You can write your code in this editor
instance_destroy();
global.age += 1;
obj_player.HP = 3;
obj_player.maxHP = 3;

audio_play_sound(sfx_bb_to_todd,0,false);


audio_sound_gain(mus_baby, 0, 4000);
audio_sound_gain(mus_toddler, 0.13, 4000);