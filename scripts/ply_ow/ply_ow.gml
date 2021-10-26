// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ply_ow(){

if canHurt = true {
	canHurt = false;
	player_hurt(1);
	alarm[1] = hurtSpd*30;
}
}