/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_player) {
	obj_player.vspd += flySPD;
}

instance_create_depth(random_range(x,x+32),random_range(y,y+height),10,part_fanD);