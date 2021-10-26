/// @description Insert description here
// You can write your code in this editor
obj_player.sprite_index = spr_wheelchaircolor;
sprite_index = spr_final_ball_busted;
image_blend = c_white;

if !instance_exists(fx_wintransition) {
	instance_create_depth(0,0,-999,fx_wintransition);
}