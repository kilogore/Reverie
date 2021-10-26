/// @description Insert description here
// You can write your code in this editor

if obj_player.canHurt = true {
	obj_player.canHurt = false;
	player_hurt(1);
	obj_player.alarm[1] = obj_player.hurtSpd*30;
}

instance_destroy();